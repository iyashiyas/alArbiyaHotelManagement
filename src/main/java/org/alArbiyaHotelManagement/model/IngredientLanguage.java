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
@Table(name="INGREDIENT_CATEGORY")
public class IngredientLanguage {

	@Id @GeneratedValue
	@Column(name="INGREDIENT_LANGUAGE_ID")
	private long id;
	
	@Column(name="INGREDIENT_LANGUAGE_NAME") 
	private String ingredientLanguageName;
	
	@OneToOne
	@JoinColumn(name="LANGUAGE_ID", nullable=false)
	private Language language;
 
	@ManyToOne
	@JoinColumn(name="INGREDIENT_ID")
	private Ingredient ingredient;
 	
	/*@ManyToOne 
	private IngredientLanguageGroup ingredientLanguageGroup;
*/
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
	
	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}
 
	public Ingredient getIngredient() {
		return ingredient;
	}

	public void setUnit(Ingredient ingredient) {
		this.ingredient = ingredient;
	}

	/*public IngredientLanguageGroup getIngredientLanguageGroup() {
		return ingredientLanguageGroup;
	}

	public void setIngredientLanguageGroup(
			IngredientLanguageGroup ingredientLanguageGroup) {
		this.ingredientLanguageGroup = ingredientLanguageGroup;
	}
*/
	
}
