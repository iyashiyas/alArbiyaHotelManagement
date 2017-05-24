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
@Table(name="SERVICE_ITEM_CATEGORY_LANGUAGE")
public class ServiceItemCategoryLanguage {

	@Id @GeneratedValue
	@Column(name="SERVICE_ITEM_CATEGORY_LANGUAGE_ID")
	private long id;
	
	@Column(name="SERVICE_ITEM_CATEGORY_LANGUAGE_NAME") 
	private String serviceItemCategoryLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="SERVICE_ITEM_CATEGORY_ID")
	private ServiceItemCategory serviceItemCategory;
	 
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getServiceItemCategoryLanguageName() {
		return serviceItemCategoryLanguageName;
	}


	public void setServiceItemCategoryLanguageName(
			String serviceItemCategoryLanguageName) {
		this.serviceItemCategoryLanguageName = serviceItemCategoryLanguageName;
	}


	public Language getLanguage() {
		return language;
	}


	public void setLanguage(Language language) {
		this.language = language;
	}


	public ServiceItemCategory getServiceItemCategory() {
		return serviceItemCategory;
	}


	public void setServiceItemCategory(ServiceItemCategory serviceItemCategory) {
		this.serviceItemCategory = serviceItemCategory;
		
		 if (!serviceItemCategory.getServiceItemCategoryLanguage().contains(this)) {
			 serviceItemCategory.getServiceItemCategoryLanguage().add(this);
	        }
	}

	
	public boolean isEmpty() {
		return (this.getServiceItemCategoryLanguageName() == null || this.getServiceItemCategoryLanguageName().isEmpty());
	}

	 
}
