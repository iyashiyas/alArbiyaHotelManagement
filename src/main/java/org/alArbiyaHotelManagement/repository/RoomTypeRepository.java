package org.alArbiyaHotelManagement.repository;

import java.util.Set;

 
import org.alArbiyaHotelManagement.model.RoomType;

public interface RoomTypeRepository {

	public RoomType addRoomType(RoomType roomType);
	
	public Set<RoomType> getAllRoomType();
	public RoomType editRoomType();
	public RoomType deleteRoomType();
	
}
