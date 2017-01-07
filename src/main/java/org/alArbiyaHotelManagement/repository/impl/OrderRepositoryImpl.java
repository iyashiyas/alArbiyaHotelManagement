package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 


import org.alArbiyaHotelManagement.model.Notification;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.repository.OrderRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class OrderRepositoryImpl implements OrderRepository{
	
	enum ReadStatus {
		READ, UNREAD;
	}
	
	@PersistenceContext EntityManager entityManager; 
	
	public Orders addOrder() {
		return null;
	}
	public Orders editOrder() {
		return null;
	}
	@Override
	public List<Orders> GetAllOrder() {
		Query query = entityManager.createQuery("SELECT order from Orders order order by id desc", Orders.class);
		return query.getResultList();
	}
	@Override
	public void acceptOrder(Orders order, long roomId, String serviceItemName) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE Orders SET orderStatus = :status,acceptTime=:acceptTime where id = :id ");
		updateQuery.setParameter("status", order.getOrderStatus()); 
		updateQuery.setParameter("id", order.getId()); 
		updateQuery.setParameter("acceptTime", order.getAcceptTime()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		
		Notification notification = new Notification();
		notification.setOrderId(order.getId());
		notification.setRoomId(roomId);
		notification.setServiceItemName(serviceItemName);
		notification.setReadStatus(ReadStatus.UNREAD.name());
		this.entityManager.persist(notification);
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
	@Override
	public List<Orders> getRestaurantOrder() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='6' order by id desc", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> getLaundry() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='5' order by id desc", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> coffeeShopScreen() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='1' order by id desc", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> carRentalScreen() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='7' order by id desc", Orders.class);
		return query.getResultList();
	}
}
