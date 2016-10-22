package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Hotel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showHotel() {
		return "hotel/hotel";
	}

	public Hotel addHotel() {
		return null;
	}
	
	public Hotel editHotel() {
		return null;
	}
}
