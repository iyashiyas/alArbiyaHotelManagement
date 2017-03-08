package org.alArbiyaHotelManagement.web;
 
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.model.RoomType;
import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.service.BookingService;
import org.alArbiyaHotelManagement.service.ParkingService;
import org.alArbiyaHotelManagement.service.ReservationService;
import org.alArbiyaHotelManagement.service.RoomTypeService;
import org.alArbiyaHotelManagement.service.UserService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.krysalis.barcode4j.impl.code128.Code128Bean;
import org.krysalis.barcode4j.impl.code128.Code128Constants;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;
import org.krysalis.barcode4j.tools.UnitConv;
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
	
	@Autowired
	ParkingService parkingService;
	
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
		List<RoomType> roomTypes = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("availableRoooms", rooms);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("roomType", roomTypes); 
		model.addAllAttributes(attributes);
		return "reservation/reservation";
	}
	
	@RequestMapping(value="/book", method = RequestMethod.GET)
	public String book(@RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate, 
			Model model) {
		int randomPassword= AlArbiyaHotelMgmtUtils.generatePassword();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomId", roomId);
		attributes.put("startDate", startDate);
		attributes.put("endDate", endDate);
		attributes.put("userDetails", new UserDetails());
		attributes.put("randomPassword", randomPassword);
		model.addAllAttributes(attributes);
		return "reservation/userDetails";
	}
	
	@RequestMapping(value="/doBooking", method=RequestMethod.POST) 
	public String doBooking(@ModelAttribute(value="userDetails") UserDetails userDetails, @RequestParam(required=true) String roomId,
			@RequestParam(required=true) String startDate, 
			@RequestParam(required=true) String endDate,
			@RequestParam(required=true) int randomPassword, 
			Model model) throws ParseException {
		 
		Booking booking = bookingService.createBooking(roomId, startDate, endDate,randomPassword, userDetails);
		 
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("bookingDetails", booking);
		 
		model.addAllAttributes(attributes);
		return "reservation/reservationDetails";
	}
	
	@RequestMapping(value="/checkIn", method=RequestMethod.GET) 
	public String checkIn(@ModelAttribute(value="booking")Booking booking, @RequestParam(required=true) String bookingrefernceId,@RequestParam(required=true) long parkingId, Model model) throws ParseException {
	     booking = bookingService.createCheckIn(bookingrefernceId,parkingId);  
		return "redirect:/reservation/bookedRooms";
	}
	@RequestMapping(value="/checkOut", method=RequestMethod.GET) 
	public String checkOut(@ModelAttribute(value="booking")Booking booking, @RequestParam(required=true) String bookingrefernceId, Model model) throws ParseException {
	     booking = bookingService.checkOut(bookingrefernceId); 
		return "redirect:/reservation/bookedRooms";
	}
	
	@RequestMapping(method = RequestMethod.GET,value="/bookedRooms")
	public String ChekedInRooms(Model model) {
		List<Booking> bookedRooms = bookingService.bookedRooms();
		List<Parking> NotAvailableParking = parkingService.NotAvailableParking();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("bookedRooms", bookedRooms); 
		attributes.put("NotAvailableParking", NotAvailableParking); 
		model.addAllAttributes(attributes);
		return "reservation/bookedRooms";
	}
	  
	
}
