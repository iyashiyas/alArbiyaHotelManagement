package org.alArbiyaHotelManagement.service;

import java.util.Set;
 
import org.alArbiyaHotelManagement.model.RoomType;

public interface RoomTypeService {
	public RoomType addRoomType(RoomType roomType);
	public Set<RoomType> getAllRoomType();
	public RoomType deleteRoomType();
	public RoomType editRoomType();
	public RoomType editRoomType(RoomType roomType);
}
