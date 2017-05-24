package org.alArbiyaHotelManagement.service.impl;

import java.text.DateFormat;
 
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
 



import org.alArbiyaHotelManagement.model.HouseKeeping;
 
import org.alArbiyaHotelManagement.model.NotificationDeliveryBoy;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReadyForDelivery;
import org.alArbiyaHotelManagement.model.ReceptionOrder;
import org.alArbiyaHotelManagement.repository.OrderRepository;
import org.alArbiyaHotelManagement.service.OrderService;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
 
	@Autowired
	OrderRepository orderRepository;
	
	
	@Override
	public Orders addOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Orders editOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> GetAllOrder() {
		// TODO Auto-generated method stub
		return orderRepository.GetAllOrder();
	}

	@Override
	public void acceptOrder(Orders order,long id, long roomId, String serviceItemName) {
		// TODO Auto-generated method stub
		order.setId(id);
		order.setOrderStatus("ORDER ACCEPT");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  order.setAcceptTime(dateFormat.format(date));
	 orderRepository.acceptOrder(order, roomId, serviceItemName);
	}

	@Override
	public void readyForDelivery(Orders order,long id,String deliveryBoyName,String roomName,long roomId) {
		// TODO Auto-generated method stub
		order.setId(id);
		order.setOrderStatus("ORDER FOR DELIVERY");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  order.setReadyForDeliveryTime(dateFormat.format(date));
	 orderRepository.readyForDelivery(order,deliveryBoyName,roomName,roomId);
	}

	@Override
	public void delivered(Orders order,long id) {
		// TODO Auto-generated method stub
		order.setId(id);
		order.setOrderStatus("DELIVERED");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  order.setDeliveredTime(dateFormat.format(date));
	 orderRepository.delivered(order);
	}

	@Override
	public List<Orders> getRestaurantOrder() {
		// TODO Auto-generated method stub
		return orderRepository.getRestaurantOrder();
	}

	@Override
	public List<Orders> getLaundry() {
		// TODO Auto-generated method stub
		return orderRepository.getLaundry();
	}

	@Override
	public List<Orders> coffeeShopScreen() {
		  
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		Calendar cal = Calendar.getInstance();
		cal = Calendar.getInstance();
	       cal.add(Calendar.HOUR, -1);
		String minushour=dateFormat.format(cal.getTime());
		System.out.println(minushour);
		return orderRepository.coffeeShopScreen(minushour);
		
	}

	@Override
	public List<Orders> carRentalScreen() {
		// TODO Auto-generated method stub
		return orderRepository.carRentalScreen();
	}

	@Override
	public void accpetParkingRequest(ParkingOrder parkingOrder,long id,long roomId, String serviceItemName,long parkingId,String requestType) {
		parkingOrder.setId(id);
		Parking parking= new Parking();
		System.out.println(requestType);
		if(requestType.equals("CHECKOUT"))
		{
			parking.setParkingStatus("AVAILABLE");
		}
		else if(requestType.equals("OUT"))
		{
			parking.setParkingStatus("OUT"); 
		}
		parkingOrder.setOrderStatus("ORDER ACCEPT");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		parkingOrder.setAcceptTime(dateFormat.format(date));
	 orderRepository.accpetParkingRequest(parkingOrder, roomId, serviceItemName,parkingId,parking);
		 }

	@Override
	public List<HouseKeeping> housekeepingScreenOrder() {
		// TODO Auto-generated method stub
		return orderRepository.housekeepingScreenOrder();
	}

	@Override
	public void accpethouseKeepingRequest(long id, long roomId,
			String serviceItemName,String roomName, String deliveryBoyName,HouseKeeping houseKeeping) {
		 orderRepository.accpethouseKeepingRequest(id,roomId, serviceItemName,roomName,deliveryBoyName,houseKeeping);
	}

	@Override
	public List<ReceptionOrder> receptionScreen() {
		// TODO Auto-generated method stub
		return orderRepository.receptionScreen();
	}

	@Override
	public void accpetreceptionRequest(long id, long roomId,
			String serviceItemName, ReceptionOrder receptionOrder) {
		
		 if(serviceItemName.equals("CHECKOUT"))
		 {
			 receptionOrder.setRequestType("CHECKOUT");
		 }
		 else
		 {
			 receptionOrder.setRequestType("question");
		 }
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			receptionOrder.setAcceptTime(dateFormat.format(date));
		 orderRepository.accpetreceptionRequest(id,roomId, serviceItemName,receptionOrder);
		
	}

	@Override
	public List<Orders> CoffeeShopOrderRequest() {
		// TODO Auto-generated method stub
		return orderRepository.CoffeeShopOrderRequest();
	}

	@Override
	public List<Orders> CoffeeShopOrderRequestAccept() {
		// TODO Auto-generated method stub
		return orderRepository.CoffeeShopOrderRequestAccept();
	}

	@Override
	public List<Orders> CoffeeShopOrderDeliverd() {
		// TODO Auto-generated method stub
		return orderRepository.CoffeeShopOrderDeliverd();
	}

	@Override
	public List<Orders> restaurantOrderRequest() {
		// TODO Auto-generated method stub
		return orderRepository.restaurantOrderRequest();
	}

	@Override
	public List<Orders> restaurantOrderRequestAccept() {
		// TODO Auto-generated method stub
		return orderRepository.restaurantOrderRequestAccept();
	}

	@Override
	public List<Orders> restaurantOrderDeliverd() {
		// TODO Auto-generated method stub
		return orderRepository.restaurantOrderDeliverd();
	}

	@Override
	public List<Orders> laundryOrderRequest() {
		// TODO Auto-generated method stub
		return orderRepository.laundryOrderRequest();
	}

	@Override
	public List<Orders> laundryOrderRequestAccept() {
		// TODO Auto-generated method stub
		return orderRepository.laundryOrderRequestAccept();
	}

	@Override
	public List<Orders> laundryOrderDeliverd() {
		// TODO Auto-generated method stub
		return orderRepository.laundryOrderDeliverd();
	}

 

	@Override
	public List<HouseKeeping> houseKeepingOrderRequestAccept() {
		// TODO Auto-generated method stub
		return orderRepository.houseKeepingOrderRequestAccept();
	}

	@Override
	public List<ReceptionOrder> receptionOrderRequestAccept() {
		// TODO Auto-generated method stub
		return orderRepository.receptionOrderRequestAccept();
	}

	@Override
	public List<ReadyForDelivery> readyForDeliveryScreen(String name) {
		// TODO Auto-generated method stub
		return orderRepository.readyForDeliveryScreen(name);
	}

	@Override
	public ReadyForDelivery deliveryBoyAccept(ReadyForDelivery readyForDelivery, long orderId) {
		// TODO Auto-generated method stub
		  readyForDelivery.setStatus("ACCEPTREQUEST");
		return orderRepository.deliveryBoyAccept(readyForDelivery,orderId);
		 
	}

	@Override
	public List<NotificationDeliveryBoy> getNotificationDeliveryBoy(String name) {
		// TODO Auto-generated method stub
		return orderRepository.getNotificationDeliveryBoy(name);
	}

	@Override
	public void updateNotificationsDeliveryBoy(String name) {
		orderRepository.updateNotificationsDeliveryBoy(name);
		
	}

	 
	 
 
	
}
