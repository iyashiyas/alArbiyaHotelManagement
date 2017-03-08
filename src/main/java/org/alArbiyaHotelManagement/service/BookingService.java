package org.alArbiyaHotelManagement.service;

 
import java.text.ParseException;
import java.util.List;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.UserDetails;

public interface BookingService {

	public Booking createBooking(String roomId, String startDate, String endDate,int randomPassword, UserDetails user) throws ParseException;

	public Booking createCheckIn(String bookingId,long parkingId);

	public List<Booking> bookedRooms();

	public Booking checkOut(String bookingrefernceId);

	public List<Booking> checkedInRooms();

	public List<Booking> bookedRoomsCount();

	public Booking authenticate(long roomId, int password);
	
}
