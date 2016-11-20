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
@Table(name="HOTEL_SERVICES_CATEGORY")
public class HotelServicesCategory {

	@Id @GeneratedValue 
	@Column(name="SERVICE_CATEGORY_ID")
	private long id;
	
	@Column(name="SERVICE_CATEGORY_STATUS")
	private String categoryStatus;
	
	@Column(name="SERVICE_CATEGORY_NAME")
	private String serviceCategoryName;
	
	@OneToMany(mappedBy = "hotelServicesCategory", fetch=FetchType.EAGER, cascade = CascadeType.MERGE)
	private List<HotelServicesItem> hotelServicesItems;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCategoryStatus() {
		return categoryStatus;
	}

	public void setCategoryStatus(String categoryStatus) {
		this.categoryStatus = categoryStatus;
	}

	public String getServiceCategoryName() {
		return serviceCategoryName;
	}

	public void setServiceCategoryName(String serviceCategoryName) {
		this.serviceCategoryName = serviceCategoryName;
	}

	public List<HotelServicesItem> getHotelServicesItems() {
		return hotelServicesItems;
	}

	public void addHotelServicesItem(HotelServicesItem hotelServicesItem) {
		this.hotelServicesItems.add(hotelServicesItem);
		if(hotelServicesItem.getHotelServicesCategory() != this) {
			hotelServicesItem.setHotelServicesCategory(this);
		}
	}
	
	public void setHotelServicesItems(List<HotelServicesItem> hotelServicesItems) {
		this.hotelServicesItems = hotelServicesItems;
	}
	
}
