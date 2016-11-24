package org.alArbiyaHotelManagement.web;

 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 

@Controller
@RequestMapping(value = "/SHMS")
public class LoginControl {

	@RequestMapping(value = "/login")
	public String showLoginPage() {
	 
		return "login/login";
	}
}
