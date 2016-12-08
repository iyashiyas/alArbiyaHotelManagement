package org.alArbiyaHotelManagement.service;

import java.io.File;
import java.util.List;

import org.alArbiyaHotelManagement.dto.CarRental;
import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.Laundry;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;

public interface ActionService {
	public Action addCoffeeShop(CoffeeShop coffeeShop, File serverFile);

	public Action editAction();

	public List<HotelServicesItem> getAllCoffeShopItems();

	public void addRestaurantItems(Restaurant restaurant, File serverFile);

	public List<HotelServicesItem> getAllRestaurantItems();

	public void updateCheckOutStatus(HotelServicesCategory hotelServicesCategory);

	public void updateParkingStatus(HotelServicesCategory hotelServicesCategory);

	public void updateHouseKeepingStatus(HotelServicesCategory hotelServicesCategory);

	public void addCarRentalItem(CarRental carRental, File serverFile);

	public void addLaundryItem(Laundry laundry, File serverFile);

	public List<HotelServicesItem> getAllCarRentalItems();

	public List<HotelServicesItem> getAllLaundryItems();

}
