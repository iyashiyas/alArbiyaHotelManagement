package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.RoomType;

public interface RoomTypeService {
	public RoomType addRoomType(RoomType roomType);
	public List<RoomType> getAllRoomType();
	public RoomType deleteRoomType();
	public RoomType editRoomType();
	public RoomType editRoomType(RoomType roomType);
}
