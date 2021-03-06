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
@Table(name="SERVICE_LANGUAGE")
public class ServiceLanguage {
	
	@Id @GeneratedValue
	@Column(name="HOTEL_SERVICE_LANGUAGE_ID")
	private long id;
	
	@Column(name="HOTEL_SERVICE_LANGUAGE_NAME") 
	private String hotelServiceLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=true)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="SERVICE_ITEM_ID", nullable=true)
	private Product hotelServicesItem;

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

	public Product getHotelServicesItem() {
		return hotelServicesItem;
	}

	public void setHotelServicesItem(Product hotelServicesItem) {
		this.hotelServicesItem = hotelServicesItem;
		if (hotelServicesItem.getServiceLanguages()!=null && !hotelServicesItem.getServiceLanguages().contains(this)) {
			hotelServicesItem.getServiceLanguages().add(this);
        }
	}
	
	public boolean isEmpty() {
		return (this.getHotelServiceLanguageName() == null || this.getHotelServiceLanguageName().isEmpty());
	}

}
