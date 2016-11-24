package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UNIT_LANGUAGE_GROUP")
public class CarRentalLanguageGroup {


	@Id @GeneratedValue
	@Column(name="CARRENTAL_LANGUAGE_GROUP_ID")
	private long id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
}
