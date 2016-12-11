package org.alArbiyaHotelManagement.repository;

import java.util.List;
  
import org.alArbiyaHotelManagement.model.Action; 
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
  
public interface ActionRepository {
	public Action addAction();
	public Action editAction();
	public void hotelService(HotelServicesItem hotelServices);
	public List<HotelServicesItem> getAllCoffeShopItems() ;
	public HotelServicesCategory getHotelServicesCategory(long parseLong);
	public List<HotelServicesItem> getAllRestaurantItems();
	public void updateCheckOutStatus(HotelServicesCategory hotelServicesCategory);
	public void updateParkingStatus(HotelServicesCategory hotelServicesCategory);
	public void updateHouseKeepingStatus(
			HotelServicesCategory hotelServicesCategory);
	public List<HotelServicesItem> getAllCarRentalItems();
	public List<HotelServicesItem> getAllLaundryItems();
	public void UpdateReceptionServiceStatus(
			HotelServicesCategory hotelServicesCategory);
	 
}
