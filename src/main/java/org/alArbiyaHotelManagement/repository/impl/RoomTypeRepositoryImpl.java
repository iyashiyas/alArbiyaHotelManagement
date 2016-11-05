package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
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
	
	public RoomType addRoomType(RoomType roomType)
	{

		entityManager.persist(roomType);
 
		return roomType;
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Set<RoomType> getAllRoomType() {
		Query query = entityManager.createQuery("SELECT rmtyp from RoomType rmtyp", RoomType.class);
		return new HashSet<RoomType>(query.getResultList());
	}
 
 
	@Override
	public RoomType editRoomType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RoomType deleteRoomType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RoomType editBranch(RoomType roomType) {
		// TODO Auto-generated method stub
		entityManager.merge(roomType);
		return roomType;
	}
	 
}
