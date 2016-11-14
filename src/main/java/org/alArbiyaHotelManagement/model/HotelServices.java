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
	private List<HotelServicesGroup> hotelServiceGroups;

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
		return hotelServiceGroups;
	}
	
	public void addHotelServiceGroup(HotelServicesGroup hotelServicesGroup) {
		this.hotelServiceGroups.add(hotelServicesGroup);
		if(hotelServicesGroup.getHotelServices() !=this) {
			hotelServicesGroup.setHotelServices(this);
		}
	}

	public void setHotelServiceGroups(List<HotelServicesGroup> hotelServiceGroups) {
		this.hotelServiceGroups = hotelServiceGroups;
	} 

}
