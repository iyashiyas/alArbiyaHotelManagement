package org.alArbiyaHotelManagement.repository;

import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServices;

public interface ActionRepository {
	public Action addAction();
	public Action editAction();
	public void hotelService(HotelServices hotelServices);
}
