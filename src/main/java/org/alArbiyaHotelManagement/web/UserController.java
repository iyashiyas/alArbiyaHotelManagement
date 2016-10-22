package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showUser() {
		return "user/user";
	}

	public User addUser() {
		return null;
	}
	
	public User edituser() {
		return null;
	}
}
