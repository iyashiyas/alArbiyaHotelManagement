package org.alArbiyaHotelManagement.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class CoffeeShop {
	
	private String category;
	private String itemName;
	private List<Long> languageId;
	private List<String> langageName;
	private List<Long> ingredientId;
	private List<BigDecimal> ingredientPrice;
	private List<Long> unitId;
	private List<BigDecimal> unitPrice;
	private String description;
	private String status;
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getItemName() {
		return itemName;
	}
	
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public List<Long> getLanguageId() {
		if(this.languageId == null) {
			this.languageId = new ArrayList<Long>();
			this.languageId.add(1L);
		}
		return languageId;
	}
	
	public void setLanguageId(List<Long> languageId) {
		this.languageId = languageId;
	}
	
	public List<String> getLangageName() {
		if(this.langageName == null) {
			this.langageName = new ArrayList<String>();
			this.langageName.add("");
		}
		return langageName;
	}
	
	public void setLangageName(List<String> langageName) {
		this.langageName = langageName;
	}
	
	public List<Long> getUnitId() {
		if(this.unitId == null) {
			this.unitId = new ArrayList<Long>();
			unitId.add(1l);
		}
		return unitId;
	}
	
	public void setUnitId(List<Long> unitId) {
		this.unitId = unitId;
	}
	
	public List<BigDecimal> getUnitPrice() {
		if(this.unitPrice == null) {
			this.unitPrice = new ArrayList<BigDecimal>();
			this.unitPrice.add(new BigDecimal(0));
		}
		return unitPrice;
	}
	
	public void setUnitPrice(List<BigDecimal> unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public List<Long> getIngredientId() {
		if(this.ingredientId == null) {
			this.ingredientId = new ArrayList<Long>();
			this.ingredientId.add(0L);
		}
		return ingredientId;
	}
	
	public void setIngredientId(List<Long> ingredientId) {
		this.ingredientId = ingredientId;
	}
	
	public List<BigDecimal> getIngredientPrice() {
		if(this.ingredientPrice == null) {
			this.ingredientPrice = new ArrayList<BigDecimal>();
			this.ingredientPrice.add(new BigDecimal(0));
		}
		return ingredientPrice;
	}
	
	public void setIngredientPrice(List<BigDecimal> ingredientPrice) {
		this.ingredientPrice = ingredientPrice;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "CoffeeShop [category=" + category + ", itemName=" + itemName
				+ ", languageId=" + languageId + ", langageName=" + langageName
				+ ", unitId=" + unitId + ", unitPrice=" + unitPrice
				+ ", ingredientId=" + ingredientId + ", ingredientPrice="
				+ ingredientPrice + ", description=" + description
				+ ", status=" + status + "]";
	}
	
}
