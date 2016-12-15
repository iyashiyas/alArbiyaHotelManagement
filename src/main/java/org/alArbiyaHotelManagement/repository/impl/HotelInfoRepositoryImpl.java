package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

 


import org.alArbiyaHotelManagement.model.HotelInfo;
import org.alArbiyaHotelManagement.repository.HotelInfoRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class HotelInfoRepositoryImpl implements HotelInfoRepository {

	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public HotelInfo editInfo(HotelInfo info) {
		// TODO Auto-generated method stub
	    entityManager.merge(info);
			return info;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotelInfo> getHotelInfo() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT hotelInfo from HotelInfo hotelInfo", HotelInfo.class);
		return query.getResultList();
	}

	@Override
	public void UploadLogo(HotelInfo info) {
		Query updateQuery = entityManager.createQuery("UPDATE HotelInfo SET hotelLogoUrl = :imageUrl where id = :id ");
		updateQuery.setParameter("ImageUrl", info.getHotelLogoUrl());
		updateQuery.setParameter("id", info.getId());
		entityManager.joinTransaction();
		updateQuery.executeUpdate(); 
	}

	 
}
