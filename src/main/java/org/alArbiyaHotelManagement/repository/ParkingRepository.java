package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;

public interface ParkingRepository {

	Parking addParking(Parking parking);

	List<Parking> getAllParking();

	List<Parking> cutomerparkings();

	List<Parking> employeeparkings();

	List<Parking> VIPparkings();

	List<Parking> availableParking();

	List<Parking> customerParkingAvailable();

	List<Parking> vIPavailableParking();

	List<Parking> employeeavailableParking();

	List<Parking> customerNonAvailableParking();

	List<Parking> vIPNonAvailableParking();

	List<Parking> employeeaNonAvailableParking();

	List<Parking> NotAvailableParking();

	void updateParkingStatus(long parkingId,String parkingStatus);
 
	List<ParkingOrder> getParkingRequests();

	List<Parking> customerOutParking();

	List<Parking> vIPOutParking();

}
