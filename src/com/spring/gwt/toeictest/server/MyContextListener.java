package com.spring.gwt.toeictest.server;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.spring.gwt.toeictest.shared.User;
import com.googlecode.objectify.ObjectifyService;


public class MyContextListener implements ServletContextListener {
	
	public void contextInitialized(ServletContextEvent event) {
		System.out.println("contextInitialized");
		
		ObjectifyService.register(User.class);
		// etc...
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}
}