package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Hotel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showHotel(@RequestParam(required=false)org.alArbiyaHotelManagement.enums.Hotel profileCode) {
		
		String profileCde=(profileCode==null || profileCode.name()=="")? "hotel" : profileCode.getProfileName();
		
		return "hotel/"+profileCde;
	}

	public Hotel addHotel() {
		return null;
	}
	
	public Hotel editHotel() {
		return null;
	}
}
