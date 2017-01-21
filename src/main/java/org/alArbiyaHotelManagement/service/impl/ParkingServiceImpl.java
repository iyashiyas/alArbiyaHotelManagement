package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.repository.ParkingRepository;
import org.alArbiyaHotelManagement.service.ParkingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ParkingServiceImpl implements ParkingService {
   
	@Autowired
	ParkingRepository parkingRepository;
	
	@Override
	public Parking addParking(Parking parking) {
		// TODO Auto-generated method stub
		parking.setParkingStatus("AVAILABLE");
		return parkingRepository.addParking(parking);
	}

	@Override
	public List<Parking> getAllParking() {
		// TODO Auto-generated method stub
		return parkingRepository.getAllParking();
	}

	@Override
	public List<Parking> cutomerparkings() {
		// TODO Auto-generated method stub
		return parkingRepository.cutomerparkings();
	}

	@Override
	public List<Parking> employeeparkings() {
		// TODO Auto-generated method stub
		return parkingRepository.employeeparkings();
	}

	@Override
	public List<Parking> VIPparkings() {
		// TODO Auto-generated method stub
		return parkingRepository.VIPparkings();
	}

	@Override
	public List<Parking> availableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.availableParking();
	}

	@Override
	public List<Parking> customerParkingAvailable() {
		// TODO Auto-generated method stub
		return parkingRepository.customerParkingAvailable();
	}

	@Override
	public List<Parking> vIPavailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.vIPavailableParking();
	}

	@Override
	public List<Parking> employeeavailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.employeeavailableParking();
	}

	@Override
	public List<Parking> customerNonAvailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.customerNonAvailableParking();
	}

	@Override
	public List<Parking> vIPNonAvailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.vIPNonAvailableParking();
	}

	@Override
	public List<Parking> employeeaNonAvailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.employeeaNonAvailableParking();
	}

	@Override
	public List<Parking> NotAvailableParking() {
		// TODO Auto-generated method stub
		return parkingRepository.NotAvailableParking();
	}

	@Override
	public void updateParkingStatus(long parkingId,String parkingStatus) {
		// TODO Auto-generated method stub 
	 parkingRepository.updateParkingStatus(parkingId,parkingStatus);
	}
  
}
