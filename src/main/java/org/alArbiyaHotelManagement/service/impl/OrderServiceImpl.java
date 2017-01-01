package org.alArbiyaHotelManagement.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Orders;
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
	public void acceptOrder(Orders order,long id) {
		// TODO Auto-generated method stub
		order.setId(id);
		order.setOrderStatus("ORDER ACCEPT");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  order.setAcceptTime(dateFormat.format(date));
	 orderRepository.acceptOrder(order);
	}

	@Override
	public void readyForDelivery(Orders order,long id) {
		// TODO Auto-generated method stub
		order.setId(id);
		order.setOrderStatus("ORDER FOR DELIVERY");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
	  order.setReadyForDeliveryTime(dateFormat.format(date));
	 orderRepository.readyForDelivery(order);
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
		// TODO Auto-generated method stub
		return orderRepository.coffeeShopScreen();
	}

	@Override
	public List<Orders> carRentalScreen() {
		// TODO Auto-generated method stub
		return orderRepository.carRentalScreen();
	}
	
 
	
}
