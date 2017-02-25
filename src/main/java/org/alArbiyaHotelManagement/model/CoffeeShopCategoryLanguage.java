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
@Table(name="COFFEESHOP_CATEGORY_LANGUAGE")
public class CoffeeShopCategoryLanguage {

	@Id @GeneratedValue
	@Column(name="COFFEESHOP_CATEGORY_LANGUAGE_ID")
	private long id;
	
	@Column(name="COFFEESHOP_CATEGORY_LANGUAGE_NAME") 
	private String coffeeShopCategoryLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
	
	@ManyToOne
	@JoinColumn(name="COFFEESHOP_CATEGORY_ID")
	private CoffeeShopCategory coffeeShopCategory;
	 
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getCoffeeShopCategoryLanguageName() {
		return coffeeShopCategoryLanguageName;
	}


	public void setCoffeeShopCategoryLanguageName(
			String coffeeShopCategoryLanguageName) {
		this.coffeeShopCategoryLanguageName = coffeeShopCategoryLanguageName;
	}


	public Language getLanguage() {
		return language;
	}


	public void setLanguage(Language language) {
		this.language = language;
	}


	public CoffeeShopCategory getCoffeeShopCategory() {
		return coffeeShopCategory;
	}


	public void setCoffeeShopCategory(CoffeeShopCategory coffeeShopCategory) {
		this.coffeeShopCategory = coffeeShopCategory;
		
		 if (!coffeeShopCategory.getCoffeeShopCategoryLanguages().contains(this)) {
			 coffeeShopCategory.getCoffeeShopCategoryLanguages().add(this);
	        }
	}

	
	public boolean isEmpty() {
		return (this.getCoffeeShopCategoryLanguageName() == null || this.getCoffeeShopCategoryLanguageName().isEmpty());
	}

	 
}
