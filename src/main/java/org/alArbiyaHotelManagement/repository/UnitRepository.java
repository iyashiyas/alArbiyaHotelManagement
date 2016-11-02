package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitRepository {
	public Unit addUnit(Unit unit);
	public Unit editUnit(Unit unit);
	public List<Unit> getAllUnitWithCategory(String categoryCode);
	public void disableUnit(long id, String status);
}
