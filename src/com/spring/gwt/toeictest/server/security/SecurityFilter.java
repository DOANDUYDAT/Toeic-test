package com.spring.gwt.toeictest.server.security;

import java.io.IOException;
import java.util.List;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.spring.gwt.toeictest.shared.User;
import com.spring.gwt.toeictest.server.AppUtils;
 
//@WebFilter("/*")
public class SecurityFilter implements Filter {
 
    public SecurityFilter() {
    }
 
    @Override
    public void destroy() {
    	System.out.println("SecurityFilter destroy!");
    }
 
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
 
        String servletPath = request.getServletPath();
 
        // Thông tin người dùng đã được lưu trong Session
        // (Sau khi đăng nhập thành công).
        User loginedUser = AppUtils.getLoginedUser(request.getSession());
        String autoLogin = "";
        Cookie[] cookies = request.getCookies();
	    for (Cookie cookie: cookies) {
	    	if (cookie.getName().equals("UserLogin")) {
	    		autoLogin += cookie.getValue();
	    		
	    	}
	    }
        System.out.println("autoLogin: " + autoLogin);
        if (!autoLogin.isEmpty()) {
        	if (servletPath.equals("/login")) {
        		response.sendRedirect("/");
        		return;
            }
        	chain.doFilter(request, response);
        } else {
        	if (servletPath.equals("/login")) {
                chain.doFilter(request, response);
                return;
            }
            HttpServletRequest wrapRequest = request;
            
            if (loginedUser != null) {
                // User Name
                String userName = loginedUser.getName();
     
                // Các vai trò (Role).
                List<String> roles = loginedUser.getRoles();
     
                // Gói request cũ bởi một Request mới với các thông tin userName và Roles.
                wrapRequest = new UserRoleRequestWrapper(userName, roles, request);
            }
     
            // Các trang bắt buộc phải đăng nhập.
            if (SecurityUtils.isSecurityPage(request)) {
     
                // Nếu người dùng chưa đăng nhập,
                // Redirect (chuyển hướng) tới trang đăng nhập.
                if (loginedUser == null) {
                	System.out.println("nguoi dung chua dang nhap");
                    String requestUri = request.getRequestURI();
     
                    // Lưu trữ trang hiện tại để redirect đến sau khi đăng nhập thành công.
                    int redirectId = AppUtils.storeRedirectAfterLoginUrl(request.getSession(), requestUri);
     
                    response.sendRedirect(wrapRequest.getContextPath() + "/login?redirectId=" + redirectId);
                    return;
                }
     
                // Kiểm tra người dùng có vai trò hợp lệ hay không?
                boolean hasPermission = SecurityUtils.hasPermission(wrapRequest);
                System.out.println("quyen dang nhap: " + hasPermission);
                if (!hasPermission) {
                	System.out.println("nguoi dung khong co quyen");
                    RequestDispatcher dispatcher //
                            = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDenied.jsp");
     
                    dispatcher.forward(request, response);
                    return;
                }
            }
         // Cho phép request được đi tiếp. (Vượt qua Filter này).
            chain.doFilter(wrapRequest, response);
        }
        
        
     
    }
 
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
    	System.out.println("SecurityFilter init!");
    }
 
}