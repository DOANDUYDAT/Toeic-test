package com.spring.gwt.toeictest.server.dao;

import com.spring.gwt.toeictest.shared.User;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import com.googlecode.objectify.cmd.LoadType;

public class UserDaoImpl implements UserDao {

	@Override
	public User validateUser(User user) {

		System.out.print("validate");
		User userToCheck = ofy().load().type(User.class).filter("email =", user.getEmail()).first().now();
		if (null != userToCheck && userToCheck.getPassword() == user.getPassword()) {
			return userToCheck;
		}
		
		return null;
	}

	@Override
	public boolean register(User user) {
		User userToCheck = ofy().load().type(User.class).filter("email =", user.getEmail()).first().now();
		if (null == userToCheck) {
			User newuser = new User();
			newuser.setName(user.getName());
			newuser.setEmail(user.getEmail());
			
//			newuser.setPassword();
			
			
			ofy().save().entity(newuser).now();
			return true;
		}
		return false;
		
	}
	
}
