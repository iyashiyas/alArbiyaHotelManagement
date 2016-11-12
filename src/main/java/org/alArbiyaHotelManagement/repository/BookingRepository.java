package org.alArbiyaHotelManagement.repository;

import org.alArbiyaHotelManagement.model.Booking;

public interface BookingRepository {

	void createBooking(Booking booking, long roomId);
	public String getBookingId();

}
