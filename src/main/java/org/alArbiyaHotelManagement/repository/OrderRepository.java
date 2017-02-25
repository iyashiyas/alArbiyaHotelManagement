package org.alArbiyaHotelManagement.repository;

import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.model.HouseKeeping;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReadyForDelivery;
import org.alArbiyaHotelManagement.model.ReceptionOrder;
import org.joda.time.DateTime;

public interface OrderRepository {
	public Orders addOrder();
	public Orders editOrder();
	public List<Orders> GetAllOrder();
	public void acceptOrder(Orders order, long roomId, String serviceItemName);
	public void readyForDelivery(Orders order,String deliveryBoyName,String roomName,long roomId);
	public void delivered(Orders order);
	public List<Orders> getRestaurantOrder();
	public List<Orders> getLaundry();
	public List<Orders> coffeeShopScreen(String dateTime);
	public List<Orders> carRentalScreen();
	public void accpetParkingRequest(ParkingOrder parkingOrder, long roomId, String serviceItemName,long parkingId,Parking parking);
	public List<HouseKeeping> housekeepingScreenOrder();
/*	public void accpetParkingRequest(long id, long roomId,
			String serviceItemName,HouseKeeping houseKeeping);*/
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
	public List<ReadyForDelivery> readyForDeliveryScreen(String name);
	public ReadyForDelivery deliveryBoyAccept(ReadyForDelivery readyForDelivery,
			long orderId);
	public void accpethouseKeepingRequest(long id, long roomId,
			String serviceItemName, String roomName, String deliveryBoyName,
			HouseKeeping houseKeeping);
 
	
}
