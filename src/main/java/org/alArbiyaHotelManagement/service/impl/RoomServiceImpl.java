package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.RoomRepository;
import org.alArbiyaHotelManagement.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired 
	private RoomRepository roomRepository;
	public Room addRoom(Room room) {
		if(room.getRoomStatus()==null) {
			room.setRoomStatus("DISABLED");
		}
		return roomRepository.addRoom(room);
	}

	@Override
	public List<Room> getAllRoom() {
		return roomRepository.getAllRoom();
	}
	
	public Room deleteRoom() {
		return null;
	}

	@Override
	public Room editRoom(Room room) {
		if(room.getRoomStatus()==null) {
			room.setRoomStatus("DISABLED");
		}
		return roomRepository.editRoom(room);
	}

	@Override
	public List<Room> getAllRoomsByFloor(String floorId) {
		// TODO Auto-generated method stub
		return roomRepository.getAllRoomsByFloor(floorId);
	}
	 
}
