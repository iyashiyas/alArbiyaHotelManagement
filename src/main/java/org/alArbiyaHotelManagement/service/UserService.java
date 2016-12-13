package org.alArbiyaHotelManagement.service;

import org.alArbiyaHotelManagement.model.UserDetails;

public interface UserService {
	public UserDetails addUserDetails(UserDetails userDetail);
	public UserDetails getUserDetails(String memberId);
	
}
