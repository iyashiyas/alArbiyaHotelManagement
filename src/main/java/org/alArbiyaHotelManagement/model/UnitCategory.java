package org.alArbiyaHotelManagement.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "UNIT_CATEGORY")
public class UnitCategory {
	
	@Id @GeneratedValue 
	@Column(name="UNIT_CATEGORY_ID")
	private long id;
	
	@Column(name="CATEGORY_NAME") 
	private String categoryName;
	
	@Column(name="CATEGORY_CODE") 
	private String categoryCode;
	
	@OneToMany(mappedBy="unitCategory") 
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

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
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
				+ ", categoryCode=" + categoryCode + ", units=" + units
				+ "]";
	}
	
	

}
