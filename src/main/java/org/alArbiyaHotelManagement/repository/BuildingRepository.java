package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Building;
  
public interface BuildingRepository {

	public Building addBuilding(Building building);
	public List<Building> getAllBuildings();
	public List<Building> getAllBuilding(String branchId);
	public Building editBuilding(Building building);
	
}
