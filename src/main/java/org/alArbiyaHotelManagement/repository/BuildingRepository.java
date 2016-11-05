package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Building;
  
public interface BuildingRepository {

	public Building addBuilding(Building building);
	public List<Building> getAllBuildings();
	public Building editBuilding();
	public Building deleteBuilding();
	public List<Building> getAllBuilding(String branchId);
	
}
