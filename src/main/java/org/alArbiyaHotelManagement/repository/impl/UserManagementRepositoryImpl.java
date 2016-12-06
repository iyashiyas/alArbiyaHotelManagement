package org.alArbiyaHotelManagement.repository.impl;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 


import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.UserManagementRepository;
 
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserManagementRepositoryImpl implements UserManagementRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
 
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllusers() {
		Query query = entityManager.createQuery("SELECT user from User user", User.class);
		return query.getResultList();
	 
	}

	@Override
	public User addUser(User user) {
		entityManager.persist(user);
		return user; 
	}

 
	 
	}

 
