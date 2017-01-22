package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Language;

public interface LanguageService {
	public List<Language> getAllLanguages();
	public List<Language> getEnableLanguages();
	
	public void editLanguage(Language language);
	public List<Language> disabledLanguages();
}
