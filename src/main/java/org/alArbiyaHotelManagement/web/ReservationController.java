package org.alArbiyaHotelManagement.web;

 
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.model.RoomType;
import org.alArbiyaHotelManagement.service.ReservationService;
import org.alArbiyaHotelManagement.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
 
import org.springframework.ui.Model;
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
		System.out.println("startDate"+startDate);
		System.out.println("endDate"+endDate);
		System.out.println("roomType"+roomType);
		
		List<Room> rooms = reservationService.getAvailableRoooms(startDate, endDate, roomType);
		
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("availableRoooms", rooms);
		model.addAllAttributes(attributes);
		
		return "reservation/availableRooms";
	}
	
	@RequestMapping(value="/book", method = RequestMethod.GET)
	public String CheckIn(@RequestParam(required=true) String roomId, Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		model.addAllAttributes(attributes);
		return "reservation/userDetails";
	}
}
