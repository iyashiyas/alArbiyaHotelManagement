package org.alArbiyaHotelManagement.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="BOOKING")
public class Booking {
	
	public Booking(long id, Date startDate, Date endDate, UserDetails userDetails) {
		this.room.setId(id);
		this.startDate = startDate;
		this.endDate = endDate;
		this.userDetails = userDetails;
	}
	
	@Id @GeneratedValue 
	@Column(name="BOOKING_ID")
	private long id;
	
	@Column(name="START_DATE")
	private Date startDate;
	
	@Column(name="END_DATE")
	private Date endDate;
	
	@OneToOne(cascade={CascadeType.MERGE})
	@JoinColumn(name="USER_ID")
	private UserDetails userDetails;
	
	@ManyToOne
	@JoinColumn(name="ROOM_ID")
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
		if(this.userDetails.getBooking() != null && !this.userDetails.getBooking().contains(this)) {
			this.userDetails.getBooking().add(this);
		}
	}

}
