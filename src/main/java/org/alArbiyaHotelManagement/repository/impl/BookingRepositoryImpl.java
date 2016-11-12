package org.alArbiyaHotelManagement.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.repository.BookingRepository;
import org.springframework.stereotype.Repository;

@Repository
public class BookingRepositoryImpl implements BookingRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public void createBooking(Booking booking) {
		entityManager.persist(booking.getUserDetails());
		booking.setUserDetails(booking.getUserDetails());
		entityManager.persist(booking);
	}
}
