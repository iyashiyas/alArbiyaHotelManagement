package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
  
@Controller
public class HomeController {
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping(value = "/")
	public String showHomePage(Model model) {
		List<Branch> branches = branchService.getAllBranch();
		
		Map<String, Object> attributes = new HashMap<String, Object>();
		
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch());
		model.addAllAttributes(attributes);
		
		return "home/home";
	}
	
	
	
	
	 
	
}
