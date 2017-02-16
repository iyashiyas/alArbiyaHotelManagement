package org.alArbiyaHotelManagement.model;

 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
import javax.persistence.Table;

@Entity
@Table(name = "INGREDIENT_CATEGORY")
public class IngredientCategory {

	@Id @GeneratedValue 
	@Column(name="INGREDIENT_CATEGORY_ID")
	private long id;
	
	@Column(name="INGREDIENT_CATEGORY_NAME") 
	private String ingredientCategoryName;
	
	@Column(name="INGREDIENT_CATEGORY_STATUS") 
	private String ingredientCategoryStatus;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getIngredientCategoryName() {
		return ingredientCategoryName;
	}

	public void setIngredientCategoryName(String ingredientCategoryName) {
		this.ingredientCategoryName = ingredientCategoryName;
	}

	public String getIngredientCategoryStatus() {
		return ingredientCategoryStatus;
	}

	public void setIngredientCategoryStatus(String ingredientCategoryStatus) {
		this.ingredientCategoryStatus = ingredientCategoryStatus;
	}
	
	 
	
}
