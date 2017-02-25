package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="CARRENTAL_CATEGORY")
public class CarRentalCategory {

	@Id @GeneratedValue 
	@Column(name="CARRENTAL_CATEGORY_ID")
	private long id;
	
	@Column(name="CARRENTAL_CATEGORY_NAME") 
	private String carRenatalCategoryName;
	
	@Column(name="CARRENTAL_CATEGORY_STATUS") 
	private String carRenatalCategoryStatus;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCarRenatalCategoryName() {
		return carRenatalCategoryName;
	}

	public void setCarRenatalCategoryName(String carRenatalCategoryName) {
		this.carRenatalCategoryName = carRenatalCategoryName;
	}

	public String getCarRenatalCategoryStatus() {
		return carRenatalCategoryStatus;
	}

	public void setCarRenatalCategoryStatus(String carRenatalCategoryStatus) {
		this.carRenatalCategoryStatus = carRenatalCategoryStatus;
	}
}
