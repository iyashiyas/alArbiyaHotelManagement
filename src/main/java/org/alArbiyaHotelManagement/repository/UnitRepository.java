package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;

public interface UnitRepository {
	public Unit addUnit();
	public Unit editUnit();
	public Set<UnitCategory> getAllUnitWithCategory();
}
