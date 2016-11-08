package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="FLOOR")
public class Floor {

	@Id @GeneratedValue 
	@Column(name="FLOOR_ID")
	private long id;
	
	@Column(name="FLOOR_NAME") 
	private String floorName;
	
	@Column(name="FLOOR_CODE") 
	private String floorCode;
	
	@Column(name="FLOOR_TOTALROOM") 
	private long floorTotalRoom;
	
	@Column(name="FLOOR_DESCRIPTION") 
	private String floorDescription;
	
	@Column(name="FLOOR_STATUS") 
	private String floorStatus;

	@ManyToOne
	@JoinColumn(name="BUILDING_ID")
	private Building building;

	public String getFloorStatus() {
		return floorStatus;
	}

	public void setFloorStatus(String floorStatus) {
		this.floorStatus = floorStatus;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFloorName() {
		return floorName;
	}

	public void setFloorName(String floorName) {
		this.floorName = floorName;
	}

	public String getFloorCode() {
		return floorCode;
	}

	public void setFloorCode(String floorCode) {
		this.floorCode = floorCode;
	}

	public long getFloorTotalRoom() {
		return floorTotalRoom;
	}

	public void setFloorTotalRoom(long floorTotalRoom) {
		this.floorTotalRoom = floorTotalRoom;
	}

	public String getFloorDescription() {
		return floorDescription;
	}

	public void setFloorDescription(String floorDescription) {
		this.floorDescription = floorDescription;
	}

	public Building getBuilding() {
		return building;
	}

	public void setBuilding(Building building) {
		this.building = building;
        if (building.getFloors()!=null && !building.getFloors().contains(this)) {
        	building.getFloors().add(this);
        }
	}
}
