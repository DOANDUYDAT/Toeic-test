package com.spring.gwt.toeictest.server.dao;

import static com.googlecode.objectify.ObjectifyService.ofy;

import com.spring.gwt.toeictest.shared.UserAuthToken;

public class UserAuthDAO {
	public UserAuthToken findBySelector(String selector) {

		UserAuthToken token = ofy().load().type(UserAuthToken.class).filter("selector =", selector).first().now();
		return token;

	}

	public void create(UserAuthToken token) {
		ofy().save().entity(token).now();
	}
	
	public void delete(Long tokenId) {
		ofy().delete().type(UserAuthToken.class).id(tokenId);
	}
}
