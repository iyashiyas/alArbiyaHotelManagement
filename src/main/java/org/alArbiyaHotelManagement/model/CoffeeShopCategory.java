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
@Table(name="COFFEESHOP_CATEGORY")
public class CoffeeShopCategory {
 
	@Id @GeneratedValue 
	@Column(name="COFFEESHOP_CATEGORY_ID")
	private long id;
	
	@Column(name="COFFEESHOP_CATEGORY_NAME") 
	private String coffeeShopCategoryName;
	
	@Column(name="COFFEESHOP_CATEGORY_STATUS") 
	private String coffeeShopCategoryStatus;
	
	@OneToMany(mappedBy="coffeeShopCategory", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<CoffeeShopCategoryLanguage> CoffeeShopCategoryLanguages;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCoffeeShopCategoryName() {
		return coffeeShopCategoryName;
	}

	public void setCoffeeShopCategoryName(String coffeeShopCategoryName) {
		this.coffeeShopCategoryName = coffeeShopCategoryName;
	}

	public String getCoffeeShopCategoryStatus() {
		return coffeeShopCategoryStatus;
	}

	public void setCoffeeShopCategoryStatus(String coffeeShopCategoryStatus) {
		this.coffeeShopCategoryStatus = coffeeShopCategoryStatus;
	}

	public List<CoffeeShopCategoryLanguage> getCoffeeShopCategoryLanguages() {
		return CoffeeShopCategoryLanguages;
	}
	public void addCoffeeShopCategoryLanguages(CoffeeShopCategoryLanguage CoffeeShopCategoryLanguage) {
        this.CoffeeShopCategoryLanguages.add(CoffeeShopCategoryLanguage);
        if (CoffeeShopCategoryLanguage.getCoffeeShopCategory() != this) {
        	CoffeeShopCategoryLanguage.setCoffeeShopCategory(this);
        }
    }

	public void setCoffeeShopCategoryLanguages(
			List<CoffeeShopCategoryLanguage> coffeeShopCategoryLanguages) {
		CoffeeShopCategoryLanguages = coffeeShopCategoryLanguages;
	}

	 

}
