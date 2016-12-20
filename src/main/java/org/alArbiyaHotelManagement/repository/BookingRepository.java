package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Booking;

public interface BookingRepository {

	public Booking createBooking(Booking booking, long roomId);
	public String getBookingId();
	public String getMemberShipId(String firstName, String email);
	public Booking createCheckIn(String bookingId,Booking booking);
	public List<Booking> CheckedInRooms();

}
