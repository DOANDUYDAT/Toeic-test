package com.spring.gwt.toeictest.server.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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

@Controller
public class HomeController {


	
//	PAGE
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String homePage(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "home";
	}
//	EXAMPLE MODEL MERGE MAP
	@GetMapping("/example")
	public String passParametersWithModel(Model model) {
	    Map<String, String> map = new HashMap<>();
	    map.put("spring", "mvc");
	    model.addAttribute("message", "Baeldung");
	    model.mergeAttributes(map);
	    return "viewPage";
	}
	
	@GetMapping("/logout")
	public void logoutPage(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		model.addAttribute("message", "You are log out");
		response.sendRedirect("/login");
	}
//	API
	@RequestMapping(value = "/get-string", method = RequestMethod.GET)
	public @ResponseBody String getString(Model model, HttpServletRequest request, HttpServletResponse response) {
		return "OK";
	}
}
