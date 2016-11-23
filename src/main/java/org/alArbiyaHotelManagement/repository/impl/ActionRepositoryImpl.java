package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

 
import org.alArbiyaHotelManagement.model.Action;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.HotelServicesGroup;
import org.alArbiyaHotelManagement.model.HotelServicesValue;
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
	public List<HotelServicesItem> getAllCoffeShopItems() {
		Query query = entityManager.createQuery("SELECT hotel_service_item from HotelServicesItem hotel_service_item where hotelServicesCategory_SERVICE_CATEGORY_ID='1' order by id", HotelServicesItem.class);
		return query.getResultList();
	}
	
	@Override
	public HotelServicesCategory getHotelServicesCategory(long hotelServicesCategoryId) {
		TypedQuery<HotelServicesCategory> query = this.entityManager.createQuery("SELECT cate from HotelServicesCategory cate WHERE cate.hotelServicesCategoryId=:hotelServicesCategoryId", HotelServicesCategory.class);
		HotelServicesCategory hotelServicesCategory = query.setParameter("hotelServicesCategoryId", hotelServicesCategoryId).getSingleResult();
		return hotelServicesCategory;
	}
	
	@Override
	public List<HotelServicesItem> getAllRestaurantItems() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT hotel_service_item from HotelServicesItem hotel_service_item where hotelServicesCategory_SERVICE_CATEGORY_ID='6' order by id", HotelServicesItem.class);
		return query.getResultList();
	}
	@Override
	public void updateCheckOutStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		entityManager.merge(hotelServicesCategory);
	}
	
}
