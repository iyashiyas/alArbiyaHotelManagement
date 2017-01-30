package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;

public interface ParkingService {

	public Parking addParking(Parking parking);

	public List<Parking> getAllParking();

	public List<Parking> cutomerparkings();

	public List<Parking> employeeparkings();

	public List<Parking> VIPparkings();

	public List<Parking> availableParking();

	public List<Parking> customerParkingAvailable();

	public List<Parking> vIPavailableParking();

	public List<Parking> employeeavailableParking();

	public List<Parking> customerNonAvailableParking();

	public List<Parking> vIPNonAvailableParking();

	public List<Parking> employeeaNonAvailableParking();

	public List<Parking> NotAvailableParking();

	public void updateParkingStatus(long parkingId,String parkingStatus);
 
	public List<ParkingOrder> getParkingRequests();

	public List<Parking> customerOutParking();

	public List<Parking> vIPOutParking();

}
