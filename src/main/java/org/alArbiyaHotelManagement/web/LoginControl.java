package org.alArbiyaHotelManagement.web;

 
import java.util.HashMap;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.service.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 

@Controller
 
public class LoginControl {
	
	@Autowired
	private SecurityService securityService;
	
 @RequestMapping(value = "/login")
	public String showLoginPage() {
	 
		return "login/login";
	} 
	
	 @RequestMapping(value = "/validateUser", method = RequestMethod.GET)
	    public String login(Model model, String error, String logout) {
		  
	        if (error != null)
	            model.addAttribute("error", "Your username and password is invalid.");

	        if (logout != null)
	            model.addAttribute("message", "You have been logged out successfully.");

	        return "login/login";
	    } 
	 
	 @RequestMapping(value="/validateUser", method=RequestMethod.POST)
		public String editFloor(@ModelAttribute User user,String error,String logout) {
         
		 Map<String, Object> attributes = new HashMap<String, Object>();
		 attributes.put("userForm", new User());
		  securityService.autologin(user);  
		  
		  return "login/login";
		}
}
