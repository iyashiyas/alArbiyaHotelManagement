package org.alArbiyaHotelManagement.service;

import java.util.List;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Building;
 

public interface BuildingService {
	public Building addBuilding(Building building);
	
	public Set<Building> getAllBuildings();
	
	public Building deleteBuilding();
	public Building editBuilding();

	public List<Building> getAllBuilding(String branchId);
}
