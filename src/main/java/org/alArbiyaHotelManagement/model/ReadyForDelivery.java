package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id; 
import javax.persistence.Table;

@Entity
@Table(name="READY_FOR_DELIVERY")
public class ReadyForDelivery {

	@Id 
	@GeneratedValue
	@Column(name="READY_FOR_DELIVERY_ID")
	private long id;
	
	@Column(name="ROOM_NAME")
	private String roomName;
	
	@Column(name="ROOM_ID")
	private long roomId;
	
	@Column(name="ORDER_ID")
	private long orderId;
	 
	@Column(name="DELIVERY_BOY_NAME")
	private String deliveryBoyName;
	 
	@Column(name="STATUS")
	private String status;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	 
	public long getOrderId() {
		return orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

 

	public String getDeliveryBoyName() {
		return deliveryBoyName;
	}

	public void setDeliveryBoyName(String deliveryBoyName) {
		this.deliveryBoyName = deliveryBoyName;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public long getRoomId() {
		return roomId;
	}

	public void setRoomId(long roomId) {
		this.roomId = roomId;
	}

	 

	 
	  
}
