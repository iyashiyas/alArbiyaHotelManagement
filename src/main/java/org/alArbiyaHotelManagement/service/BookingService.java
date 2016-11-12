package org.alArbiyaHotelManagement.service;

import java.text.ParseException;

public interface BookingService {

	void createBooking(String roomId, String startDate, String endDate) throws ParseException;

}
