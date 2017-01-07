package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Orders;

public interface OrderService {
	public Orders addOrder();
	public Orders editOrder();
	public List<Orders> GetAllOrder();
	public void acceptOrder(Orders order,long id, long roomId, String serviceItemName);
	public void readyForDelivery(Orders order,long id);
	public void delivered(Orders order,long id);
	public List<Orders> getRestaurantOrder();
	public List<Orders> getLaundry();
	public List<Orders> coffeeShopScreen();
	public List<Orders> carRentalScreen();
}
