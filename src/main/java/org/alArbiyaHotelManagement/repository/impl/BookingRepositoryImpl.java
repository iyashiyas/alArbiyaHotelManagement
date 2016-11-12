package org.alArbiyaHotelManagement.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.BookingRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class BookingRepositoryImpl implements BookingRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public void createBooking(Booking booking, long roomId) {
		TypedQuery<Room> query = this.entityManager.createQuery("SELECT room from Room room WHERE room.id=:roomId", Room.class);
		Room room = query.setParameter("roomId", roomId).getSingleResult();
		
		entityManager.persist(booking.getUserDetails());
		booking.setUserDetails(booking.getUserDetails());
		booking.setRoom(room);
		entityManager.persist(booking);
	}
}
