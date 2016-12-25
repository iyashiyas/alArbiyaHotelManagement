package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.model.Order;
import org.alArbiyaHotelManagement.repository.OrderRepository;
import org.alArbiyaHotelManagement.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
 
	@Autowired
	OrderRepository orderRepository;
	
	
	@Override
	public Order addOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order editOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> GetAllOrder() {
		// TODO Auto-generated method stub
		return orderRepository.GetAllOrder();
	}
	
}
