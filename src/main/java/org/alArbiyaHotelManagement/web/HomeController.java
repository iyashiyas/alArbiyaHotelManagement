package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
  
@Controller
public class HomeController {
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping(value = "/SHMS")
	public String showHomePage(Model model) {
		List<Branch> branches = branchService.getAllBranch();
		
		Map<String, Object> attributes = new HashMap<String, Object>();
		
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch());
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username

	      model.addAttribute("username", name); 
		  model.addAllAttributes(attributes);
		
		return "home/home";
	}
	
	
	
	
	 
	
}
