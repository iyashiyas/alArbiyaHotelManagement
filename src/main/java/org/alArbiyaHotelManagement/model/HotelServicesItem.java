package org.alArbiyaHotelManagement.model;
 
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
/*
@Entity
@Table(name="HOTEL_SERVICES_ITEM")*/
public class HotelServicesItem {
	
	@Id @GeneratedValue 
	@Column(name="SERVICE_ITEM_ID")
	private long id;
	
	@Column(name="SERVICE_ITEM_STATUS")
	private String serviceItemStatus;
	
	@Column(name="SERVICE_ITEM_NAME")
	private String serviceItemName;
	
	@Column(name="SERVICE_ITEM_CODE")
	private String serviceItemCode;
	
	@Column(name="SERVICE_ITEM_DESCRIPTION")
	private String serviceItemDescription;
	
	@Column(name="PRICE")
	private String price;
	
	
/*	@JsonIgnore
	@OneToMany(mappedBy = "hotelServicesItem", fetch=FetchType.EAGER, cascade = CascadeType.MERGE)
	private List<HotelServicesGroup> hotelServiceParentGroups;
	*/
	
	@JsonIgnore
	@OneToMany(mappedBy="hotelServicesItem", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceLanguage> serviceLanguages;
	
	@JsonIgnore
	@ManyToOne
	private HotelServicesCategory hotelServicesCategory;

	@Column(name="IMAGE_URL_NAME")
	private String imageUrlName;
	
	@Column(name="BARCODEIMAGE_URL_NAME")
	private String barCodeImageUrlName;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getServiceItemStatus() {
		return serviceItemStatus;
	}

	public void setServiceItemStatus(String serviceItemStatus) {
		this.serviceItemStatus = serviceItemStatus;
	}

	public String getServiceItemName() {
		return serviceItemName;
	}

	public void setServiceItemName(String serviceItemName) {
		this.serviceItemName = serviceItemName;
	}
	
	public String getServiceItemDescription() {
		return serviceItemDescription;
	}

	public void setServiceItemDescription(String serviceItemDescription) {
		this.serviceItemDescription = serviceItemDescription;
	}

	/*public List<HotelServicesGroup> getHotelServiceParentGroups() {
		return hotelServiceParentGroups;
	}
	
	public void addHotelServiceParentGroup(HotelServicesGroup hotelServicesGroup) {
		this.hotelServiceParentGroups.add(hotelServicesGroup);
		if(hotelServicesGroup.getHotelServicesItem() !=this) {
			hotelServicesGroup.setHotelServicesItem(this);
		}
	}

	public void setHotelServiceParentGroups(
			List<HotelServicesGroup> hotelServiceParentGroups) {
		this.hotelServiceParentGroups = hotelServiceParentGroups;
	}*/

	public List<ServiceLanguage> getServiceLanguages() {
		return serviceLanguages;
	}

	/*public void addServiceLanguage(ServiceLanguage serviceLanguage) {
        this.serviceLanguages.add(serviceLanguage);
        if (serviceLanguage.getHotelServicesItem() != this) {
        	serviceLanguage.setHotelServicesItem(this);
        }
    }*/
	
	public void setServiceLanguages(List<ServiceLanguage> serviceLanguages) {
		this.serviceLanguages = serviceLanguages;
	}

/*	public HotelServicesCategory getHotelServicesCategory() {
		return hotelServicesCategory;
	}

	public void setHotelServicesCategory(HotelServicesCategory hotelServicesCategory) {
		this.hotelServicesCategory = hotelServicesCategory;
		if(hotelServicesCategory.getHotelServicesItems() != null && !hotelServicesCategory.getHotelServicesItems().contains(this)) {
			hotelServicesCategory.getHotelServicesItems().add(this);
		}
	}*/

	public String getImageUrlName() {
		return this.imageUrlName;
	}
	
	public void setImageUrlName(String imageUrlName) {
		// TODO Auto-generated method stub
		this.imageUrlName = imageUrlName; 
	}

	public String getServiceItemCode() {
		return serviceItemCode;
	}

	public void setServiceItemCode(String serviceItemCode) {
		this.serviceItemCode = serviceItemCode;
	}

	public String getBarCodeImageUrlName() {
		return barCodeImageUrlName;
	}

	public void setBarCodeImageUrlName(String barCodeImageUrlName) {
		this.barCodeImageUrlName = barCodeImageUrlName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	} 

}
