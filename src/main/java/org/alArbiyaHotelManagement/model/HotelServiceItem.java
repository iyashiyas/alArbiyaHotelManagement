package org.alArbiyaHotelManagement.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

public class HotelServiceItem {
	
	@Id @GeneratedValue 
	@Column(name="SERVICE_ITEM_ID")
	private long id;
	
	@Column(name="ITEM_NAME")
	private String itemName;
	
	@Column(name="ITEM_DEESCRIPTION")
	private String itemDEscription;
	
	@OneToMany(mappedBy = "hotelServices", fetch=FetchType.EAGER, cascade = CascadeType.MERGE)
	private List<HotelServicesGroup> hotelServiceParentGroups;
	
	@OneToMany(mappedBy="hotelServices", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceLanguage> serviceLanguages;
	
	@ManyToOne
	private HotelServices hotelServices;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemDEscription() {
		return itemDEscription;
	}

	public void setItemDEscription(String itemDEscription) {
		this.itemDEscription = itemDEscription;
	}
	
	
	public List<HotelServicesGroup> getHotelServiceParentGroups() {
		return hotelServiceParentGroups;
	}

	public void setHotelServiceParentGroups(
			List<HotelServicesGroup> hotelServiceParentGroups) {
		this.hotelServiceParentGroups = hotelServiceParentGroups;
	}

	public List<ServiceLanguage> getServiceLanguages() {
		return serviceLanguages;
	}
	
	public void setServiceLanguages(List<ServiceLanguage> serviceLanguages) {
		this.serviceLanguages = serviceLanguages;
	}

	public HotelServices getHotelServices() {
		return hotelServices;
	}

	public void setHotelServices(HotelServices hotelServices) {
		this.hotelServices = hotelServices;
	} 
	
	
	

}
