package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NOTIFICATIONDELIVERYBOY")
public class NotificationDeliveryBoy {
	@Id
	@GeneratedValue
	@Column(name="NOTIFICATION_ID")
	private long id;
	
	@Column(name="ROOM_ID")
	private long roomId;
	
	@Column(name="ORDER_ID")
	private long orderId;

	 
	
	@Column(name="READ_STATUS")
	private String readStatus;
	
	@Column(name="ORDER_STATUS")
	private String orderStatus;
	
	@Column(name="DELIVERY_BOY_ID")
	private long deliveryBoyId;
	
	@Column(name="DELIVERY_BOY_NAME")
	private String deliveryBoyName;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getRoomId() {
		return roomId;
	}

	public void setRoomId(long roomId) {
		this.roomId = roomId;
	}

	public long getOrderId() {
		return orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	 

	public String getReadStatus() {
		return readStatus;
	}

	public void setReadStatus(String readStatus) {
		this.readStatus = readStatus;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public long getDeliveryBoyId() {
		return deliveryBoyId;
	}

	public void setDeliveryBoyId(long deliveryBoyId) {
		this.deliveryBoyId = deliveryBoyId;
	}

	public String getDeliveryBoyName() {
		return deliveryBoyName;
	}

	public void setDeliveryBoyName(String deliveryBoyName) {
		this.deliveryBoyName = deliveryBoyName;
	}
	
}
