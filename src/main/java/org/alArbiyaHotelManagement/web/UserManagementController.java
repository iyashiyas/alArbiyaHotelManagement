package org.alArbiyaHotelManagement.web;

  
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
import org.alArbiyaHotelManagement.model.Role;
import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.service.RoleService;
import org.alArbiyaHotelManagement.service.UserManagementService; 
import org.springframework.beans.factory.annotation.Autowired;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 

@Controller
@RequestMapping(value = "/usermanagement")
public class UserManagementController {

	@Autowired
	UserManagementService userManagementService;
	
	@Autowired
	RoleService roleService; 
	
	@RequestMapping(value="/showUser", method=RequestMethod.GET)
	public String showUser(Model model){
		List<User> Users = userManagementService.getAllusers();
		List<Role> roles = roleService.getAllRole();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("users", Users);
		attributes.put("roles", roles);
		attributes.put("newUser", new User());
		model.addAllAttributes(attributes);
		 
		return "user/user";
	}
	  
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute User user){ 
		userManagementService.addUser(user);
		return "redirect:/usermanagement/showUser";
	}
	
	@RequestMapping(value="/changePassword", method=RequestMethod.POST)
	public String changePassword(@ModelAttribute User user) {
		userManagementService.changePassword(user);
		 return "redirect:/usermanagement/showUser";
	}
	 
	
}
