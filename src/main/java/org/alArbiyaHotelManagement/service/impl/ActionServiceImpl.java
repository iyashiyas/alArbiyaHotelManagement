package org.alArbiyaHotelManagement.service.impl;

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
	public Action addCoffeeShop(CoffeeShop coffeeShop, File file,File outputFile) {
	 HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(coffeeShop.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelService(coffeeShop, hotelServicesCategory);
	 	hotelServices.setImageUrlName(file.getName()); 
		hotelServices.setBarCodeImageUrlName(outputFile.getName()); 
		
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<HotelServicesItem> getAllCoffeShopItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllCoffeShopItems();
	}
	@Override
	public Action addRestaurantItems(Restaurant restaurant, File file,File barCodeFile) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(restaurant.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceRestaurant(restaurant, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		hotelServices.setBarCodeImageUrlName(barCodeFile.getName()); 
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<HotelServicesItem> getAllRestaurantItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllRestaurantItems();
	}
	@Override
	public HotelServicesCategory updateCheckOutStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		} 
		return actionRepository.updateCheckOutStatus(hotelServicesCategory); 
	}
	@Override
	public HotelServicesCategory updateParkingStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		} 
		return actionRepository.updateParkingStatus(hotelServicesCategory); 
	}
	@Override
	public HotelServicesCategory updateHouseKeepingStatus(
			HotelServicesCategory hotelServicesCategory) {
		if(hotelServicesCategory.getCategoryStatus()==null) {
			hotelServicesCategory.setCategoryStatus("DISABLED");
		}
		return actionRepository.updateHouseKeepingStatus(hotelServicesCategory); 
	}
	 
	@Override
	public void addCarRentalItem(CarRental carRental, File file,File barCodeFile) {
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(carRental.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceCareRental(carRental, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		hotelServices.setBarCodeImageUrlName(barCodeFile.getName()); 
		actionRepository.hotelService(hotelServices); 
	}
	@Override
	public void addLaundryItem(Laundry laundry, File file,File barCodeFile) {
		// TODO Auto-generated method stub
		HotelServicesCategory hotelServicesCategory = actionRepository.getHotelServicesCategory(Long.parseLong(laundry.getHotelServiceCategoryId()));
		HotelServicesItem hotelServices = AlArbiyaHotelMgmtUtils.toHotelServiceLaundry(laundry, hotelServicesCategory);
		hotelServices.setImageUrlName(file.getName());
		hotelServices.setBarCodeImageUrlName(barCodeFile.getName()); 
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
	@Override
	public void addServiceItemCategory(ServiceItemCategory coffeeShopCategory) {
		// TODO Auto-generated method stub
		if(coffeeShopCategory.getServiceItemCategoryStatus()==null) {
			coffeeShopCategory.setServiceItemCategoryStatus("DISABLED");
		}
		actionRepository.addServiceItemCategory(coffeeShopCategory);
	}
	
	/*@Override
	public void addRestaurantCategory(ServiceItemCategory restaurantCategory) {
		// TODO Auto-generated method stub
		if(restaurantCategory.getServiceItemCategoryStatus()==null) {
			restaurantCategory.setServiceItemCategoryStatus("DISABLED");
		}
		actionRepository.addRestaurantCategory(restaurantCategory);
	}
	@Override
	public void addLaundryCategory(ServiceItemCategory laundryCategory) {
		// TODO Auto-generated method stub
		if(laundryCategory.getServiceItemCategoryStatus()==null) {
			laundryCategory.setServiceItemCategoryStatus("DISABLED");
		}
		actionRepository.addLaundryCategory(laundryCategory);
	}
	@Override
	public void addCarRentalCategory(ServiceItemCategory carRentalCategory) {
		// TODO Auto-generated method stub
		if(carRentalCategory.getServiceItemCategoryStatus()==null) {
			carRentalCategory.setServiceItemCategoryStatus("DISABLED");
		}
		actionRepository.addCarRentalCategory(carRentalCategory);
	}*/
	
	@Override
	public List<LaundryCategory> laundryCategory() {
		// TODO Auto-generated method stub
		 
		return actionRepository.laundryCategory();
	}
	@Override
	public List<CarRentalCategory> carRentaltCategory() {
		// TODO Auto-generated method stub
		return actionRepository.carRentaltCategory();
	}
	@Override
	public List<RestaurantCategory> restaurantCategory() {
		// TODO Auto-generated method stub
		return actionRepository.restaurantCategory();
	}
	@Override
	public List<ServiceItemCategory> serviceItemCategory(long serviceCateogy) {
		// TODO Auto-generated method stub
		return actionRepository.serviceItemCategory(serviceCateogy);
	}
	@Override
	public void addNewProduct(Product coffeeShop, File serverFile,
			File outputFile) {
		coffeeShop.setImageUrlName(serverFile.getName());
		coffeeShop.setBarCodeImageUrlName(outputFile.getName());
		actionRepository.addNewProduct(coffeeShop);
	}
	@Override
	public List<Product> getAllProductWithCategory(String categoryCode) {
		// TODO Auto-generated method stub
		return actionRepository.getAllProductWithCategory(categoryCode);
	}
	 
}
