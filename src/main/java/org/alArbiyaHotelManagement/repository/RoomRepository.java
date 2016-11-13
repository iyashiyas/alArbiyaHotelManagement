package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Room;

public interface RoomRepository {
    
	public Room addRoom(Room room);
	public List<Room> getAllRoom();
	public Room editRoom(Room room);
	public Room deleteRoom();
	
}
