package org.alArbiyaHotelManagement.service.impl;

import java.util.List;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.RoomType;
 
import org.alArbiyaHotelManagement.repository.RoomTypeRepository;
import org.alArbiyaHotelManagement.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomTypeServiceImpl implements RoomTypeService{
	@Autowired 
	private RoomTypeRepository roomTypeRepository;
	
	public RoomType addRoomType(RoomType roomType) {
		if(roomType.getRoomTypeStatus()==null) {
			roomType.setRoomTypeStatus("DISABLED");
		}
		return roomTypeRepository.addRoomType(roomType);
	}

	@Override
	public List<RoomType> getAllRoomType() {
		return roomTypeRepository.getAllRoomType();
	}

	@Override
	public RoomType deleteRoomType() {
		return null;
	}


	@Override
	public RoomType editRoomType() {
		return null;
	}


	@Override
	public RoomType editRoomType(RoomType roomType) {
		if(roomType.getRoomTypeStatus()==null) {
			roomType.setRoomTypeStatus("DISABLED");
		}
	 
		return roomTypeRepository.editBranch(roomType);
	}
	 
 
}
