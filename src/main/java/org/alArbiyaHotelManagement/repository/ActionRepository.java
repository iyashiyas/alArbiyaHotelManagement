package org.alArbiyaHotelManagement.repository;

import java.util.List;
  




import org.alArbiyaHotelManagement.model.Action; 
import org.alArbiyaHotelManagement.model.CarRentalCategory;
import org.alArbiyaHotelManagement.model.CoffeeShopCategory;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.RestaurantCategory;
  
public interface ActionRepository {
	public Action addAction();
	public Action editAction();
	public void hotelService(HotelServicesItem hotelServices);
	public List<HotelServicesItem> getAllCoffeShopItems() ;
	public HotelServicesCategory getHotelServicesCategory(long parseLong);
	public List<HotelServicesItem> getAllRestaurantItems();
	public HotelServicesCategory updateCheckOutStatus(HotelServicesCategory hotelServicesCategory);
	public HotelServicesCategory updateParkingStatus(HotelServicesCategory hotelServicesCategory);
	public HotelServicesCategory updateHouseKeepingStatus(
			HotelServicesCategory hotelServicesCategory);
	public List<HotelServicesItem> getAllCarRentalItems();
	public List<HotelServicesItem> getAllLaundryItems();
	public void UpdateReceptionServiceStatus(
			HotelServicesCategory hotelServicesCategory);
	public void addCarRentalCategory(CarRentalCategory carRentalCategory);
	public void addLaundryCategory(LaundryCategory laundryCategory);
	public void addRestaurantCategory(RestaurantCategory restaurantCategory);
	public void addCoffeeShopCategory(CoffeeShopCategory coffeeShopCategory);
	public List<LaundryCategory> laundryCategory();
	public List<CarRentalCategory> carRentaltCategory();
	public List<RestaurantCategory> restaurantCategory();
	public List<CoffeeShopCategory> coffeeShopCategory();
	 
}
