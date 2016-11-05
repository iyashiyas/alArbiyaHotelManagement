package org.alArbiyaHotelManagement.service.impl;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Floor;
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
	public Set<Room> getAllRoom() {
		return roomRepository.getAllRoom();
	}
	
	public Room deleteRoom() {
		return null;
	}
	public  Room editRoom() {
		return null;
	}
}
