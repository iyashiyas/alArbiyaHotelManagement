package org.alArbiyaHotelManagement.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.repository.UserRepository;

public class UserRepositoryImpl implements UserRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public UserDetails addUserDetails(UserDetails userDetail) {
		entityManager.persist(userDetail);
		return userDetail;
	}
	
}
