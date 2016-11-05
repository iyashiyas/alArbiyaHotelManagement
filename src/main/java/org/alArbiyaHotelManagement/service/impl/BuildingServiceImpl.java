package org.alArbiyaHotelManagement.service.impl;

import java.util.List;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Building;
 
import org.alArbiyaHotelManagement.repository.BuildingRepository;
import org.alArbiyaHotelManagement.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuildingServiceImpl implements BuildingService{

	@Autowired 
	private BuildingRepository buildingRepository;
	 
	public Building addBuilding(Building building) {
		
		if(building.getBuildingStatus()==null) {
			building.setBuildingStatus("DISABLED");
		}
		return buildingRepository.addBuilding(building);
	}
	
	@Override
	public Set<Building> getAllBuildings() {
		return buildingRepository.getAllBuildings();
	}


	@Override
	public Building deleteBuilding() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Building editBuilding() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Building> getAllBuilding(String branchId) {
		return buildingRepository.getAllBuilding(branchId);
	}
	 
}
