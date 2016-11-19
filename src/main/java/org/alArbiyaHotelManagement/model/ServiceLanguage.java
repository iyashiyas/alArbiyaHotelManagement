package org.alArbiyaHotelManagement.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="SERVICE_LANGUAGE")
public class ServiceLanguage {
	
	@Id @GeneratedValue
	@Column(name="HOTEL_SERVICE_LANGUAGE_ID")
	private long id;
	
	@Column(name="HOTEL_SERVICE_LANGUAGE_NAME") 
	private String hotelServiceLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="SERVICE_ID")
	private HotelServices hotelServices;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getHotelServiceLanguageName() {
		return hotelServiceLanguageName;
	}

	public void setHotelServiceLanguageName(String hotelServiceLanguageName) {
		this.hotelServiceLanguageName = hotelServiceLanguageName;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public HotelServices getHotelServices() {
		return hotelServices;
	}

	public void setHotelServices(HotelServices hotelServices) {
		this.hotelServices = hotelServices;
		if (!hotelServices.getServiceLanguages().contains(this)) {
			hotelServices.getServiceLanguages().add(this);
        }
	}
}
