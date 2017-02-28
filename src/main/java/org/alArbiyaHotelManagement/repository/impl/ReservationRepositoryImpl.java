package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

 
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.ReservationRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ReservationRepositoryImpl implements ReservationRepository {

	@PersistenceContext
	EntityManager entityManager; 
	@Override
	public List<Room> getAllAvailableRoooms(Date startDate, Date endDate, String roomtype) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Room> query = criteriaBuilder.createQuery(Room.class);
		Root<Room> roomRoot = query.from(Room.class);
		Join<org.alArbiyaHotelManagement.model.RoomType, Room> joinRoomType = roomRoot.join("roomType");
	// Join<Booking, Room> joinBooking = roomRoot.join("bookings"); 
		List<Predicate> conditions = new ArrayList<Predicate>();  
		conditions.add(criteriaBuilder.equal(joinRoomType.get("id"), roomtype));
	 //ToDO: PT
		 //conditions.add(criteriaBuilder.lessThan(joinBooking.<Date>get("startDate"), endDate));
		// conditions.add(criteriaBuilder.greaterThan(joinBooking.<Date>get("endDate"), startDate)); 
		query.orderBy(criteriaBuilder.asc(roomRoot.get("id")));
		TypedQuery<Room> typedQuery = entityManager.createQuery(query
		        .select(roomRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return typedQuery.getResultList();
	}

}
