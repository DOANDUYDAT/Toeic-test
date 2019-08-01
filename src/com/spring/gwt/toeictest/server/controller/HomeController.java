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
		// xoa session
		request.getSession().invalidate();
		//xoa cookie
		Cookie  cookie = new Cookie("UserLogin", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		
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
	
//	API
	@RequestMapping(value = "/get-string", method = RequestMethod.GET)
	public @ResponseBody String getString(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "OK";
	}
}
