package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="LAUNDRY_LANGUAGE")
public class LaundryLanguage {

	
	@Id @GeneratedValue
	@Column(name="LAUNDRY_LANGUAGE_ID")
	private long id;
	
	@Column(name="LAUNDRY_LANGUAGE_NAME") 
	private String laundryLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="LAUNDRY_ID")
	private Laundry laundry;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLaundryLanguageName() {
		return laundryLanguageName;
	}

	public void setLaundryLanguageName(String laundryLanguageName) {
		this.laundryLanguageName = laundryLanguageName;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public Laundry getLaundry() {
		return laundry;
	}

	public void setLaundry(Laundry laundry) {
		this.laundry = laundry;
		if (!laundry.getLaundryLanguages().contains(this)) {
			laundry.getLaundryLanguages().add(this);
        }
	}
	 
	public boolean isEmpty() {
		return (this.getLaundryLanguageName() == null || this.getLaundryLanguageName().isEmpty());
	}
 

}
