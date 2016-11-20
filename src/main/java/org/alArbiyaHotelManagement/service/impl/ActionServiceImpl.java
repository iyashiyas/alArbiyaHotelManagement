package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServices;
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
		HotelServices hotelServices = AlArbiyaHotelMgmtUtils.toHotelService(coffeeShop);
		actionRepository.hotelService(hotelServices);
		return null;
	}
	@Override
	public List<CoffeeShop> getAllCoffeShopItems() {
		// TODO Auto-generated method stub
		return actionRepository.getAllCoffeShopItems();
	}
}
