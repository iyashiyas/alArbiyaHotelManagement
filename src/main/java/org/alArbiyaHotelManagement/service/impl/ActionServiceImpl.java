package org.alArbiyaHotelManagement.service.impl;

import java.io.File;
import java.util.List;

import org.alArbiyaHotelManagement.dto.CarRental;
import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.Laundry;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.model.Action; 
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem; 
import org.alArbiyaHotelManagement.repository.ActionRepository;
import org.alArbiyaHotelManagement.service.ActionService;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActionServiceImpl implements ActionService {
	
	@Autowired ActionRepository actionRepository;
	
	public Action editAction() {
		return null;
	}
	@Override
	public Action addCoffeeShop(CoffeeShop coffeeShop, File file) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(coffeeShop.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelService(coffeeShop, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName()); 
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<HotelServicesItem> getAllCoffeShopItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllCoffeShopItems();
	}
	@Override
	public Action addRestaurantItems(Restaurant restaurant, File file) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(restaurant.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceRestaurant(restaurant, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<HotelServicesItem> getAllRestaurantItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllRestaurantItems();
	}
	@Override
	public void updateCheckOutStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		} 
		actionRepository.updateCheckOutStatus(hotelServicesCategory); 
	}
	@Override
	public void updateParkingStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		} 
		actionRepository.updateParkingStatus(hotelServicesCategory); 
	}
	@Override
	public void updateHouseKeepingStatus(
			HotelServicesCategory hotelServicesCategory) {
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		}
		actionRepository.updateHouseKeepingStatus(hotelServicesCategory); 
	}
	 
	@Override
	public void addCarRentalItem(CarRental carRental, File file) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(carRental.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceCareRental(carRental, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		actionRepository.hotelService(hotelServices); 
	}
	@Override
	public void addLaundryItem(Laundry laundry, File file) {
		// TODO Auto-generated method stub
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(laundry.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceLaundry(laundry, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		actionRepository.hotelService(hotelServices);
	}
	@Override
	public List<HotelServicesItem> getAllCarRentalItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllCarRentalItems();
	}
	@Override
	public List<HotelServicesItem> getAllLaundryItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllLaundryItems();
	}
	@Override
	public void UpdateReceptionServiceStatus(
			HotelServicesCategory hotelServicesCategory) {

		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		} 
		actionRepository.UpdateReceptionServiceStatus(hotelServicesCategory); 
	}
	 
}
