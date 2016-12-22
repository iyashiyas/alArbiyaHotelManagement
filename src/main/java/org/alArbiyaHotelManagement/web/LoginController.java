package org.alArbiyaHotelManagement.web;

 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value = "/login")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping(value = "/logout")
	public String showLogout() {
		return "login/login";
	}
	@RequestMapping(value = "/errorLogin")
	public String errorLogin(Model model) {
		String message="error";
		model.addAttribute("message",message);
		return "login/login";
	}
}
