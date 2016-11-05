package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Room;

public interface RoomService {
	public Room addRoom(Room room);
	public List<Room> getAllRoom();
	public Room deleteRoom();
	public Room editRoom();

}
