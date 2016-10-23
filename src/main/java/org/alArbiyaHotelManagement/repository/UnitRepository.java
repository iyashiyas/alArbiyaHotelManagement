package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitRepository {
	public Unit addUnit();
	public Unit editUnit();
	public Set<Unit> getAllUnitWithCategory();
}
