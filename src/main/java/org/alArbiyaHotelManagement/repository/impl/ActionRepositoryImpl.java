package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.HotelServicesGroup;
import org.alArbiyaHotelManagement.model.HotelServicesValue;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.repository.ActionRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ActionRepositoryImpl implements ActionRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	public Action addAction() {
		return null;
	}
	public Action editAction() {
		return null;
	}
	@Override
	public void hotelService(HotelServicesItem hotelServicesItem) {
		entityManager.persist(hotelServicesItem);
		for(HotelServicesGroup hotelServiceParentGroup:hotelServicesItem.getHotelServiceParentGroups()){
			entityManager.persist(hotelServiceParentGroup);
		}
		for(HotelServicesGroup hotelServiceParentGroup:hotelServicesItem.getHotelServiceParentGroups()){
			for(HotelServicesGroup hotelServiceChildGroup:hotelServiceParentGroup.getHotelServiceChildGroups()){
				entityManager.persist(hotelServiceChildGroup);
			}
		}
		
		for(HotelServicesGroup hotelServiceParentGroup:hotelServicesItem.getHotelServiceParentGroups()){
			for(HotelServicesGroup hotelServiceChildGroup:hotelServiceParentGroup.getHotelServiceChildGroups()){
				for(HotelServicesValue hotelServicesValue:hotelServiceChildGroup.getHotelServicesValues()){
					entityManager.persist(hotelServicesValue);
				}
			}
		}
		 
	}
	@Override
	public List<CoffeeShop> getAllCoffeShopItems() {
		 return null;
	}
	
	@Override
	public HotelServicesCategory getHotelServicesCategory(long hotelServicesCategoryId) {
		TypedQuery<HotelServicesCategory> query = this.entityManager.createQuery("SELECT cate from HotelServicesCategory cate WHERE cate.id=:hotelServicesCategoryId", HotelServicesCategory.class);
		HotelServicesCategory hotelServicesCategory = query.setParameter("languageId", hotelServicesCategoryId).getSingleResult();
		return hotelServicesCategory;
	}
	
}
