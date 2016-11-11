package org.alArbiyaHotelManagement.repository;

import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.enums.RoomType;
import org.alArbiyaHotelManagement.model.Room;

public interface ReservationRepository {

	List<Room> getAllAvailableRoooms(Date startDate, Date endDate, RoomType roomtype);

}
