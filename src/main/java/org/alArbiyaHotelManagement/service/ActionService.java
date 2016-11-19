package org.alArbiyaHotelManagement.service;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.model.Action;

public interface ActionService {
	public Action addCoffeeShop(CoffeeShop coffeeShop);
	public Action editAction();
}
