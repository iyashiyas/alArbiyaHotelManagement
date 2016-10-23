package org.alArbiyaHotelManagement.service.impl;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UnitServiceImpl implements UnitService {
	
	@Autowired 
	private UnitRepository unitRepository;
	
	public Unit addUnit() {
		return null;
	}
	public Unit editUnit() {
		return null;
	}
	@Override
	public Set<UnitCategory> getAllUnitWithCategory() {
		return unitRepository.getAllUnitWithCategory();
	}
}
