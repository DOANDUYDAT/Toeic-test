package com.spring.gwt.toeictest.server.controller;

import static com.googlecode.objectify.ObjectifyService.ofy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gwt.toeictest.server.Key;
import com.spring.gwt.toeictest.server.dao.SHA512Hasher;
import com.spring.gwt.toeictest.server.dao.UserDaoImpl;
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
	
	@GetMapping("/login-success")
	public ModelAndView loginSuccessPage(@RequestParam(name="name", required = false) String message) {
		ModelAndView mav = new ModelAndView("login-success");
//		mav.addObject("user", new User());
		mav.addObject("message", message);
		return mav;
		
	}
	
	@PostMapping("/loginProcess")
	public ModelAndView loginProcess(@ModelAttribute("user") User user, BindingResult result) {
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
				mav = new ModelAndView("redirect:/login-success");
				mav.addObject("name", userToCheck.getName());
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
