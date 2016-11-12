package org.alArbiyaHotelManagement.web;

 
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.model.RoomType;
import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.service.BookingService;
import org.alArbiyaHotelManagement.service.ReservationService;
import org.alArbiyaHotelManagement.service.RoomTypeService;
import org.alArbiyaHotelManagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/reservation")
public class ReservationController {
	
	@Autowired
	RoomTypeService roomTypeService;
	
	@Autowired
	ReservationService reservationService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	BookingService bookingService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String Reservation(Model model) {
		List<RoomType> roomType = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomType", roomType);
		model.addAllAttributes(attributes);
		return "reservation/reservation";
	}
	
	@RequestMapping(value="/availableRooms", method = RequestMethod.POST)
	public String getAvailableRooms(String startDate, String endDate, String roomType, Model model) throws ParseException {
		List<Room> rooms = reservationService.getAvailableRoooms(startDate, endDate, roomType);
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("availableRoooms", rooms);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		model.addAllAttributes(attributes);
		return "reservation/availableRooms";
	}
	
	@RequestMapping(value="/book", method = RequestMethod.GET)
	public String book(@RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate, 
			Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("userDetails", new UserDetails());
		model.addAllAttributes(attributes);
		return "reservation/userDetails";
	}
	
	@RequestMapping(value="/doBooking", method=RequestMethod.POST) 
	public String doBooking(@ModelAttribute(value="userDetails") UserDetails userDetails, @RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate) throws ParseException {
		//UserDetails user = userService.addUserDetails(userDetails);
		bookingService.createBooking(roomId, startDate, endDate, userDetails);
		return "reservation/reservationDetails";
	}
}
