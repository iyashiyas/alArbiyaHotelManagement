package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitService {
	public Unit addUnit(Unit unit);
	public Unit editUnit(Unit unit);
	public List<Unit> getAllUnitWithCategory(String categoryCode);
	public void disableUnit(long id, String status);
	public List<Unit> getAllUnits();
	
}
