package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Role;
import org.alArbiyaHotelManagement.repository.RoleRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class RoleRepositoryImpl implements RoleRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public Role addRole(Role role) {
		entityManager.persist(role);
		return role; 
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Role> getAllRole() {
		Query query = entityManager.createQuery("SELECT role from Role role", Role.class);
		return query.getResultList();
	}
}
