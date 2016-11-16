package org.alArbiyaHotelManagement.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="SERVICE_UNIT_LANGUAGE")
public class ServiceUnitLanguage {
	
	@Id @GeneratedValue
	@Column(name="SERVICE_UNIT_LANGUAGE_ID")
	private long id;
	
	@Column(name="SERVICE_UNIT_LANGUAGE_PRICE") 
	private BigDecimal serviceUnitLanguagePrice;

	@OneToOne
	@JoinColumn(name="UNIT_LANGUAGE_ID", nullable=false)
	private UnitLanguage unitLanguage;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getUnitLanguageName() {
		return serviceUnitLanguagePrice;
	}

	public void setUnitLanguageName(BigDecimal unitLanguageName) {
		this.serviceUnitLanguagePrice = unitLanguageName;
	}

	public UnitLanguage getUnitLanguage() {
		return unitLanguage;
	}

	public void setUnitLanguage(UnitLanguage unitLanguage) {
		this.unitLanguage = unitLanguage;
	}
}
