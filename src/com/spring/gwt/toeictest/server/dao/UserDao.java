package com.spring.gwt.toeictest.server.dao;

import com.spring.gwt.toeictest.shared.User;

public interface UserDao {
	  boolean register(User user);
	  User validateUser(User user);

}
