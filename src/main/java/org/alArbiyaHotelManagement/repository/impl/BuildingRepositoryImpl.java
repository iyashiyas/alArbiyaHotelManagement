package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.repository.BuildingRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class BuildingRepositoryImpl implements BuildingRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Building> getAllBuildings() {
		Query query = entityManager.createQuery("SELECT build from Building build", Building.class);
		return query.getResultList();
	}
	
	@Override
	public Building addBuilding(Building building)
	{
		entityManager.persist(building);
		return building;
		 
	} 

	@Override
	public Building editBuilding() {
		return null;
	}

	@Override
	public Building deleteBuilding() {
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Building> getAllBuilding(String branchId) {
		Query query = entityManager.createQuery("SELECT build from Building building where branchId =:branchId", Building.class);
		query.setParameter("branchId", branchId);
		return query.getResultList();
	}
	 
 
}
