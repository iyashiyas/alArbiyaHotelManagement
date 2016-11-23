package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
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
	public Action addCoffeeShop(CoffeeShop coffeeShop) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(coffeeShop.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelService(coffeeShop, hotelServicesCategory);
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<HotelServicesItem> getAllCoffeShopItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllCoffeShopItems();
	}
	@Override
	public void addRestaurantItems(Restaurant restaurant) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(restaurant.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceRestaurant(restaurant, hotelServicesCategory);
		actionRepository.hotelService(hotelServices);
		
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
}
