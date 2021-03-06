package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

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
	
	public Unit editUnit(Unit unit) {
		if(unit.getUnitStatus()==null) {
			unit.setUnitStatus("DISABLED");
		}
		return unitRepository.editUnit(unit);
	}
	public List<Unit> getAllUnitWithCategory(String categoryCode) {
		return unitRepository.getAllUnitWithCategory(categoryCode);
	}
	@Override
	public Unit addUnit(Unit unit) {
		if(unit.getUnitStatus()==null) {
			unit.setUnitStatus("DISABLED");
		}
		return unitRepository.addUnit(unit);
	}
	@Override
	public void disableUnit(long id, String status) {
		unitRepository.disableUnit(id, status);
	}
	@Override
	public List<Unit> getAllUnits() {
		// TODO Auto-generated method stub
		return unitRepository.getAllUnits();
	}
	@Override
	public List<UnitCategory> UnitCategories() {
		// TODO Auto-generated method stub
		return unitRepository.UnitCategories();
	}
	@Override
	public UnitCategory addUnitCategory(UnitCategory unitCategory) {
		// TODO Auto-generated method stub
		if(unitCategory.getUnitCategoryStatus()==null) {
			unitCategory.setUnitCategoryStatus("DISABLED");
		}
		return unitRepository.addUnitCategory(unitCategory);
	}
	
	
}
