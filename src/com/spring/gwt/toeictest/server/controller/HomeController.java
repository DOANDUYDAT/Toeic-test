package com.spring.gwt.toeictest.server.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.gwt.toeictest.server.AppUtils;
import com.spring.gwt.toeictest.server.dao.UserAuthDAO;
import com.spring.gwt.toeictest.shared.UserAuthToken;

@Controller
public class HomeController {

	

//	PAGE
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String homePage(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return "home";
	}
	
	@GetMapping("/logout")
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView("redirect:/login");
		mav.addObject("message", "You are log out");
		
//		request.getSession().removeAttribute("loggedUser");
	    request.getSession().invalidate();
	    Cookie[] cookies = request.getCookies();
	     
	    if (cookies != null) {
	        String selector = "";
	         
	        for (Cookie aCookie : cookies) {
	            if (aCookie.getName().equals("selector")) {
	                selector = aCookie.getValue();
	            }
	        }
	         
	        if (!selector.isEmpty()) {
	            // delete token from database
	            UserAuthDAO authDao = new UserAuthDAO();
	            UserAuthToken token = authDao.findBySelector(selector);
	             
	            if (token != null) {
	                authDao.delete(token.getId());
	                 
	                Cookie cookieSelector = new Cookie("selector", "");
	                cookieSelector.setMaxAge(0);
	                 
	                Cookie cookieValidator = new Cookie("validator", "");
	                cookieValidator.setMaxAge(0);
	                response.addCookie(cookieSelector);
	                response.addCookie(cookieValidator);                   
	            }
	        }
	    }
		
		return mav;
	}
	
	@GetMapping("/userpage")
	public String userPage() {
		
		return "userpage";
	}
	
	@GetMapping("/adminpage")
	public String adminPage() {
		return "adminpage";
	}
	@GetMapping("/accessDenied")
	public String accessDeniedPage() {
		return "accessDenied";
	}
	
//	API
	@RequestMapping(value = "/get-string", method = RequestMethod.GET)
	public @ResponseBody String getString(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "OK";
	}
}
