package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="CARRENTAL_LANGUAGE")
public class CarRentalLanguage {

	@Id @GeneratedValue
	@Column(name="CARRENTAL_LANGUAGE_ID")
	private long id;
	
	@Column(name="CARRENTAL_LANGUAGE_NAME") 
	private String carRentalLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="CARRENTAL_ID")
	private CarRental carRental;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCarRentalLanguageName() {
		return carRentalLanguageName;
	}

	public void setCarRentalLanguageName(String carRentalLanguageName) {
		this.carRentalLanguageName = carRentalLanguageName;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public CarRental getCarRental() {
		return carRental;
	}

	public void setCarRental(CarRental carRental) {
		this.carRental = carRental;
		if (!carRental.getCarRentalLanguages().contains(this)) {
			carRental.getCarRentalLanguages().add(this);
        }
	}
	public boolean isEmpty() {
		return (this.getCarRentalLanguageName() == null || this.getCarRentalLanguageName().isEmpty());
	}

}
