package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ROOM")
public class Room {
	
	@Id @GeneratedValue 
	@Column(name="ROOM_ID")
	private long id;
	
	@Column(name="ROOM_NAME") 
	private String roomName;
	
	@Column(name="ROOM_CODE") 
	private String roomCode;
	
	@Column(name="ROOM_PRICE") 
	private Float roomPrice;
	
	@Column(name="ROOM_DESCRIPTION") 
	private String roomDescription;
	
	@Column(name="ROOM_STATUS") 
	private String roomStatus;
	
	//one to many bookings

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getRoomCode() {
		return roomCode;
	}

	public void setRoomCode(String roomCode) {
		this.roomCode = roomCode;
	}

	public Float getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(Float roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomDescription() {
		return roomDescription;
	}

	public void setRoomDescription(String roomDescription) {
		this.roomDescription = roomDescription;
	}

	public String getRoomStatus() {
		return roomStatus;
	}

	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}

 
	
	
	
	//Many toone flor
	
	//One to one room type
}
