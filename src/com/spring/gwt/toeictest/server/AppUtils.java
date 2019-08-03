package com.spring.gwt.toeictest.server;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
 
import com.spring.gwt.toeictest.shared.User;
 
public class AppUtils {
 
    private static int REDIRECT_ID = 0;
 
    private static final Map<Integer, String> id_uri_map = new HashMap<Integer, String>();
    private static final Map<String, Integer> uri_id_map = new HashMap<String, Integer>();
 
    // Lưu trữ thông tin người dùng vào Session.
    public static void storeLoginedUser(HttpSession session, User loginedUser) {
        // Trên JSP có thể truy cập thông qua ${loginedUser}
        session.setAttribute("loginedUser", loginedUser);
    }
   
//    public static String readCookie(String key, HttpServletRequest request) {
//	    Cookie[] cookies = request.getCookies();
//	    for (Cookie cookie: cookies) {
//	    	if (key == cookie.getName()) {
//	    		return cookie.getValue().toString();
//	    	} else {
//	    		return "";
//	    	}
//	    }
//	}
 
    // Lấy thông tin người dùng lưu trữ trong Session.
    public static User getLoginedUser(HttpSession session) {
        User loginedUser = (User) session.getAttribute("loginedUser");
        return loginedUser;
    }
 
    public static int storeRedirectAfterLoginUrl(HttpSession session, String requestUri) {
        Integer id = uri_id_map.get(requestUri);
 
        if (id == null) {
            id = REDIRECT_ID++;
 
            uri_id_map.put(requestUri, id);
            id_uri_map.put(id, requestUri);
            return id;
        }
 
        return id;
    }
 
    public static String getRedirectAfterLoginUrl(HttpSession session, int redirectId) {
        String url = id_uri_map.get(redirectId);
        if (url != null) {
            return url;
        }
        return null;
    }
 
}