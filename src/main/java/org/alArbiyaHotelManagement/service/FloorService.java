package org.alArbiyaHotelManagement.service;

 
import java.util.List;

import org.alArbiyaHotelManagement.model.Floor;

public interface FloorService {
	public Floor addFloor(Floor floor);
	public List<Floor> getAllFloor();
	public Floor deleteFloor();
	public Floor editFloor();
	public List<Floor> getAllFloorByBuildingId(String buildingId);
}
