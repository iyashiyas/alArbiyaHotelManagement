package org.alArbiyaHotelManagement.service;

import org.alArbiyaHotelManagement.model.User;

public interface SecurityService {

	String findLoggedInUsername();

	void autologin(User user);

}
