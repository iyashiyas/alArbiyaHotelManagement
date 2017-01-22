package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;

public interface OrderRepository {
	public Orders addOrder();
	public Orders editOrder();
	public List<Orders> GetAllOrder();
	public void acceptOrder(Orders order, long roomId, String serviceItemName);
	public void readyForDelivery(Orders order);
	public void delivered(Orders order);
	public List<Orders> getRestaurantOrder();
	public List<Orders> getLaundry();
	public List<Orders> coffeeShopScreen();
	public List<Orders> carRentalScreen();
	public void accpetParkingRequest(ParkingOrder parkingOrder, long roomId, String serviceItemName,long parkingId,Parking parking);
	
}
