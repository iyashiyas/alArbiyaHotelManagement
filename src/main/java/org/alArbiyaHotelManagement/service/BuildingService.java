package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Building;

public interface BuildingService {
	public Building addBuilding(Building building);
	public List<Building> getAllBuildings();
	public List<Building> getAllBuilding(String branchId);
	public void editBuilding(Building building);
}
