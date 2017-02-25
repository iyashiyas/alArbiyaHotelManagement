package org.alArbiyaHotelManagement.dto;

public class CoffeeeShopLanguageHelper {
	private Long languageId;
	private String langageName;
	
	public Long getLanguageId() {
		return languageId;
	}
	
	public void setLanguageId(Long languageId) {
		this.languageId = languageId;
	}
	
	public String getLangageName() {
		return langageName;
	}
	
	public void setLangageName(String langageName) {
		this.langageName = langageName;
	}
	
	public boolean isEmpty() {
		return (this.getLangageName() == null || this.getLangageName().isEmpty());
	}

}
