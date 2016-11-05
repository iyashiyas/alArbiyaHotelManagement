package org.alArbiyaHotelManagement.repository;

import java.util.Set;
 
import org.alArbiyaHotelManagement.model.Room;

public interface RoomRepository {
    
	public Room addRoom(Room room);
	public Set<Room> getAllRoom();
	public Room editRoom();
	public Room deleteRoom();
	
}
