package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitLanguage;
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

	@Override
	public Building editBuilding(Building building) {
		/*List<Floor> floors = new ArrayList<Floor>();
		for(Floor floor: building.getFloors()) {
			floor.setBuilding(building);
			floors.add(floor);
		}*/
	     entityManager.merge(building);
		return building;
	}
	
/*	private void deleteChild(Building building) {
		Query query = entityManager.createQuery("SELECT building from Building building where id =:id", Building.class);
		query.setParameter("id", building.getId());
		building = (Building) query.getResultList().get(0);
		for(Branch branch: building.getBranch()) {
			entityManager.remove(branch);
		}*/
	}

	 
	 
 
