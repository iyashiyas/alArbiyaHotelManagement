package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Language;

public interface LanguageRepository {
	public List<Language> getAllLanguages();
	public List<Language> getEnableLanguages();
	public void editLanguage(Language language);
	public List<Language> disabledLanguages();
}
