package org.alArbiyaHotelManagement.service;

 
import java.util.List;
import java.util.Set;
 

import org.alArbiyaHotelManagement.model.Floor;

public interface FloorService {
	public Floor addFloor(Floor floor);
	 public Set<Floor> getAllFloor();
	
	public Floor deleteFloor();
	public Floor editFloor();
	
	 
	public List<Floor> getAllFloorByBuildingId(String buildingId);
	 
}
