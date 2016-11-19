package org.alArbiyaHotelManagement.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServices;
import org.alArbiyaHotelManagement.repository.ActionRepository;
import org.springframework.stereotype.Repository;

@Repository
public class ActionRepositoryImpl implements ActionRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	public Action addAction() {
		return null;
	}
	public Action editAction() {
		return null;
	}
	@Override
	public void hotelService(HotelServices hotelServices) {
		entityManager.persist(hotelServices);
	}
}
