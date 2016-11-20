package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.model.Action;
  
public interface ActionService {
	public Action addCoffeeShop(CoffeeShop coffeeShop);
	public Action editAction();
	public List<CoffeeShop> getAllCoffeShopItems();

}
