package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="INGREDIENT_CATEGORY")
public class IngredientLanguage {

	@Id @GeneratedValue
	@Column(name="INGREDIENT_LANGUAGE_ID")
	private long id;
	
	@Column(name="INGREDIENT_LANGUAGE_NAME") 
	private String ingredientLanguageName;
	
	@ManyToOne 
	private IngredientLanguageGroup ingredientLanguageGroup;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public String getIngredientLanguageName() {
		return ingredientLanguageName;
	}

	public void setIngredientLanguageName(String ingredientLanguageName) {
		this.ingredientLanguageName = ingredientLanguageName;
	}

	public IngredientLanguageGroup getIngredientLanguageGroup() {
		return ingredientLanguageGroup;
	}

	public void setIngredientLanguageGroup(
			IngredientLanguageGroup ingredientLanguageGroup) {
		this.ingredientLanguageGroup = ingredientLanguageGroup;
	}

	
}
