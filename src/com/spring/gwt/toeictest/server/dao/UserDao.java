package com.spring.gwt.toeictest.server.dao;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.ArrayList;
import java.util.List;

import com.spring.gwt.toeictest.server.security.SecurityConfig;
import com.spring.gwt.toeictest.shared.Key;
import com.spring.gwt.toeictest.shared.User;

public class UserDAO {

	public static User validateUser(User user) {
		String email = user.getEmail();
		String password = user.getPassword();
		User userResult = ofy().load().type(User.class).filter("email =", email).first().now();
		if (userResult != null && SHA512Hasher.checkPassword(userResult.getPassword(), password, Key.KEY_HASH)) {
			return userResult;
		}
		return null;

	}

	public static boolean register(User user) {
		String email = user.getEmail();
		String password = user.getPassword();
		String userName = user.getName();
		String verifyPassword = user.getVerifyPassword();
		List<String> roles = new ArrayList<String>();
		roles.add(SecurityConfig.ROLE_USER);
		
		User newuser = new User();
		newuser.setEmail(email);
		newuser.setName(userName);
		newuser.setPassword(SHA512Hasher.hash(password, Key.KEY_HASH));
		
		
		newuser.setRoles(roles);

		User userToCheck = ofy().load().type(User.class).filter("email =", email).first().now();
		if (userToCheck == null && password.equals(verifyPassword)) {
			ofy().save().entity(newuser).now();
			return true;
		}

		return false;

	}

}
