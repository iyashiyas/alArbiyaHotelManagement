package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Order;

public interface OrderRepository {
	public Order addOrder();
	public Order editOrder();
	public List<Order> GetAllOrder();
}
