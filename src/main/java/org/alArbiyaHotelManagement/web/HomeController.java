package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.HotelInfo;
import org.alArbiyaHotelManagement.service.BranchService;
import org.alArbiyaHotelManagement.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
  
@Controller
public class HomeController {
	
	@Autowired
	HotelInfoService hotelinfoService;
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping(value = "/SHMS")
	public String showHomePage(Model model) {
		List<Branch> branches = branchService.getAllBranch();
		List<HotelInfo> hotelInfos = hotelinfoService.getHotelInfo();
		Map<String, Object> attributes = new HashMap<String, Object>(); 
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch()); 
		/*Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username 
	      model.addAttribute("username", name); */ 
	      model.addAttribute("hotelInfos" ,hotelInfos);
		  model.addAllAttributes(attributes); 
		return "home/home";
	}
	 
	@RequestMapping(value="/header", method=RequestMethod.GET)
	public @ResponseBody List<HotelInfo> header() {
		return hotelinfoService.getHotelInfo();
	}
	
	  
}
