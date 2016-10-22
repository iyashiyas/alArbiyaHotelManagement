package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="UNIT_LANGUAGE")
public class UnitLanguage extends Language{
	
	@Column(name="UNIT_LANGUAGE_NAME") private String unitLanguageName;
	
	@ManyToOne UnitLanguageGroup unitLanguageGroup;

	public String getUnitLanguageName() {
		return unitLanguageName;
	}

	public void setUnitLanguageName(String unitLanguageName) {
		this.unitLanguageName = unitLanguageName;
	}

	public UnitLanguageGroup getUnitLanguageGroup() {
		return unitLanguageGroup;
	}

	public void setUnitLanguageGroup(UnitLanguageGroup unitLanguageGroup) {
		this.unitLanguageGroup = unitLanguageGroup;
	}
	
	

}
