package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.User;

public interface UserManagementService {

	List<User> getAllusers();

	public User addUser(User user);

	User findByUsername(String userName);

	/* public User getUser(String userName);*/

}
