package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;

public interface UnitService {
	public Unit addUnit();
	public Unit editUnit();
	
	public Set<Unit> getAllUnitWithCategory();
}
