package org.alArbiyaHotelManagement.service.impl;

import java.text.ParseException;
import java.util.Date;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.UserDetails;
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
	public Booking createBooking(String id, String startDte, String endDte, UserDetails userDetails) throws ParseException {
		long roomId = Long.parseLong(id);
		Date startDate = AlArbiyaHotelMgmtUtils.getDateForString(startDte);
		Date endDate = AlArbiyaHotelMgmtUtils.getDateForString(endDte);
		String bookingId = bookingRepository.getBookingId();
		String memberShipId = bookingRepository.getMemberShipId(userDetails.getFirstName(), userDetails.getEmail());
		
		Booking booking = new Booking();
		booking.setBookingReferenceId(bookingId);
		booking.setStartDate(startDate);
		booking.setEndDate(endDate);
		
		userDetails.setPhoneNumber(userDetails.getPhoneCode()+userDetails.getPhoneNumber());
		userDetails.setMemberId(memberShipId);
		booking.setUserDetails(userDetails);
		
		return bookingRepository.createBooking(booking, roomId);
	}

}
