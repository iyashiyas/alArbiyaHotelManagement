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
	public Building addBuilding(Building building) {
		entityManager.persist(building);
		return building;
	 } 

	@SuppressWarnings("unchecked")
	@Override
	public List<Building> getAllBuilding(String branchId) {
		Query query = entityManager.createQuery("SELECT buildings from Branch branch join branch.buildings buildings where branch.id =:branchId", Building.class);
		query.setParameter("branchId", Long.parseLong(branchId));
		return query.getResultList();
	}
  
	@SuppressWarnings("unchecked")
	@Override
	public void editBuilding(Building building) {
		entityManager.persist(building);
	}
	 
}
