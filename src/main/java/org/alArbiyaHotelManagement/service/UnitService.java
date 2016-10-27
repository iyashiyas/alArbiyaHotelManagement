package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitService {
	public Unit addUnit(Unit unit);
	public Unit editUnit(Unit unit);
	public Set<Unit> getAllUnitWithCategory(String categoryCode);
	public void disableUnit(long id, String status);
}
