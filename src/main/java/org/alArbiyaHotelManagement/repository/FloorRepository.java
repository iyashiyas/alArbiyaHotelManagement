package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Floor;

public interface FloorRepository {

	public Floor addFloor(Floor floor);
	public List<Floor> getAllFloor();
	public Floor editFloor();
	public Floor deleteFloor();
	public List<Floor> getAllFloorByBuildingId(String buildingID);
}
