package org.alArbiyaHotelManagement.repository;

import java.io.File;
import java.util.List;
  







import org.alArbiyaHotelManagement.model.Action; 
import org.alArbiyaHotelManagement.model.CarRentalCategory;
import org.alArbiyaHotelManagement.model.ServiceItemCategory;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.Product;
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
	
	/*public void addCarRentalCategory(ServiceItemCategory carRentalCategory);
	public void addLaundryCategory(ServiceItemCategory laundryCategory);
	public void addRestaurantCategory(ServiceItemCategory restaurantCategory);
*/
	public void addServiceItemCategory(ServiceItemCategory coffeeShopCategory);
	public List<LaundryCategory> laundryCategory();
	public List<CarRentalCategory> carRentaltCategory();
	public List<RestaurantCategory> restaurantCategory();
	public List<ServiceItemCategory> serviceItemCategory(long serviceCateogy);
	public void addNewProduct(Product coffeeShop);
	public List<Product> getAllProductWithCategory(String categoryCode);
	 
}
