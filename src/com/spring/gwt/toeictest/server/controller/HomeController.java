package com.spring.gwt.toeictest.server.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

//	PAGE
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "home";
	}
	
//	PAGE LOGIN
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "login";
	}

//	PAGE REGISTER
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerPage(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "register";
	}	
	
//	API
	@RequestMapping(value = "/get-string", method = RequestMethod.GET)
	public @ResponseBody String getString(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "OK";
	}
}
