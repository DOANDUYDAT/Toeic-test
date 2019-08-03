package com.spring.gwt.toeictest.server.controller;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gwt.toeictest.server.dao.SHA512Hasher;
import com.spring.gwt.toeictest.server.dao.UserDAO;
import com.spring.gwt.toeictest.server.security.SecurityConfig;
import com.spring.gwt.toeictest.shared.Key;
import com.spring.gwt.toeictest.shared.User;

@Controller
public class RegisterController {
	@GetMapping("/register")
	public ModelAndView registerPage(@RequestParam(name="message", required = false) String message) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());
		mav.addObject("message", message);
		return mav;
	}
	@PostMapping("/registerProcess")
	public ModelAndView registerProcess(@ModelAttribute(name="user") User user, BindingResult result) {
		ModelAndView mav = null;
		if (result.hasErrors()){
			mav = new ModelAndView("redirect:/register");
			mav.addObject("message", result.toString());
		}
		
		boolean registerToken = UserDAO.register(user);
		if (registerToken) {
			
			mav = new ModelAndView("redirect:/login");
			mav.addObject("message", "Register successfully!");
		} else {
			mav = new ModelAndView("redirect:/register");
			mav.addObject("message", "Invalid email");
		}
		
		return mav;
	}
}
