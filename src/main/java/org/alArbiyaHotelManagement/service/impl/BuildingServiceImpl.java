package org.alArbiyaHotelManagement.service.impl;

import java.util.List;
import org.alArbiyaHotelManagement.model.Building;
 
import org.alArbiyaHotelManagement.repository.BuildingRepository;
import org.alArbiyaHotelManagement.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuildingServiceImpl implements BuildingService{

	@Autowired 
	private BuildingRepository buildingRepository;
	 
	public void addBuilding(Building building) {
		if(building.getBuildingStatus()==null) {
			building.setBuildingStatus("DISABLED");
		}
	  buildingRepository.addBuilding(building);
	}
	
	@Override
	public List<Building> getAllBuildings() {
		return buildingRepository.getAllBuildings();
	}

	@Override
	public List<Building> getAllBuilding(String branchId) {
		return buildingRepository.getAllBuilding(branchId);
	}

	@Override
	public Building editBuilding(Building building) {
		// TODO Auto-generated method stub
		if(building.getBuildingStatus()==null) {
			building.setBuildingStatus("DISABLED");
		}
	
		return buildingRepository.editBuilding(building);
	}
	 
}
