package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 








import org.alArbiyaHotelManagement.model.HouseKeeping;
import org.alArbiyaHotelManagement.model.Notification;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReceptionOrder;
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
	
	@Override
	public void accpetParkingRequest(ParkingOrder parkingOrder, long roomId, String serviceItemName,long parkingId,Parking parking) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE ParkingOrder SET order_status = :status,acceptTime=:acceptTime where id = :id ");
		updateQuery.setParameter("status", parkingOrder.getOrderStatus()); 
		updateQuery.setParameter("id", parkingOrder.getId());  
		updateQuery.setParameter("acceptTime", parkingOrder.getAcceptTime());  
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		
		Notification notification = new Notification();
		notification.setOrderId(parkingOrder.getId());
		notification.setRoomId(roomId);
		notification.setServiceItemName(serviceItemName);
		notification.setReadStatus(ReadStatus.UNREAD.name());
		this.entityManager.persist(notification);
		 
		Query updateparkingQuery = entityManager.createQuery("UPDATE Parking SET parkingStatus=:status where id = :parkingId ");
		updateparkingQuery.setParameter("status", parking.getParkingStatus());  
		updateparkingQuery.setParameter("parkingId", parkingId);   
		entityManager.joinTransaction();
		updateparkingQuery.executeUpdate();
	}
	@Override
	public List<HouseKeeping> housekeepingScreenOrder() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT housekeeping from HouseKeeping housekeeping order by id desc", HouseKeeping.class);
		return query.getResultList();
	}
	@Override
	public void accpetParkingRequest(long id, long roomId,
			String serviceItemName,HouseKeeping houseKeeping) { 
		Query updateparkingQuery = entityManager.createQuery("UPDATE HouseKeeping SET status = :status where id = :id ");
		updateparkingQuery.setParameter("status", "ACCEPT");  
		updateparkingQuery.setParameter("id", id);  
		entityManager.joinTransaction();
		updateparkingQuery.executeUpdate();
		
		
		Notification notification = new Notification();
		notification.setOrderId(id);
		notification.setRoomId(roomId);
		notification.setServiceItemName(serviceItemName);
		notification.setReadStatus(ReadStatus.UNREAD.name());
		this.entityManager.persist(notification);
	}
	
	@Override
	public List<ReceptionOrder> receptionScreen() { 
		Query query = entityManager.createQuery("SELECT receptionOrder from ReceptionOrder receptionOrder order by id desc", ReceptionOrder.class);
		return query.getResultList();
	}
	@Override
	public void accpetreceptionRequest(long id, long roomId,
			String serviceItemName, ReceptionOrder receptionOrder) {
		Query updateparkingQuery = entityManager.createQuery("UPDATE ReceptionOrder SET orderStatus=:status,acceptTime=:acceptTime where id = :id ");
		updateparkingQuery.setParameter("status", "ACCEPT");  
		updateparkingQuery.setParameter("acceptTime",receptionOrder.getAcceptTime());  
		updateparkingQuery.setParameter("id", id);  
		entityManager.joinTransaction();
		updateparkingQuery.executeUpdate();
		 
		Notification notification = new Notification();
		notification.setOrderId(id);
		notification.setRoomId(roomId);
		notification.setServiceItemName(receptionOrder.getRequestType());
		notification.setReadStatus(ReadStatus.UNREAD.name());
		this.entityManager.persist(notification);
	}
	
	@Override
	public List<Orders> CoffeeShopOrderRequest() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='1' and order.orderStatus='ORDERED'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> CoffeeShopOrderRequestAccept() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='1' and order.orderStatus='ORDER ACCEPT'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> CoffeeShopOrderDeliverd() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='1' and order.orderStatus='DELIVERED'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> restaurantOrderRequest() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='6' and order.orderStatus='ORDERED'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> restaurantOrderRequestAccept() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='6' and order.orderStatus='ORDER ACCEPT'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> restaurantOrderDeliverd() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='6' and order.orderStatus='DELIVERED'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> laundryOrderRequest() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='5' and order.orderStatus='ORDERED'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> laundryOrderRequestAccept() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='5' and order.orderStatus='ORDER ACCEPT'", Orders.class);
		return query.getResultList();
	}
	@Override
	public List<Orders> laundryOrderDeliverd() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT order from Orders order where order.hotelServiceCategories='5' and order.orderStatus='DELIVERED'", Orders.class);
		return query.getResultList();
	}
	 
	@Override
	public List<HouseKeeping> houseKeepingOrderRequestAccept() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT housekeeping from HouseKeeping housekeeping where status='ACCEPT' ", HouseKeeping.class);
		return query.getResultList();
	}
	@Override
	public List<ReceptionOrder> receptionOrderRequestAccept() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT receptionOrder from ReceptionOrder receptionOrder where orderStatus='ACCEPT'", ReceptionOrder.class);
		return query.getResultList();
	}
	 
}
