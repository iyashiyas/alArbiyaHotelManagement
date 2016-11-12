package org.alArbiyaHotelManagement.repository;

import org.alArbiyaHotelManagement.model.Booking;

public interface BookingRepository {

	public Booking createBooking(Booking booking, long roomId);
	public String getBookingId();
	public String getMemberShipId(String firstName, String email);

}
