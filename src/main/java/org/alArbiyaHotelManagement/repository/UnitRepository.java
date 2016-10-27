package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitRepository {
	public Unit addUnit(Unit unit);
	public Unit editUnit(Unit unit);
	public Set<Unit> getAllUnitWithCategory(String categoryCode);
	public void disableUnit(long id, String status);
}
