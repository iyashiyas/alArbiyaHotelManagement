package org.alArbiyaHotelManagement.repository.impl;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 


import org.alArbiyaHotelManagement.model.Role;
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
		List<Role> roles = user.getRoles(); 
		user.setRoles(new ArrayList<Role>());
		if(roles != null ) {
			for(Role role : roles){
				if(role.getId() != 0)
				user.getRoles().add(role);
			}
		}
		entityManager.merge(user);
		return user;
	 
	}

 
	 
	}

 
