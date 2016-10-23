package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="INGREDIENT")
public class Ingredient {
	
	@Id @GeneratedValue 
	@Column(name="INGREDIENT_ID")
	private long id;
	
	@Column(name="INGREDIENT_NAME") 
	private String ingredientName;
	
	@Column(name="MEASUREMENT_UNIT") 
	private String measurementUnit;
	
	@Column(name="INGREDIENT_STATUS") 
	private String ingredientStatus;
	
	@Column(name="INGREDIENT_DESCRIPTION") 
	private String ingredientDescription;
	
	@OneToOne 
	private IngredientLanguageGroup ingredientLanguageGroup;
	
	@ManyToOne 
	private IngredientCategory ingredientCategory;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getIngredientName() {
		return ingredientName;
	}

	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}

	public String getMeasurementUnit() {
		return measurementUnit;
	}

	public void setMeasurementUnit(String measurementUnit) {
		this.measurementUnit = measurementUnit;
	}

	public String getIngredientStatus() {
		return ingredientStatus;
	}

	public void setIngredientStatus(String ingredientStatus) {
		this.ingredientStatus = ingredientStatus;
	}

	public String getIngredientDescription() {
		return ingredientDescription;
	}

	public void setIngredientDescription(String ingredientDescription) {
		this.ingredientDescription = ingredientDescription;
	}

	public IngredientLanguageGroup getIngredientLanguageGroup() {
		return ingredientLanguageGroup;
	}

	public void setIngredientLanguageGroup(
			IngredientLanguageGroup ingredientLanguageGroup) {
		this.ingredientLanguageGroup = ingredientLanguageGroup;
	}

	public IngredientCategory getIngredientCategory() {
		return ingredientCategory;
	}

	public void setIngredientCategory(IngredientCategory ingredientCategory) {
		this.ingredientCategory = ingredientCategory;
	}
	
	
	
}
