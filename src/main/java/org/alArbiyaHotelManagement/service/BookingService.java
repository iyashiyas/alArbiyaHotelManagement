package org.alArbiyaHotelManagement.service;

import java.text.ParseException;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.UserDetails;

public interface BookingService {

	public Booking createBooking(String roomId, String startDate, String endDate, UserDetails user) throws ParseException;

}
