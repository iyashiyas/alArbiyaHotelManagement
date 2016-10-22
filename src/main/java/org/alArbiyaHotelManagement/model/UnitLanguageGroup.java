package org.alArbiyaHotelManagement.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="UNIT_LANGUAGE_GROUP")
public class UnitLanguageGroup {
	
	@Id @GeneratedValue 
	private long id;
	
	@OneToMany(mappedBy="unitLanguageGroup") 
	private Set<UnitLanguage> unitLanguage;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Set<UnitLanguage> getUnitLanguage() {
		return unitLanguage;
	}

	public void setUnitLanguage(Set<UnitLanguage> unitLanguage) {
		this.unitLanguage = unitLanguage;
	}
	
	

}
