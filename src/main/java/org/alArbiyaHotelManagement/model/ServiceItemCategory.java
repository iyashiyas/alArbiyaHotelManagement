package org.alArbiyaHotelManagement.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="SERVICE_ITEM_CATEGORY")
public class ServiceItemCategory {
 
	@Id @GeneratedValue 
	@Column(name="SERVICE_ITEM_CATEGORY_ID")
	private long id;
	
	@Column(name="SERVICE_ITEM_CATEGORY_NAME") 
	private String serviceItemCategoryName;
	
	@Column(name="SERVICE_ITEM_CATEGORY_STATUS") 
	private String serviceItemCategoryStatus;
	
	@OneToMany(mappedBy="serviceItemCategory", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceItemCategoryLanguage> serviceItemCategoryLanguage;
	 
	@JsonIgnore
	@ManyToOne 	
	@JoinColumn(name="SERVICE_CATEGORY_ID")
	private HotelServicesCategory hotelServicesCategory;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getServiceItemCategoryName() {
		return serviceItemCategoryName;
	}

	public void setServiceItemCategoryName(String serviceItemCategoryName) {
		this.serviceItemCategoryName = serviceItemCategoryName;
	}

	public String getServiceItemCategoryStatus() {
		return serviceItemCategoryStatus;
	}

	public void setCoffeeServiceItemCategoryStatus(String serviceItemCategoryStatus) {
		this.serviceItemCategoryStatus = serviceItemCategoryStatus;
	}

	public List<ServiceItemCategoryLanguage> getServiceItemCategoryLanguage() {
		return serviceItemCategoryLanguage;
	}
	public void addCoffeeShopCategoryLanguages(ServiceItemCategoryLanguage serviceItemCategoryLanguage) {
        this.serviceItemCategoryLanguage.add(serviceItemCategoryLanguage);
        if (serviceItemCategoryLanguage.getServiceItemCategory() != this) {
        	serviceItemCategoryLanguage.setServiceItemCategory(this);
        }
    }

	public void setServiceItemCategoryLanguage(
			List<ServiceItemCategoryLanguage> serviceItemCategoryLanguage) {
		this.serviceItemCategoryLanguage = serviceItemCategoryLanguage;
	}

	public HotelServicesCategory getHotelServicesCategory() {
		return hotelServicesCategory;
	}

	public void setHotelServicesCategory(HotelServicesCategory hotelServicesCategory) {
		this.hotelServicesCategory = hotelServicesCategory;
	}

	public void setServiceItemCategoryStatus(String serviceItemCategoryStatus) {
		this.serviceItemCategoryStatus = serviceItemCategoryStatus;
	}

	 

}
