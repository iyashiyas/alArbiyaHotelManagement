package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="LANGUAGE")
@Inheritance(strategy=InheritanceType.JOINED)
public class Language {
	
	@Id @GeneratedValue
	@Column(name="LANGUAGE_ID")
	private long id;
	
	@Column(name="LANGUAGE_NAME") 
	private String languageName;
	
	@Column(name="LANGUAGE_STATUS") 
	private String status;

	@OneToOne 
	private Country country;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLanguageName() {
		return languageName;
	}

	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "Language [id=" + id + ", languageName=" + languageName
				+ ", status=" + status + ", country=" + country + "]";
	}

	
}
