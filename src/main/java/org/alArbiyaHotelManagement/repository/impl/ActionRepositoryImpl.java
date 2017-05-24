package org.alArbiyaHotelManagement.repository.impl;
 
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
  

import org.alArbiyaHotelManagement.model.Action; 
import org.alArbiyaHotelManagement.model.CarRentalCategory;
import org.alArbiyaHotelManagement.model.ServiceItemCategory;
import org.alArbiyaHotelManagement.model.ServiceItemCategoryLanguage;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.HotelServicesGroup;
import org.alArbiyaHotelManagement.model.HotelServicesValue; 
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.Product;
import org.alArbiyaHotelManagement.model.RestaurantCategory;
 
import org.alArbiyaHotelManagement.model.ServiceLanguage;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitLanguage;
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
		 
		/* for(ServiceLanguage serviceLanguage: hotelServicesItem.getServiceLanguages()) {
			 if(!serviceLanguage.isEmpty()) {
				 CoffeeeShopLanguageHelper  langh= new CoffeeeShopLanguageHelper();
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", serviceLanguage.getLanguage().getId()).getSingleResult();
				serviceLanguage.setLanguage(language);
				 
				entityManager.merge(serviceLanguage);
			} 
			entityManager.persist(serviceLanguage);
		} */
		
	/*	
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
		}*/
		 
	}
	@SuppressWarnings("unchecked")
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
	
	@SuppressWarnings("unchecked")
	@Override
	public List<HotelServicesItem> getAllRestaurantItems() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT hotel_service_item from HotelServicesItem hotel_service_item where hotelServicesCategory_SERVICE_CATEGORY_ID='6' order by id", HotelServicesItem.class);
		return query.getResultList();
	}
	@Override
	public HotelServicesCategory updateCheckOutStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE HotelServicesCategory SET categoryStatus =:status where hotelServicesCategoryId=:categoryId");
		updateQuery.setParameter("status", hotelServicesCategory.getCategoryStatus()); 
		updateQuery.setParameter("categoryId", hotelServicesCategory.getHotelServicesCategoryId()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		return null ;
	}
	@Override
	public HotelServicesCategory updateParkingStatus(HotelServicesCategory hotelServicesCategory) {
		// TODO Auto-generated method stub
		Query updateQuery = entityManager.createQuery("UPDATE HotelServicesCategory SET categoryStatus =:status where hotelServicesCategoryId=:categoryId");
		updateQuery.setParameter("status", hotelServicesCategory.getCategoryStatus()); 
		updateQuery.setParameter("categoryId", hotelServicesCategory.getHotelServicesCategoryId()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		return null ;
	}   
	@Override
	public HotelServicesCategory updateHouseKeepingStatus(
			HotelServicesCategory hotelServicesCategory) {
		Query updateQuery = entityManager.createQuery("UPDATE HotelServicesCategory SET categoryStatus =:status where hotelServicesCategoryId=:categoryId");
		updateQuery.setParameter("status", hotelServicesCategory.getCategoryStatus()); 
		updateQuery.setParameter("categoryId", hotelServicesCategory.getHotelServicesCategoryId()); 
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
		return null ;
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<HotelServicesItem> getAllCarRentalItems() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT hotel_service_item from HotelServicesItem hotel_service_item where hotelServicesCategory_SERVICE_CATEGORY_ID='7' order by id", HotelServicesItem.class);
		return query.getResultList();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<HotelServicesItem> getAllLaundryItems() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT hotel_service_item from HotelServicesItem hotel_service_item where hotelServicesCategory_SERVICE_CATEGORY_ID='5' order by id", HotelServicesItem.class);
		return query.getResultList();
	}
	@Override
	public void UpdateReceptionServiceStatus(
			HotelServicesCategory hotelServicesCategory) {
		entityManager.merge(hotelServicesCategory);
	}
	
/*	@Override
	public void addCarRentalCategory(CarRentalCategory carRentalCategory) {
		// TODO Auto-generated method stub
		entityManager.persist(carRentalCategory);
	}
	@Override
	public void addLaundryCategory(LaundryCategory laundryCategory) {
		// TODO Auto-generated method stub
		entityManager.persist(laundryCategory);
	}
	@Override
	public void addRestaurantCategory(RestaurantCategory restaurantCategory) {
		// TODO Auto-generated method stub
		entityManager.persist(restaurantCategory);
	}*/
	
	@Override
	public void addServiceItemCategory(ServiceItemCategory coffeeShopCategory) {
		// TODO Auto-generated method stub
		entityManager.persist(coffeeShopCategory);
		 
		for(ServiceItemCategoryLanguage coffeeShopCategoryLanguage: coffeeShopCategory.getServiceItemCategoryLanguage()) {
			if(!coffeeShopCategoryLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", coffeeShopCategoryLanguage.getLanguage().getId()).getSingleResult();
				coffeeShopCategoryLanguage.setLanguage(language);
				coffeeShopCategoryLanguage.setServiceItemCategory(coffeeShopCategory);
				this.entityManager.merge(coffeeShopCategory); 
			}
		} 
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<LaundryCategory> laundryCategory() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT laundryCategory from LaundryCategory laundryCategory where laundryCategoryStatus='ENABLE' order by id", LaundryCategory.class);
		return query.getResultList(); 
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<CarRentalCategory> carRentaltCategory() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT carRentalcategory from CarRentalCategory carRentalcategory where carRenatalCategoryStatus='ENABLE' order by id", CarRentalCategory.class);
		return query.getResultList(); 
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantCategory> restaurantCategory() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT restaurantCategory from RestaurantCategory restaurantCategory where restaurantCategoryStatus='ENABLE' order by id", RestaurantCategory.class);
		return query.getResultList(); 
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ServiceItemCategory> serviceItemCategory(long serviceCateogy) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT serviceItemCategory from ServiceItemCategory serviceItemCategory where serviceItemCategoryStatus='ENABLE' and hotelServicesCategory.hotelServicesCategoryId=:serviceCateogy  order by id", ServiceItemCategory.class);
		query.setParameter("serviceCateogy", serviceCateogy);
		return query.getResultList(); 
	}
	@Override
	public void addNewProduct(Product product) { 
		this.entityManager.persist(product);
		for(ServiceLanguage serviceLanguage: product.getServiceLanguages()) {
			if(!serviceLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", serviceLanguage.getLanguage().getId()).getSingleResult();
				serviceLanguage.setLanguage(language);
				serviceLanguage.setHotelServicesItem(product);
				this.entityManager.merge(serviceLanguage);
			}
		}
		 
	}
	@Override
	public List<Product> getAllProductWithCategory(String categoryCode) {
		// TODO Auto-generated method stub
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Product> query = criteriaBuilder.createQuery(Product.class);
		Root<Product> productRoot = query.from(Product.class);
		//Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode == null || categoryCode == "" ) ? "1" : categoryCode;
		
		 conditions.add(criteriaBuilder.equal(productRoot.get("serviceItemCategory").get("id"), categoryCode ));
		//conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		query.orderBy(criteriaBuilder.asc(productRoot.get("id")));
		TypedQuery<Product> typedQuery = entityManager.createQuery(query
		        .select(productRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return typedQuery.getResultList();
	}
	  
}
