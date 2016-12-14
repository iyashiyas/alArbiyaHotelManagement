package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.model.UserDetails;
import org.alArbiyaHotelManagement.repository.UserRepository;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public UserDetails addUserDetails(UserDetails userDetail) {
		entityManager.persist(userDetail);
		return userDetail;
	}

	@Override
	public UserDetails getUserDetails(String memberId) {
		TypedQuery<UserDetails> query = this.entityManager.createQuery("SELECT userDetails from UserDetails userDetails WHERE userDetails.memberId=:memberId", UserDetails.class);
		List<UserDetails> userDetails = query.setParameter("memberId", memberId).getResultList();
		return userDetails.isEmpty() ? null : userDetails.get(0);
	} 
	@Override
	public User loadUserByUsername(String username) {
		TypedQuery<User> query = this.entityManager.createQuery("SELECT users from USERS  users WHERE users.username=:username", User.class);
		List<User> users = query.setParameter("username", username).getResultList();
		return users.isEmpty() ? null : users.get(0);
	}
	
}
