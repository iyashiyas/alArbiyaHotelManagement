package org.alArbiyaHotelManagement.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.alArbiyaHotelManagement.enums.Status;

@Entity
@Table(name = "UNIT_MAJOR_CATEGORY")
public class UnitMajorCategory {
	
	@Id @GeneratedValue 
	private long id;
	
	@Column(name="CATEGORY_NAME") 
	private String categoryName;
	
	@Column(name="CATEGORY_STATUS") 
	private Status categoryStatus;
	
	@OneToMany(mappedBy="unitMajorCategory") 
	private Set<Unit> units;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Status getCategoryStatus() {
		return categoryStatus;
	}

	public void setCategoryStatus(Status categoryStatus) {
		this.categoryStatus = categoryStatus;
	}

	public Set<Unit> getUnits() {
		return units;
	}

	public void setUnits(Set<Unit> units) {
		this.units = units;
	}

	@Override
	public String toString() {
		return "UnitMajorCategory [id=" + id + ", categoryName=" + categoryName
				+ ", categoryStatus=" + categoryStatus + ", units=" + units
				+ "]";
	}
	
	

}
