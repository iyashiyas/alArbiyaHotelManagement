package org.alArbiyaHotelManagement.repository;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.model.UserDetails;

public interface UserRepository {

	UserDetails addUserDetails(UserDetails userDetail);
	UserDetails getUserDetails(String memberId);
	User loadUserByUsername(String username);
}
