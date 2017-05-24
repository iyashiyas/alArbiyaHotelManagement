package org.alArbiyaHotelManagement.service;

import java.io.File;
import java.util.List;

import org.alArbiyaHotelManagement.dto.CarRental;
import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.Laundry;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.CarRentalCategory;
import org.alArbiyaHotelManagement.model.ServiceItemCategory;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.Product;
import org.alArbiyaHotelManagement.model.RestaurantCategory;

public interface ActionService {
	public Action addCoffeeShop(CoffeeShop coffeeShop, File serverFile,File outputFile);

	public Action editAction();

	public List<HotelServicesItem> getAllCoffeShopItems();

	public Action addRestaurantItems(Restaurant restaurant, File serverFile,File barCodeFile);

	public List<HotelServicesItem> getAllRestaurantItems();

	public HotelServicesCategory updateCheckOutStatus(HotelServicesCategory hotelServicesCategory);

	public HotelServicesCategory updateParkingStatus(HotelServicesCategory hotelServicesCategory);

	public HotelServicesCategory updateHouseKeepingStatus(HotelServicesCategory hotelServicesCategory);

	public void addCarRentalItem(CarRental carRental, File serverFile,File barCodeFile);

	public void addLaundryItem(Laundry laundry, File serverFile,File outputFile);

	public List<HotelServicesItem> getAllCarRentalItems();

	public List<HotelServicesItem> getAllLaundryItems();

	public void UpdateReceptionServiceStatus(
			HotelServicesCategory hotelServicesCategory);

	public void addServiceItemCategory(ServiceItemCategory coffeeShopCategory);

/*	public void addRestaurantCategory(ServiceItemCategory restaurantCategory);

	public void addLaundryCategory(ServiceItemCategory laundryCategory);

	public void addCarRentalCategory(ServiceItemCategory carRentalCategory);
*/
	public List<LaundryCategory> laundryCategory();

	public List<CarRentalCategory> carRentaltCategory();

	public List<RestaurantCategory> restaurantCategory();

	public List<ServiceItemCategory> serviceItemCategory(long serviceCateogy);

	public void addNewProduct(Product coffeeShop, File serverFile,
			File outputFile);

	public List<Product> getAllProductWithCategory(String categoryCode);

}
