package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Role;
import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.RoleRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class RoleRepositoryImpl implements RoleRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	 @Autowired
	    private SessionFactory sessionFactory;
	     
	    private Session getCurrentSession() {
	        return sessionFactory.getCurrentSession();
	    }
	
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

	@Override
	public Role getRole(int id) {
		// TODO Auto-generated method stub
		Role role = (Role) getCurrentSession().load(Role.class, id);
        return role;
	}
	 
}
