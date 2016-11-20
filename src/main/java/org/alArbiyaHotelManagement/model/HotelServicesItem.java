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

@Entity
@Table(name="HOTEL_SERVICES_ITEM")
public class HotelServicesItem {
	
	@Id @GeneratedValue 
	@Column(name="SERVICE_ID")
	private long id;
	
	@Column(name="SERVICE_STATUS")
	private String serviceStatus;
	
	@Column(name="SERVICE_NAME")
	private String serviceName;
	
	@Column(name="SERVICE_DESCRIPTION")
	private String serviceDescription;
	
	@OneToMany(mappedBy = "hotelServices", fetch=FetchType.EAGER, cascade = CascadeType.MERGE)
	private List<HotelServicesGroup> hotelServiceParentGroups;
	
	@OneToMany(mappedBy="hotelServices", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceLanguage> serviceLanguages;
	
	@ManyToOne
	private HotelServicesCategory hotelServicesCategory;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getServiceStatus() {
		return serviceStatus;
	}

	public void setServiceStatus(String serviceStatus) {
		this.serviceStatus = serviceStatus;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	
	public String getServiceDescription() {
		return serviceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}

	public List<HotelServicesGroup> getHotelServiceParentGroups() {
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
	}

	public List<ServiceLanguage> getServiceLanguages() {
		return serviceLanguages;
	}

	public void addServiceLanguage(ServiceLanguage serviceLanguage) {
        this.serviceLanguages.add(serviceLanguage);
        if (serviceLanguage.getHotelServicesItem() != this) {
        	serviceLanguage.setHotelServicesItem(this);
        }
    }
	
	public void setServiceLanguages(List<ServiceLanguage> serviceLanguages) {
		this.serviceLanguages = serviceLanguages;
	}

	public HotelServicesCategory getHotelServicesCategory() {
		return hotelServicesCategory;
	}

	public void setHotelServicesCategory(HotelServicesCategory hotelServicesCategory) {
		this.hotelServicesCategory = hotelServicesCategory;
		if(hotelServicesCategory.getHotelServicesItems() != null && !hotelServicesCategory.getHotelServicesItems().contains(this)) {
			hotelServicesCategory.getHotelServicesItems().add(this);
		}
	} 

}
