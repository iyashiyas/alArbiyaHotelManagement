package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="COUNTRY")
public class Country {
	
	@Id @GeneratedValue	private long id;
	@Column	private String countryName;
	@Column	private String countryImageUrl;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCountryImageUrl() {
		return countryImageUrl;
	}

	public void setCountryImageUrl(String countryImageUrl) {
		this.countryImageUrl = countryImageUrl;
	}

	@Override
	public String toString() {
		return "Country [id=" + id + ", countryName=" + countryName
				+ ", countryImageUrl=" + countryImageUrl + "]";
	}

}
