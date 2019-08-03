package com.spring.gwt.toeictest.server.security;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;

import com.spring.gwt.toeictest.server.AppUtils;
import com.spring.gwt.toeictest.server.dao.SHA512Hasher;
import com.spring.gwt.toeictest.server.dao.UserAuthDAO;
import com.spring.gwt.toeictest.shared.Key;
import com.spring.gwt.toeictest.shared.User;
import com.spring.gwt.toeictest.shared.UserAuthToken;

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
		HttpSession session = request.getSession();
		
		User loggedUser = null;
		Long loggedUserId = null;
		if (session.getAttribute("loggedUser") != null) {
			loggedUserId = Long.parseLong(session.getAttribute("loggedUser").toString());
			loggedUser = ofy().load().type(User.class).id((Long) loggedUserId).now();
			System.out.println("loggedUserId: " + loggedUserId);
			System.out.println("User Roles: " + loggedUser.getRoles());
		}
		
		
		HttpServletRequest wrapRequest = request;
		
		if (loggedUser != null) {
			// User Name
			String userName = loggedUser.getName();

			// Các vai trò (Role).
			List<String> roles = loggedUser.getRoles();

			// Gói request cũ bởi một Request mới với các thông tin userName và Roles.
			wrapRequest = new UserRoleRequestWrapper(userName, roles, request);

		}
		
		
		// check user's login status in the session
		boolean loggedIn = session != null && session.getAttribute("loggedUser") != null;
		System.out.println("loggedIn: " + loggedIn);
		
		// read cookie
		Cookie[] cookies = request.getCookies();
		if (!loggedIn && cookies != null) {

			// process auto login for remember me feature
			String selector = "";
			String rawValidator = "";
			// read (selector, validator) from cookies
			for (Cookie aCookie : cookies) {
				if (aCookie.getName().equals("selector")) {
					selector = aCookie.getValue();
				} else if (aCookie.getName().equals("validator")) {
					rawValidator = aCookie.getValue();
				}
			}

			if (!"".equals(selector) && !"".equals(rawValidator)) {
				// find a token by the selector in the database
				UserAuthDAO authDAO = new UserAuthDAO();
				UserAuthToken token = authDAO.findBySelector(selector);

				if (token != null) {
					String hashedValidatorDatabase = token.getValidator();
					String hashedValidatorCookie = SHA512Hasher.hash(rawValidator, Key.KEY_HASH);

					if (hashedValidatorCookie.equals(hashedValidatorDatabase)) {
						// user is authenticated, set login status in session
						session = request.getSession();
						session.setAttribute("loggedUser", token.getUserId());
						loggedIn = true;

						// update new token in database
						String newSelector = RandomStringUtils.randomAlphanumeric(12);
						String newRawValidator = RandomStringUtils.randomAlphanumeric(64);

						String newHashedValidator = SHA512Hasher.hash(newRawValidator, Key.KEY_HASH);

						token.setSelector(newSelector);
						token.setValidator(newHashedValidator);
						authDAO.create(token);

						// update cookie
						Cookie cookieSelector = new Cookie("selector", newSelector);
						cookieSelector.setMaxAge(604800);

						Cookie cookieValidator = new Cookie("validator", newRawValidator);
						cookieValidator.setMaxAge(604800);

						response.addCookie(cookieSelector);
						response.addCookie(cookieValidator);

					}
				}
			}
		}
		
		if (request.getRequestURI().equals("/accessDenied")) {
			chain.doFilter(request, response);
			return;
		}
		
		if (loggedIn && request.getRequestURI().equals("/login")) {
			response.sendRedirect("/");
		}
		
		// Các trang bắt buộc phải đăng nhập.
		if(SecurityUtils.isSecurityPage(request)) {
			if (!loggedIn) {
				response.sendRedirect("/login");
			}
			
			// Kiểm tra người dùng có vai trò hợp lệ hay không?
			if (!SecurityUtils.hasPermission(wrapRequest)) {
				System.out.println("quyen truy nhap: false");
				RequestDispatcher dispatcher //
                = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDenied.jsp");

				dispatcher.forward(request, response);
				return;
			}
		} 
		
		

//		System.out.println("authenticate: " + request.authenticate(response));
		System.out.println("role: " + wrapRequest.isUserInRole("USER"));
		chain.doFilter(request, response);
		
		
	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("SecurityFilter init!");
	}

}