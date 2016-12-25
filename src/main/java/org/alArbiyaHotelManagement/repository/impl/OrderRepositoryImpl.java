package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 
import org.alArbiyaHotelManagement.model.Order;
import org.alArbiyaHotelManagement.repository.OrderRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class OrderRepositoryImpl implements OrderRepository{
	
	@PersistenceContext EntityManager entityManager; 
	
	public Order addOrder() {
		return null;
	}
	public Order editOrder() {
		return null;
	}
	@Override
	public List<Order> GetAllOrder() {
		Query query = entityManager.createQuery("SELECT order from Order order order by id", Order.class);
		return query.getResultList();
	}
}
