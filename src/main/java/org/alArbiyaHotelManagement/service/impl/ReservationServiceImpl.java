package org.alArbiyaHotelManagement.service.impl;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.ReservationRepository;
import org.alArbiyaHotelManagement.service.ReservationService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
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
		return reservationRepository.getAvailableRoooms(startDate, endDate, roomtype);
	}

}
