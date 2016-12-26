package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Orders;

public interface OrderService {
	public Orders addOrder();
	public Orders editOrder();
	public List<Orders> GetAllOrder();
	public void acceptOrder(Orders order,long id);
	public void readyForDelivery(Orders order,long id);
	public void delivered(Orders order,long id);
}
