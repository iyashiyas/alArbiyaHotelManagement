package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LAUNDRY_CATEGORY")
public class LaundryCategory {

	@Id @GeneratedValue 
	@Column(name="LAUNDRY_CATEGORY_ID")
	private long id;
	
	@Column(name="LAUNDRY_CATEGORY_NAME") 
	private String laundryCategoryName;
	
	@Column(name="LAUNDRY_CATEGORY_STATUS") 
	private String laundryCategoryStatus;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLaundryCategoryName() {
		return laundryCategoryName;
	}

	public void setLaundryCategoryName(String laundryCategoryName) {
		this.laundryCategoryName = laundryCategoryName;
	}

	public String getLaundryCategoryStatus() {
		return laundryCategoryStatus;
	}

	public void setLaundryCategoryStatus(String laundryCategoryStatus) {
		this.laundryCategoryStatus = laundryCategoryStatus;
	}
}
