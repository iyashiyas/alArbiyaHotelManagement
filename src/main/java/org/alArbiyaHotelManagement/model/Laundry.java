package org.alArbiyaHotelManagement.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="LAUNDRY")
public class Laundry {


	@Id @GeneratedValue 
	@Column(name="LAUNDRY_ID")
	private long id;
	
	@Column(name="LAUNDRY_ITEM_NAME") 
	private String laundryItemName;
	
	@Column(name="LAUNDRY_ITEM_DESCRIPTION") 
	private String laundryItemDescription;
	
	@Column(name="LAUNDRY_ITEM_STATUS") 
	private String laundryItemStatus;
	
	@Column(name="LAUNDRY_ITEM_PRICE") 
	private String laundryItemPrice;
	
	@Column(name="LAUNDRY_ITEM_TIMEFINISH") 
	private String laundryItemTimeFinish;
	
	@OneToMany(mappedBy="laundry", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<LaundryLanguage> laundryLanguages;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLaundryItemName() {
		return laundryItemName;
	}

	public void setLaundryItemName(String laundryItemName) {
		this.laundryItemName = laundryItemName;
	}

	public String getLaundryItemDescription() {
		return laundryItemDescription;
	}

	public void setLaundryItemDescription(String laundryItemDescription) {
		this.laundryItemDescription = laundryItemDescription;
	}

	public String getLaundryItemStatus() {
		return laundryItemStatus;
	}

	public void setLaundryItemStatus(String laundryItemStatus) {
		this.laundryItemStatus = laundryItemStatus;
	}

	public String getLaundryItemPrice() {
		return laundryItemPrice;
	}

	public void setLaundryItemPrice(String laundryItemPrice) {
		this.laundryItemPrice = laundryItemPrice;
	}

	public String getLaundryItemTimeFinish() {
		return laundryItemTimeFinish;
	}

	public void setLaundryItemTimeFinish(String laundryItemTimeFinish) {
		this.laundryItemTimeFinish = laundryItemTimeFinish;
	}

	public List<LaundryLanguage> getLaundryLanguages() {
		return laundryLanguages;
	}
	
	public void addLaundryLanguages(LaundryLanguage laundryLanguage) {
        this.laundryLanguages.add(laundryLanguage);
        if (laundryLanguage.getLaundry() != this) {
        	laundryLanguage.setLaundry(this);
        }
    }

	public void setLaundryLanguages(List<LaundryLanguage> laundryLanguages) {
		this.laundryLanguages = laundryLanguages;
	}

}
