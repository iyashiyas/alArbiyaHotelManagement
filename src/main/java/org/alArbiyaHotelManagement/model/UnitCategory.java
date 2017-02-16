package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UNIT_CATEGORY")
public class UnitCategory {

	@Id @GeneratedValue 
	@Column(name="UNIT_CATEGORY_ID")
	private long id;
	
	@Column(name="UNIT_CATEGORY_NAME") 
	private String unitCategoryName;
	
	@Column(name="UNIT_CATEGORY_STATUS") 
	private String unitCategoryStatus;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUnitCategoryName() {
		return unitCategoryName;
	}

	public void setUnitCategoryName(String unitCategoryName) {
		this.unitCategoryName = unitCategoryName;
	}

	public String getUnitCategoryStatus() {
		return unitCategoryStatus;
	}

	public void setUnitCategoryStatus(String unitCategoryStatus) {
		this.unitCategoryStatus = unitCategoryStatus;
	}
}
