package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.User;
  
public interface UserManagementRepository {

	List<User> getAllusers(); 
	public User addUser(User user);
	public User changePassword(User user);
	  
}
