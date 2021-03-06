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
@RequestMapping(value = "/role")
public class RoleController {

	@Autowired
	RoleService roleService;
    
	@Autowired
	UserManagementService userManagementService;
	
	@RequestMapping(value="/showRole", method=RequestMethod.GET)
	public String editInfo(Model model){
		List<Role> roles = roleService.getAllRole(); 
		List<User> Users = userManagementService.getAllusers(); 
		Map<String, Object> attributes = new HashMap<String, Object>(); 
		attributes.put("users", Users);
		attributes.put("roles", roles);
		attributes.put("newRole", new Role());
		model.addAllAttributes(attributes);
		return "user/role";
	}
	  
	@RequestMapping(value="/addRole", method=RequestMethod.POST)
	public String addRole(@ModelAttribute Role role){
		roleService.addRole(role);
		return "redirect:/role/showRole";
	}
	  
	
}
