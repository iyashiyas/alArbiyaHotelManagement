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
@Table(name="HOTEL_SERVICES_GROUP")
public class HotelServicesGroup {
	
	@Id @GeneratedValue 
	@Column(name="HOTEL_SERVICE_GROUP_ID")
	private long id;
	
	@ManyToOne
	private HotelServices hotelServices;
	
	@OneToMany(mappedBy="hotelServicesGroup", fetch=FetchType.EAGER, cascade=CascadeType.MERGE)
	private List<HotelServicesValue> hotelServicesValues;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public HotelServices getHotelServices() {
		return hotelServices;
	}

	public void setHotelServices(HotelServices hotelServices) {
		this.hotelServices = hotelServices;
		if(!hotelServices.getHotelServiceGroups().contains(this)) {
			hotelServices.getHotelServiceGroups().add(this);
		}
	}

	public List<HotelServicesValue> getHotelServicesValues() {
		return hotelServicesValues;
	}

	public void addHotelServicesValues(HotelServicesValue hotelServicesValue) {
		this.hotelServicesValues.add(hotelServicesValue);
		if(hotelServicesValue.getHotelServicesGroup() != this) {
			hotelServicesValue.setHotelServicesGroup(this);
		}
	}
	
	
	public void setHotelServicesValues(List<HotelServicesValue> hotelServicesValues) {
		this.hotelServicesValues = hotelServicesValues;
	}

}
