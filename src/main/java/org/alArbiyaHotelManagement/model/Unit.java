package org.alArbiyaHotelManagement.model;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="UNIT")
public class Unit {
	
	@Id @GeneratedValue 
	@Column(name="UNIT_ID")
	private long id;
	
	@Column(name="UNIT_NAME") 
	private String unitName;
	
	@Column(name="MEASUREMENT_UNIT") 
	private String measurementUnit;
	
	@Column(name="UNIT_STATUS") 
	private String unitStatus;
	
	@Column(name="UNIT_DESCRIPTION") 
	private String unitDescription;
	
	@Column(name="UNIT_CATEGORY")
	private String unitCategory;
	
	@OneToMany(mappedBy="unit", cascade=CascadeType.MERGE, fetch=FetchType.EAGER) 
	private List<UnitLanguage> unitLanguages;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getMeasurementUnit() {
		return measurementUnit;
	}

	public void setMeasurementUnit(String measurementUnit) {
		this.measurementUnit = measurementUnit;
	}

	public String getUnitStatus() {
		return unitStatus;
	}

	public void setUnitStatus(String unitStatus) {
		this.unitStatus = unitStatus;
	}

	public String getUnitDescription() {
		return unitDescription;
	}

	public void setUnitDescription(String unitDescription) {
		this.unitDescription = unitDescription;
	}

	public String getUnitCategory() {
		return unitCategory;
	}

	public void setUnitCategory(String unitCategory) {
		this.unitCategory = unitCategory;
	}

	public List<UnitLanguage> getUnitLanguages() {
		return unitLanguages;
	}

	public void setUnitLanguages(List<UnitLanguage> unitLanguages) {
		this.unitLanguages = unitLanguages;
	} 
	
	
	
}
