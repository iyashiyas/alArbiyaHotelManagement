package org.alArbiyaHotelManagement.service.impl;

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
	
}
