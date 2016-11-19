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
@Table
public class HotelServices {
	
	@Id @GeneratedValue 
	@Column(name="SERVICE_ID")
	private long id;
	
	@Column(name="SERVICE_STATUS")
	private String serviceStatus;
	
	@Column(name="SERVICE_NAME")
	private String serviceName;
	
	@OneToMany(mappedBy = "hotelServices", fetch=FetchType.EAGER, cascade = CascadeType.MERGE)
	private List<HotelServicesGroup> hotelServiceParentGroups;
	
	@OneToMany(mappedBy="hotelServices", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceLanguage> serviceLanguages;

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

	public List<HotelServicesGroup> getHotelServiceGroups() {
		return hotelServiceParentGroups;
	}
	
	public void addHotelServiceGroup(HotelServicesGroup hotelServicesGroup) {
		this.hotelServiceParentGroups.add(hotelServicesGroup);
		if(hotelServicesGroup.getHotelServices() !=this) {
			hotelServicesGroup.setHotelServices(this);
		}
	}

	public void setHotelServiceGroups(List<HotelServicesGroup> hotelServiceParentGroups) {
		this.hotelServiceParentGroups = hotelServiceParentGroups;
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

	public void addServiceLanguage(ServiceLanguage serviceLanguage) {
        this.serviceLanguages.add(serviceLanguage);
        if (serviceLanguage.getHotelServices() != this) {
        	serviceLanguage.setHotelServices(this);
        }
    }
	
	public void setServiceLanguages(List<ServiceLanguage> serviceLanguages) {
		this.serviceLanguages = serviceLanguages;
	} 

}
