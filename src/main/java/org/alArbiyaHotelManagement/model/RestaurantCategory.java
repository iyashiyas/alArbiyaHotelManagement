package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RESTAURANT_CATEGORY")
public class RestaurantCategory {

	@Id @GeneratedValue 
	@Column(name="RESTAURANT_CATEGORY_ID")
	private long id;
	
	@Column(name="RESTAURANT_CATEGORY_NAME") 
	private String restaurantCategoryName;
	
	@Column(name="RESTAURANT_CATEGORY_STATUS") 
	private String restaurantCategoryStatus;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRestaurantCategoryName() {
		return restaurantCategoryName;
	}

	public void setRestaurantCategoryName(String restaurantCategoryName) {
		this.restaurantCategoryName = restaurantCategoryName;
	}

	public String getRestaurantCategoryStatus() {
		return restaurantCategoryStatus;
	}

	public void setRestaurantCategoryStatus(String restaurantCategoryStatus) {
		this.restaurantCategoryStatus = restaurantCategoryStatus;
	}
}
