package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;

public interface UnitService {
	public Unit addUnit(Unit unit);
	public Unit editUnit(Unit unit);
	public List<Unit> getAllUnitWithCategory(String categoryCode);
	public void disableUnit(long id, String status);
	public List<Unit> getAllUnits();
	public List<UnitCategory> UnitCategories();
	public UnitCategory addUnitCategory(UnitCategory unitCategory);
	
}
