package org.alArbiyaHotelManagement.service;

import java.text.ParseException;
import java.util.List;

import org.alArbiyaHotelManagement.model.Room;

public interface ReservationService {
	public List<Room> getAvailableRoooms(String startDate, String endDate, String roomType) throws ParseException;
}
