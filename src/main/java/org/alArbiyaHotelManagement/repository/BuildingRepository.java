package org.alArbiyaHotelManagement.repository;

import java.util.List;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Building;
  
public interface BuildingRepository {

	public Building addBuilding(Building building);
	public Set<Building> getAllBuildings();
	public Building editBuilding();
	public Building deleteBuilding();
	public List<Building> getAllBuilding(String branchId);
	
}
