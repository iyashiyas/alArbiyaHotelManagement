package org.alArbiyaHotelManagement.repository;

import java.util.List;
import java.util.Set;

 
 
import org.alArbiyaHotelManagement.model.Floor;

public interface FloorRepository {

	public Floor addFloor(Floor floor);
	
	public Set<Floor> getAllFloor();
	
	public Floor editFloor();
	public Floor deleteFloor();
	public List<Floor> getAllFloorByBuildingId(String buildingID);
}
