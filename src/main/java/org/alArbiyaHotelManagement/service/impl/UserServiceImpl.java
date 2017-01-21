package org.alArbiyaHotelManagement.service.impl;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.repository.UserRepository;
import org.alArbiyaHotelManagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepositoty;
	
	@Override
	public UserDetails addUserDetails(UserDetails userDetail) {
		return userRepositoty.addUserDetails(userDetail);
	}

	@Override
	public UserDetails getUserDetails(String memberId) {
		return userRepositoty.getUserDetails(memberId);
	}

	@Override
	public User loadUserByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepositoty.loadUserByUsername(username);
	}

	@Override
	public UserDetails getUserDetailsByIdCard(String nationalId) {
		// TODO Auto-generated method stub
		return userRepositoty.getUserDetailsByIdCard(nationalId);
	}

	@Override
	public UserDetails getUserDetailsByPhone(String phoneNumber) {
		// TODO Auto-generated method stub
		return userRepositoty.getUserDetailsByPhone(phoneNumber);
	}
	
}
