package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.Map;

import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.service.UserService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	UserService userservice;
	 

	@RequestMapping(value="/getUserDetails", method=RequestMethod.GET)
	public String getUserDetails(@RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate, 
			@RequestParam(required=true) String memberId,
			Model model) {
		
		UserDetails userDetails = userservice.getUserDetails(memberId);
		int randomPassword= AlArbiyaHotelMgmtUtils.generatePassword();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("randomPassword", randomPassword);
		attributes.put("userDetails", userDetails != null ? userDetails : new UserDetails() );
		model.addAllAttributes(attributes);
		return "reservation/userDetails"; 
	}
	
	@RequestMapping(value="/getUserDetailsByIdCard", method=RequestMethod.GET)
	public String getUserDetailsByIdCard(@RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate, 
			@RequestParam(required=true) String nationalId,
			Model model) {
		
		UserDetails userDetails = userservice.getUserDetailsByIdCard(nationalId);
		int randomPassword= AlArbiyaHotelMgmtUtils.generatePassword();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("randomPassword", randomPassword);
		attributes.put("userDetails", userDetails != null ? userDetails : new UserDetails() );
		model.addAllAttributes(attributes);
		return "reservation/userDetails"; 
	}
	
	@RequestMapping(value="/getUserDetailsByPhone", method=RequestMethod.GET)
	public String getUserDetailsByPhone(@RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate, 
			@RequestParam(required=true) String phoneNumber,
			Model model) {
		
		UserDetails userDetails = userservice.getUserDetailsByPhone(phoneNumber);
		int randomPassword= AlArbiyaHotelMgmtUtils.generatePassword();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("randomPassword", randomPassword);
		attributes.put("userDetails", userDetails != null ? userDetails : new UserDetails() );
		model.addAllAttributes(attributes);
		return "reservation/userDetails"; 
	}
	
	
}
