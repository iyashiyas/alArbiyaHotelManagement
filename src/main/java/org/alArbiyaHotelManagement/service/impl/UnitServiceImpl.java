package org.alArbiyaHotelManagement.service.impl;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UnitServiceImpl implements UnitService {
	
	@Autowired 
	private UnitRepository unitRepository;
	
	public Unit editUnit() {
		return null;
	}
	public Set<Unit> getAllUnitWithCategory(String categoryCode) {
		return unitRepository.getAllUnitWithCategory(categoryCode);
	}
	@Override
	public Unit addUnit(Unit unit) {
		// TODO Auto-generated method stub
		return unitRepository.addUnit(unit);
	}
	
}
