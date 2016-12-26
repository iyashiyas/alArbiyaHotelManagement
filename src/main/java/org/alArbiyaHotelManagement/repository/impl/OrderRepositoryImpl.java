package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.repository.OrderRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class OrderRepositoryImpl implements OrderRepository{
	
	@PersistenceContext EntityManager entityManager; 
	
	public Orders addOrder() {
		return null;
	}
	public Orders editOrder() {
		return null;
	}
	@Override
	public List<Orders> GetAllOrder() {
		Query query = entityManager.createQuery("SELECT order from Orders order order by id", Orders.class);
		return query.getResultList();
	}
	@Override
	public void acceptOrder(Orders order) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE Orders SET orderStatus = :status,acceptTime=:acceptTime where id = :id ");
		updateQuery.setParameter("status", order.getOrderStatus()); 
		updateQuery.setParameter("id", order.getId()); 
		updateQuery.setParameter("acceptTime", order.getAcceptTime()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}
	@Override
	public void readyForDelivery(Orders order) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE Orders SET orderStatus = :status,readyForDeliveryTime=:readyForDeliveryTime where id = :id ");
		updateQuery.setParameter("status", order.getOrderStatus()); 
		updateQuery.setParameter("id", order.getId()); 
		updateQuery.setParameter("readyForDeliveryTime", order.getReadyForDeliveryTime()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}
	@Override
	public void delivered(Orders order) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE Orders SET orderStatus = :status,deliveredTime=:deliveredTime where id = :id ");
		updateQuery.setParameter("status", order.getOrderStatus()); 
		updateQuery.setParameter("id", order.getId()); 
		updateQuery.setParameter("deliveredTime", order.getDeliveredTime()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}
}
