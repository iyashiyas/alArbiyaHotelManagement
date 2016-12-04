package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

 







import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.UserManagementRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UserManagementRepositoryImpl implements UserManagementRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Autowired
    private SessionFactory sessionFactory;
     
    private Session openSession() {
        return sessionFactory.getCurrentSession();
    }
	
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

	@SuppressWarnings("unchecked")
	@Override
	public User getUser(String userName) {
		// TODO Auto-generated method stub
		 List<User> userList = new ArrayList<User>();
	        Query query = (Query) openSession().createQuery("from User u where u.userName = :userName");
	        query.setParameter("login", userName);
	        userList = ((org.hibernate.Query) query).list();
	        if (userList.size() > 0)
	            return userList.get(0);
	        else
	            return null;    
	}
	
	}

 
