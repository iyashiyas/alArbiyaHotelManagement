package org.alArbiyaHotelManagement.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="CARRENTAL")
public class CarRental {

	@Id @GeneratedValue 
	@Column(name="RENTAL_ID")
	private long id;
	
	@Column(name="ITEM_NAME") 
	private String carRentalItemName;
	
	@Column(name="CARRENTAL_STATUS") 
	private String carRentalStatus;
	
	@Column(name="DESCRIPTION") 
	private String carRentalDescription;
	
	@Column(name="PRICE") 
	private String carRentalPrice;
	
	@Column(name="CARRENTAL_CATEGORY")
	private String carRentalCategory;
	
	@OneToMany(mappedBy="carRental", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<CarRentalLanguage> carRentalLanguages;

	public long getId() {
		return id;
	}

	public String getCarRentalStatus() {
		return carRentalStatus;
	}

	public void setCarRentalStatus(String carRentalStatus) {
		this.carRentalStatus = carRentalStatus;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCarRentalItemName() {
		return carRentalItemName;
	}

	public void setCarRentalItemName(String carRentalItemName) {
		this.carRentalItemName = carRentalItemName;
	}

	public String getCarRentalDescription() {
		return carRentalDescription;
	}

	public void setCarRentalDescription(String carRentalDescription) {
		this.carRentalDescription = carRentalDescription;
	}

	public String getCarRentalPrice() {
		return carRentalPrice;
	}

	public void setCarRentalPrice(String carRentalPrice) {
		this.carRentalPrice = carRentalPrice;
	}

	public String getCarRentalCategory() {
		return carRentalCategory;
	}

	public void setCarRentalCategory(String carRentalCategory) {
		this.carRentalCategory = carRentalCategory;
	}

	public List<CarRentalLanguage> getCarRentalLanguages() {
		return carRentalLanguages;
	}
	
	public void addCarRentalLanguages(CarRentalLanguage carRentalLanguage) {
        this.carRentalLanguages.add(carRentalLanguage);
        if (carRentalLanguage.getCarRental() != this) {
        	carRentalLanguage.setCarRental(this);
        }
    }

	public void setCarRentalLanguages(List<CarRentalLanguage> carRentalLanguages) {
		this.carRentalLanguages = carRentalLanguages;
	}
	
}
