package org.alArbiyaHotelManagement.repository.impl;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.springframework.stereotype.Repository;

@Repository
public class UnitRepositoryImpl implements UnitRepository{
	@PersistenceContext
	EntityManager entityManger;
	
	public Unit addUnit() {
		return null;
	}
	public Unit editUnit() {
		return null;
	}
	@Override
	public Set<Unit> getAllUnitWithCategory() {
		// TODO Auto-generated method stub
		return null;
	}
}
