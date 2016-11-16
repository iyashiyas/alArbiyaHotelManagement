package org.alArbiyaHotelManagement.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="SERVICE_INGREDIENT")
public class ServiceIngredient {
	
	@Id @GeneratedValue
	@Column(name="SERVICE_INGREDIENT_ID")
	private long id;
	
	@Column(name="SERVICE_INGREDIENT_PRICE") 
	private BigDecimal serviceIngredientPrice;
	
	@OneToOne
	@JoinColumn(name="INGREDIENT_ID")
	private Ingredient ingredient;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getServiceIngredientPrice() {
		return serviceIngredientPrice;
	}

	public void setServiceIngredientPrice(BigDecimal serviceIngredientPrice) {
		this.serviceIngredientPrice = serviceIngredientPrice;
	}

	public Ingredient getIngredient() {
		return ingredient;
	}

	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}
	
}
