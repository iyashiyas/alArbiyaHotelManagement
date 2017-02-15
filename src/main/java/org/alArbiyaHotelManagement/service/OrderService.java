package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.HouseKeeping;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReceptionOrder;

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
	public void accpetParkingRequest(ParkingOrder parkingOrder, long id, long roomId, String serviceItemName,long parkingId,String requestType);
	public List<HouseKeeping> housekeepingScreenOrder();
	public void accpethouseKeepingRequest(long id, long roomId,
			String serviceItemName,HouseKeeping houseKeeping);
	public List<ReceptionOrder> receptionScreen();
	public void accpetreceptionRequest(long id, long roomId,
			String serviceItemName, ReceptionOrder receptionOrder);
	public List<Orders> CoffeeShopOrderRequest();
	public List<Orders> CoffeeShopOrderRequestAccept();
	public List<Orders> CoffeeShopOrderDeliverd();
	public List<Orders> restaurantOrderRequest();
	public List<Orders> restaurantOrderRequestAccept();
	public List<Orders> restaurantOrderDeliverd();
	public List<Orders> laundryOrderRequest();
	public List<Orders> laundryOrderRequestAccept();
	public List<Orders> laundryOrderDeliverd();
 
	public List<HouseKeeping> houseKeepingOrderRequestAccept();
	public List<ReceptionOrder> receptionOrderRequestAccept();
 
	 
	 
	
}
