package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Language;
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
	public Set<Building> getAllBuildings() {
		Query query = entityManager.createQuery("SELECT build from Building build", Building.class);
		return new HashSet<Building>(query.getResultList());
	}
	
	@Override
	public Building addBuilding(Building building)
	{
		entityManager.persist(building);
		return building;
		 
	} 

	@Override
	public Building editBuilding() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Building deleteBuilding() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Building> getAllBuilding(String branchId) {
		Query query = entityManager.createQuery("SELECT build from Building building where branchId =:branchId", Building.class);
		query.setParameter("branchId", branchId);
		return query.getResultList();
	}
	 
 
}
