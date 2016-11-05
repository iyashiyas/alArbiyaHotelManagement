package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.RoomType;

public interface RoomTypeRepository {

	public RoomType addRoomType(RoomType roomType);
	public List<RoomType> getAllRoomType();
	public RoomType editRoomType();
	public RoomType deleteRoomType();
	public RoomType editBranch(RoomType roomType);
	
}
