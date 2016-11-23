package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
  
public interface ActionService {
	public Action addCoffeeShop(CoffeeShop coffeeShop);
	public Action editAction();
	public List<HotelServicesItem> getAllCoffeShopItems();
	public void addRestaurantItems(Restaurant restaurant);
	public List<HotelServicesItem> getAllRestaurantItems();
	public void updateCheckOutStatus(HotelServicesCategory hotelServicesCategory);
	public void updateParkingStatus(HotelServicesCategory hotelServicesCategory);

}
