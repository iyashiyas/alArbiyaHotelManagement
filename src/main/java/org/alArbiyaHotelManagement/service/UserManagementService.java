package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.User;

public interface UserManagementService {

	List<User> getAllusers();

	public User addUser(User user); 
	/* public User getUser(String userName);*/

	public User changePassword(User user);

	List<User> getAllDeliveryBoy();

}
