package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.UserManagementRepository;
import org.alArbiyaHotelManagement.service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 

@Service
public class UserManagementServiceImpl implements UserManagementService{
   
	@Autowired
	UserManagementRepository userManagementRepository;
	
	@Override
	public List<User> getAllusers() {
		// TODO Auto-generated method stub
		return userManagementRepository.getAllusers();
	}

	@Override
	public User addUser(User user) {
		// TODO Auto-generated method stub
 
		return userManagementRepository.addUser(user);
	}

	@Override
	public User changePassword(User user) {
		  return userManagementRepository.changePassword(user);
		
	}

	 
}
