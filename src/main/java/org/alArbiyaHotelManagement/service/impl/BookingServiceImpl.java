package org.alArbiyaHotelManagement.service.impl;

 
import java.text.DateFormat;
import java.text.ParseException;
 
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.enums.BookingStatus;
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
	public Booking createBooking(String id, String startDte, String endDte,int randomPassword, UserDetails userDetails) throws ParseException {
		long roomId = Long.parseLong(id);
		Date startDate = AlArbiyaHotelMgmtUtils.getDateForString(startDte);
		Date endDate = AlArbiyaHotelMgmtUtils.getDateForString(endDte);
		String bookingId = bookingRepository.getBookingId();
		String memberShipId = bookingRepository.getMemberShipId(userDetails.getFirstName(), userDetails.getEmail());
		
		Booking booking = new Booking();
		booking.setBookingReferenceId(bookingId);
		booking.setStartDate(startDate);
		booking.setEndDate(endDate);
		booking.setAccessPassword(randomPassword);
		booking.setBookingStatus(BookingStatus.BOOKED.name());
		if(userDetails.getId()<1) {
			/*userDetails.setPhoneNumber("");*/
			userDetails.setPhoneNumber(userDetails.getPhoneNumber());
			userDetails.setMemberId(memberShipId);
		}
		List<Booking> bookings = new ArrayList<Booking>();  
		bookings.add(booking);
		userDetails.setBooking(bookings);
		booking.setUserDetails(userDetails);
		return bookingRepository.createBooking(booking, roomId);
	}

	@Override
	public Booking createCheckIn(String bookingId,long parkingId) {
		// TODO Auto-generated method stub 
		Booking booking = new Booking();
		   if(parkingId==0)
		   {
			 parkingId=(Long) null;
		   }
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  booking.setCheckedInTime(dateFormat.format(date));
		return bookingRepository.createCheckIn(bookingId,booking,parkingId);
	}

	@Override
	public List<Booking> bookedRooms() {
		// TODO Auto-generated method stub
		return bookingRepository.bookedRooms();
	}

	@Override
	public Booking checkOut(String bookingrefernceId) {
		// TODO Auto-generated method stub
		Booking booking = new Booking(); 
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  booking.setCheckedOutTime(dateFormat.format(date));
		return bookingRepository.checkOut(bookingrefernceId,booking);
	}

	@Override
	public List<Booking> checkedInRooms() {
		// TODO Auto-generated method stub
		return bookingRepository.checkedInRooms();
	}

	@Override
	public List<Booking> bookedRoomsCount() {
		// TODO Auto-generated method stub
		return bookingRepository.bookedRoomsCount();
	}

}
