package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 


import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.repository.ParkingRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ParkingRepositoryImpl implements ParkingRepository {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public Parking addParking(Parking parking) {
		// TODO Auto-generated method stub
		entityManager.persist(parking);
		return parking;
	} 
	
	@Override
	public List<Parking> getAllParking() {
		Query query = entityManager.createQuery("SELECT parking from Parking parking", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> cutomerparkings() {
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingCategory='CUSTOMER'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> employeeparkings() {
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingCategory='EMPLOYEE'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> VIPparkings() {
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingCategory='VIP'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> availableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='AVAILABLE'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> customerParkingAvailable() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='AVAILABLE' AND parking.parkingCategory='CUSTOMER'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> vIPavailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='AVAILABLE' AND parking.parkingCategory='VIP'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> employeeavailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='AVAILABLE' AND parking.parkingCategory='EMPLOYEE'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> customerNonAvailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='NOTAVAILABLE' AND parking.parkingCategory='CUSTOMER'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> vIPNonAvailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='NOTAVAILABLE' AND parking.parkingCategory='VIP'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> employeeaNonAvailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='NOTAVAILABLE' AND parking.parkingCategory='EMPLOYEE'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> NotAvailableParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingCategory='CUSTOMER' OR parking.parkingCategory='VIP' AND parking.parkingStatus='NOTAVAILABLE' ", Parking.class);
		return query.getResultList();
	} 
	
	@Override
	public void updateParkingStatus(long parkingId,String parkingStatus) {
		// TODO Auto-generated method stub
		Query Updatequery = entityManager.createQuery("UPDATE Parking SET parkingStatus = :parkingStatus where id=:parkingId");
		Updatequery.setParameter("parkingStatus",parkingStatus);
		Updatequery.setParameter("parkingId", parkingId); 
		entityManager.joinTransaction();
		Updatequery.executeUpdate();
	    
	}

	@Override
	public List<ParkingOrder> getParkingRequests() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from ParkingOrder parking where parking.orderStatus='ORDERED' ", ParkingOrder.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> customerOutParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='OUT' AND parking.parkingCategory='CUSTOMER'", Parking.class);
		return query.getResultList();
	}

	@Override
	public List<Parking> vIPOutParking() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT parking from Parking parking where parking.parkingStatus='OUT' AND parking.parkingCategory='VIP'", Parking.class);
		return query.getResultList();
	} 

}
