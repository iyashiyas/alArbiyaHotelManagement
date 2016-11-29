package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.RoomRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RoomRepositoryImpl implements RoomRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	public Room addRoom(Room room) {
		entityManager.persist(room);
		return room;
	} 
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Room> getAllRoom() {
		Query query = entityManager.createQuery("SELECT rm from Room  rm", Room.class);
		return query.getResultList();
	}
 
	@Override
	public Room editRoom(Room room) {
		entityManager.merge(room);
		return room;
	}

	@Override
	public Room deleteRoom() {
		return null;
	}

	@Override
	public List<Room> getAllFloorByBuildingId(String floorId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT rooms from Floor floor join floor.rooms rooms where floor.id =:floorId ", Room.class);
		query.setParameter("floorId", Long.parseLong(floorId));
	    return query.getResultList();
	}
	 
}
