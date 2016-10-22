package org.alArbiyaHotelManagement.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showAccount() {
		return "account/account";
	}

	public String addAccount() {
		return "account/addHomePage";
	}
	
	public String editAccount() {
		return "account/editHomePage";
	}
}
