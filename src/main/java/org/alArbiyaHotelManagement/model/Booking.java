package org.alArbiyaHotelManagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Booking")
public class Booking {
	
	public Booking(long id, Date startDate, Date endDate, UserDetails userDetails) {
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.userDetails = userDetails;
	}
	
	@Id @GeneratedValue 
	@Column(name="ROOM_ID")
	private long id;
	
	private Date startDate;
	
	private Date endDate;
	
	@OneToOne
	UserDetails userDetails;
	
	@ManyToOne
	private Room room;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
		if(this.room.getBookings() != null && !this.room.getBookings().contains(this)) {
			this.room.getBookings().add(this);
		}
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

}
