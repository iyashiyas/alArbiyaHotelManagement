package org.alArbiyaHotelManagement.web;

 
import org.springframework.stereotype.Controller;
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/reservation")
public class ReservationController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String Reservation() {

	   return "reservation/reservation";
	}
	
	@RequestMapping(value="/availableRooms", method = RequestMethod.POST)
	public String AvailableRooms() {

	   return "reservation/availableRooms";
	}
	
	@RequestMapping(value="/checkIn", method = RequestMethod.GET)
	public String CheckIn() {

	   return "reservation/addNewMember";
	}
}
