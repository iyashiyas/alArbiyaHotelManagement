package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 

import org.alArbiyaHotelManagement.model.RoomType;
import org.alArbiyaHotelManagement.repository.RoomTypeRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Repository
@Transactional
public class RoomTypeRepositoryImpl implements RoomTypeRepository{

	@PersistenceContext
	EntityManager entityManager;
	
	public RoomType addRoomType(RoomType roomType) {
		entityManager.persist(roomType);
		return roomType;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RoomType> getAllRoomType() {
		Query query = entityManager.createQuery("SELECT rmtyp from RoomType rmtyp", RoomType.class);
		return query.getResultList();
	}
 
	@Override
	public RoomType editRoomType() {
		return null;
	}

	@Override
	public RoomType deleteRoomType() {
		return null;
	}

	@Override
	public RoomType editBranch(RoomType roomType) {
		entityManager.merge(roomType);
		return roomType;
	}
	 
}
