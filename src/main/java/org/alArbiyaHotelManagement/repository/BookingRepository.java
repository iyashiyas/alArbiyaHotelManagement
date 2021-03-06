package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Booking;

public interface BookingRepository {

	public Booking createBooking(Booking booking, long roomId);
	public String getBookingId();
	public String getMemberShipId(String firstName, String email);
	public Booking createCheckIn(String bookingId,Booking booking,long parkingId);
	public List<Booking> bookedRooms();
	public Booking checkOut(String bookingrefernceId, Booking booking);
	public List<Booking> checkedInRooms();
	public List<Booking> bookedRoomsCount();
	public Booking authenticate(long roomId, int password);
	
}
