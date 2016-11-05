package org.alArbiyaHotelManagement.service;

import java.util.Set;

 
import org.alArbiyaHotelManagement.model.Room;

public interface RoomService {

 public Room addRoom(Room room);
 
 public Set<Room> getAllRoom();
public Room deleteRoom();
public Room editRoom();

}
