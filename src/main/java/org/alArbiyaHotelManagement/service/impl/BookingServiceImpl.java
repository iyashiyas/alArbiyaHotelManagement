package org.alArbiyaHotelManagement.service.impl;

import java.text.ParseException;
import java.util.Date;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.repository.BookingRepository;
import org.alArbiyaHotelManagement.service.BookingService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	BookingRepository bookingRepository;
	
	@Override
	public void createBooking(String id, String startDte, String endDte) throws ParseException {
		long roomId = Long.parseLong(id);
		Date startDate = AlArbiyaHotelMgmtUtils.getDateForString(startDte);
		Date endDate = AlArbiyaHotelMgmtUtils.getDateForString(endDte);
		Booking booking = new Booking(roomId, startDate, endDate);
		bookingRepository.createBooking(booking);
	}

}
