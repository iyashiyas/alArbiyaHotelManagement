package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Order;

public interface OrderService {
	public Order addOrder();
	public Order editOrder();
	public List<Order> GetAllOrder();
}
