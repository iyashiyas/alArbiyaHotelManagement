package org.alArbiyaHotelManagement.service.impl;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.ReservationRepository;
import org.alArbiyaHotelManagement.service.ReservationService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.joda.time.Interval;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationRepository reservationRepository;
	
	@Override
	public List<Room> getAvailableRoooms(String startDt, String endDt, String type) throws ParseException { 
		Date startDate = AlArbiyaHotelMgmtUtils.getDateForString(startDt);
		Date endDate = AlArbiyaHotelMgmtUtils.getDateForString(endDt);
		org.alArbiyaHotelManagement.enums.RoomType roomtype = org.alArbiyaHotelManagement.enums.RoomType.getRoomType(type);
		List<Room> allAvailableRooms = reservationRepository.getAllAvailableRoooms(startDate, endDate, type);
		List<Room> notAvailableRoomForBooking = new ArrayList<Room>();
		
		Interval bookingInterval = new Interval(startDate.getTime(), endDate.getTime());
		for(Room room: allAvailableRooms) {
			List<Booking> bookings = room.getBookings();
			for(Booking booking: bookings) {
				Interval bookedInterval = new Interval(booking.getStartDate().getTime(), booking.getEndDate().getTime());
				if(bookingInterval.overlaps(bookedInterval)) {
					notAvailableRoomForBooking.add(room);
				}
			}
		}
		allAvailableRooms.removeAll(notAvailableRoomForBooking);
		
		return allAvailableRooms;
	}

}
