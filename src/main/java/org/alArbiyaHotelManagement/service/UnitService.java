package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;

public interface UnitService {
	public Unit addUnit();
	public Unit editUnit();
	
	public Set<UnitCategory> getAllUnitWithCategory(String categoryCode);
}
