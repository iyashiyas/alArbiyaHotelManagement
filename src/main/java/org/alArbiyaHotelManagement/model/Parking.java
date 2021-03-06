package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
import javax.persistence.Table;

@Entity
@Table(name="PARKING")
public class Parking {
 
	@Id @GeneratedValue 
	@Column(name="PARKING_ID")
	private long id;
	 
	@Column(name="PARKING_NAME")
	private String parkingName;
	
	@Column(name="PARKING_CATEGORY")
	private String parkingCategory;
	
	@Column(name="PARKING_STATUS")
	private String parkingStatus;
	 
	 
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getParkingName() {
		return parkingName;
	}

	public void setParkingName(String parkingName) {
		this.parkingName = parkingName;
	}

	public String getParkingCategory() {
		return parkingCategory;
	}

	public void setParkingCategory(String parkingCategory) {
		this.parkingCategory = parkingCategory;
	}

	 
	public String getParkingStatus() {
		return parkingStatus;
	}

	public void setParkingStatus(String parkingStatus) {
		this.parkingStatus = parkingStatus;
	}

 
}
