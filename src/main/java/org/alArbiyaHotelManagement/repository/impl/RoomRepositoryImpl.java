package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

 
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.repository.RoomRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RoomRepositoryImpl implements RoomRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	public Room addRoom(Room room)
	{
		entityManager.persist(room);
		 
		return room;
	 	
	} 
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Set<Room> getAllRoom() {
		Query query = entityManager.createQuery("SELECT rm from Room  rm", Room.class);
		return new HashSet<Room>(query.getResultList());
	}
 
 
	@Override
	public Room editRoom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Room deleteRoom() {
		// TODO Auto-generated method stub
		return null;
	}
	 
}
