package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.repository.FloorRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class FloorRepositoryImpl implements FloorRepository{


	@PersistenceContext
	EntityManager entityManager;

	
	public Floor addFloor(Floor floor)
	{
		entityManager.persist(floor);
		return floor;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Set<Floor> getAllFloor() {
		Query query = entityManager.createQuery("SELECT flr from Floor flr", Floor.class);
		return new HashSet<Floor>(query.getResultList());
	}
 

	@Override
	public Floor editFloor() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Floor deleteFloor() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Floor> getAllFloorByBuildingId(String buildingId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT floor from Floor where buildingId =:buildingId", Floor.class);
		query.setParameter("buildingId", buildingId);
		return query.getResultList();

	}
	 
 
}
