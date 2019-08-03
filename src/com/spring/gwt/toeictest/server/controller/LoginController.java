package com.spring.gwt.toeictest.server.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gwt.toeictest.server.dao.SHA512Hasher;
import com.spring.gwt.toeictest.server.dao.UserAuthDAO;
import com.spring.gwt.toeictest.server.dao.UserDAO;
import com.spring.gwt.toeictest.shared.Key;
import com.spring.gwt.toeictest.shared.User;
import com.spring.gwt.toeictest.shared.UserAuthToken;

@Controller
public class LoginController {
	
	@GetMapping("/login")
	public ModelAndView loginPage(@RequestParam(name="message", required = false) String message) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("user", new User());
		mav.addObject("message", message);


		return mav;
		
	}
	
	@GetMapping("/userInfo")
	public ModelAndView loginSuccessPage(@RequestParam(name="name", required = false) String message, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("userInfo");
		mav.addObject("message", message);

		return mav;
		
	}
	
	@PostMapping("/loginProcess")
	public ModelAndView loginProcess(@ModelAttribute("user") User userLogin, BindingResult result, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		if (result.hasErrors()){
			mav = new ModelAndView("redirect:/login");
			mav.addObject("message", result.toString());
		}
		
		System.out.println("remmeberme first: " + request.getParameter("rememberMe"));
		boolean rememberMe = "on".equals(request.getParameter("rememberMe"));
		System.out.println("remember me: " + rememberMe);
		User user = UserDAO.validateUser(userLogin);
		if (user == null) {
			// login failed, show login form again with error messsage
			mav = new ModelAndView("redirect:/login");
			mav.addObject("message", "Invalid email or password!");
		} else {
			// login succeed, store customer information in the session
	        HttpSession session = request.getSession();
	        session.setAttribute("loggedUser", user.getId());
	        if (rememberMe) {
	            // create new token (selector, validator)
	             UserAuthToken newToken = new UserAuthToken();
	             
	             String selector = RandomStringUtils.randomAlphanumeric(12);
	             String rawValidator =  RandomStringUtils.randomAlphanumeric(64);
	             
	             String hashedValidator = SHA512Hasher.hash(rawValidator, Key.KEY_HASH);
	             
	             newToken.setSelector(selector);
	             newToken.setValidator(hashedValidator);
	              
	             newToken.setUserId(user.getId());
	            // save the token into the database
	             UserAuthDAO authDAO = new UserAuthDAO();
	             authDAO.create(newToken);
	            // create a cookie to store the selector and the validator
	             Cookie cookieSelector = new Cookie("selector", selector);
	             cookieSelector.setMaxAge(604800);
	             cookieSelector.setHttpOnly(true);
	              
	             Cookie cookieValidator = new Cookie("validator", rawValidator);
	             cookieValidator.setMaxAge(604800);
	             cookieValidator.setHttpOnly(true);
	             
	             response.addCookie(cookieSelector);
	             response.addCookie(cookieValidator);
	                 
	        }
	        // show destination page
	        mav = new ModelAndView("redirect:/userInfo");
	        mav.addObject("name", user.getName());
		}
		return mav; 
        
	}
	
	
}
