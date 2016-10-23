package org.alArbiyaHotelManagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="INGREDIENT_CATEGORY")
public class IngredientLanguage extends Language {

	@Column(name="INGREDIENT_LANGUAGE_NAME") 
	private String ingredientLanguageName;
	
	@ManyToOne 
	private IngredientLanguageGroup ingredientLanguageGroup;

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
