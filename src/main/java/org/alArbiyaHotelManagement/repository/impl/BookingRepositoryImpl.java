package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.BookingRepository;
import org.alArbiyaHotelManagement.utils.AlArbiyaHotelMgmtUtils;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class BookingRepositoryImpl implements BookingRepository{ 
	@PersistenceContext
	EntityManager entityManager; 
	@Override
	public Booking createBooking(Booking booking, long roomId) {
		TypedQuery<Room> query = this.entityManager.createQuery("SELECT room from Room room WHERE room.id=:roomId", Room.class);
		Room room = query.setParameter("roomId", roomId).getSingleResult();
		
		if(booking.getUserDetails().getId()<1) {
			entityManager.persist(booking.getUserDetails());
		}
		booking.setUserDetails(booking.getUserDetails());
		booking.setRoom(room);
		entityManager.persist(booking);
		return booking;
	}
	@Override
	public String getBookingId() {
		String randomString = ""; 
		for(int i=0;i<10;i++) {
			randomString = AlArbiyaHotelMgmtUtils.generateRandomString();
			TypedQuery<String> query = this.entityManager.createQuery("SELECT booking.bookingReferenceId from Booking booking WHERE booking.bookingReferenceId=:bookingReferenceId", String.class);
			query.setParameter("bookingReferenceId", randomString);
			if(query.getResultList().isEmpty()) {
				break;
			}
		}
		return randomString;
	} 
	@Override
	public String getMemberShipId(String firstName, String email) {
		String randomString = ""; 
		for(int i=0;i<10;i++) {
			randomString = AlArbiyaHotelMgmtUtils.getMemberId(firstName, email);
			TypedQuery<String> query = this.entityManager.createQuery("SELECT userDetails.memberId from UserDetails userDetails WHERE userDetails.memberId=:memberId", String.class);
			query.setParameter("memberId", randomString);
			if(query.getResultList().isEmpty()) {
				break;
		 }
		}
		return randomString;
	} 
	@Override
	public Booking createCheckIn(String bookingId,Booking booking,long parkingId) {
		// TODO Auto-generated method stub
		if(parkingId==0)
		{
			Query updateQuery = entityManager.createQuery("UPDATE Booking SET bookingStatus = 'CHECKEDIN' , checkedInTime=:checkedinDate where bookingReferenceId=:bookingReferenceId ");
			updateQuery.setParameter("bookingReferenceId", bookingId); 
			updateQuery.setParameter("checkedinDate", booking.getCheckedInTime());  
			entityManager.joinTransaction();
			updateQuery.executeUpdate();
		}
		else
		{
			
			Query updateQuery1 = entityManager.createQuery("UPDATE Booking SET bookingStatus = 'CHECKEDIN' , checkedInTime=:checkedinDate where bookingReferenceId=:bookingReferenceId ");
			updateQuery1.setParameter("bookingReferenceId", bookingId); 
			updateQuery1.setParameter("checkedinDate", booking.getCheckedInTime());  
			entityManager.joinTransaction();
			updateQuery1.executeUpdate();
			
		Query updateQuery = entityManager.createQuery("UPDATE Booking SET bookingStatus = 'CHECKEDIN' , checkedInTime=:checkedinDate, parking.id=:parkingId where bookingReferenceId=:bookingReferenceId ");
		updateQuery.setParameter("bookingReferenceId", bookingId); 
		updateQuery.setParameter("checkedinDate", booking.getCheckedInTime()); 
		updateQuery.setParameter("parkingId", parkingId); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Booking> bookedRooms() {
		Query query = entityManager.createQuery("SELECT chekedrooms from Booking chekedrooms ", Booking.class);
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Booking> bookedRoomsCount() {
		Query query = entityManager.createQuery("SELECT chekedrooms from Booking chekedrooms where bookingStatus='BOOKED'", Booking.class);
		return query.getResultList();
	}
	
	@Override
	public Booking checkOut(String bookingrefernceId, Booking booking) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE Booking SET bookingStatus = 'CHECKEDOUT' , checkedOutTime=:checkedoutTime where bookingReferenceId=:bookingReferenceId");
		updateQuery.setParameter("bookingReferenceId", bookingrefernceId); 
		updateQuery.setParameter("checkedoutTime", booking.getCheckedOutTime()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		return null ;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Booking> checkedInRooms() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT chekedrooms from Booking chekedrooms where bookingStatus='CHECKEDIN'", Booking.class);
		return query.getResultList();
	}
	@Override
	public Booking authenticate(long roomId, int password) {
		// TODO Auto-generated method stub
		TypedQuery<Booking> query = this.entityManager.createQuery("SELECT bookings from Booking bookings WHERE bookings.room.id=:roomId and bookings.bookingStatus='CHECKEDIN' and bookings.accessPassword=:password", Booking.class);
		 query.setParameter("roomId",roomId);
		query.setParameter("password", password);
		List<Booking> bookingDetails=query.getResultList();
		return bookingDetails.isEmpty() ? null : bookingDetails.get(0);
	}
}
