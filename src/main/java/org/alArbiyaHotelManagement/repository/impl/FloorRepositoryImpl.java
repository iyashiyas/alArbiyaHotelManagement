package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.repository.FloorRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class FloorRepositoryImpl implements FloorRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	public Floor addFloor(Floor floor) {
		entityManager.persist(floor);
		return floor;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Floor> getAllFloor() {
		Query query = entityManager.createQuery("SELECT flr from Floor flr", Floor.class);
		return query.getResultList();
	}
 
	@Override
	public Floor editFloor() {
		return null;
	}

	@Override
	public Floor deleteFloor() {
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Floor> getAllFloorByBuildingId(String buildingId) {
		Query query = entityManager.createQuery("SELECT floor from Floor where buildingId =:buildingId", Floor.class);
		query.setParameter("buildingId", buildingId);
		return query.getResultList();

	}
	 
 
}
