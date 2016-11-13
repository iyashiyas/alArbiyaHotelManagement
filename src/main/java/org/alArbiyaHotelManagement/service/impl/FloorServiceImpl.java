package org.alArbiyaHotelManagement.service.impl;

import java.util.List;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.repository.FloorRepository;
 
import org.alArbiyaHotelManagement.service.FloorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FloorServiceImpl implements FloorService{

	@Autowired 
	private FloorRepository floorRepository;

	@Override
	public Floor addFloor(Floor floor) {
		if(floor.getFloorStatus()==null) {
			floor.setFloorStatus("DISABLED");
		}
		return floorRepository.addFloor(floor);
	}
	
	@Override
	public List<Floor> getAllFloor() {
		return floorRepository.getAllFloor();
	}

	@Override
	public Floor deleteFloor() {
		// TODO Auto-generated method stub
		return null;
	}

	 

	@Override
	public List<Floor> getAllFloorByBuildingId(String buildingId) {
		// TODO Auto-generated method stub
		return floorRepository.getAllFloorByBuildingId(buildingId);
	}

	@Override
	public Floor editFloor(Floor floor) { 
		if(floor.getFloorStatus()==null) {
			floor.setFloorStatus("DISABLED");
		}
		return floorRepository.editFloor(floor);
	}

	 
	 
}
