package com.spring.gwt.toeictest.server.controller;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.http.HttpRequest;
import com.spring.gwt.toeictest.server.AppUtils;
import com.spring.gwt.toeictest.server.dao.SHA512Hasher;
import com.spring.gwt.toeictest.server.dao.UserDaoImpl;
import com.spring.gwt.toeictest.shared.Key;
import com.spring.gwt.toeictest.shared.User;

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
//		mav.addObject("user", new User());
		mav.addObject("message", message);
//		mav.addObject("Cookie", Optional.of(AppUtils.readCookie("UserLogin", request)));
		return mav;
		
	}
	
	@PostMapping("/loginProcess")
	public ModelAndView loginProcess(@ModelAttribute("user") User user, BindingResult result, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		if (result.hasErrors()){
			mav = new ModelAndView("redirect:/login");
			mav.addObject("message", result.toString());
		}
		
		User userToCheck = ofy().load().type(User.class).filter("email =", user.getEmail()).first().now();
		if (null != userToCheck) {
			SHA512Hasher decode = new SHA512Hasher();
			boolean check = decode.checkPassword(userToCheck.getPassword(), user.getPassword(), Key.KEY_HASH);
			if (check) {
				AppUtils.storeLoginedUser(request.getSession(true), userToCheck);
				
				mav = new ModelAndView("redirect:/userInfo");
				mav.addObject("name", userToCheck.getName());
				
				Cookie  cookie = new Cookie("UserLogin", userToCheck.getEmail());
//				Cookie  cookie = new Cookie("UserLogin", "");
				cookie.setPath("/");
				cookie.setHttpOnly(true);
//				cookie.setSecure(true);
				cookie.setMaxAge(60);
				response.addCookie(cookie);
				
			} else {
				mav = new ModelAndView("redirect:/login");
				mav.addObject("message", "Password is wrong!!");
			}
		} else {
			mav = new ModelAndView("redirect:/login");
			mav.addObject("message", "Email is wrong!!");
		}
		
		
		return mav; 
        
	}
	
	
}
