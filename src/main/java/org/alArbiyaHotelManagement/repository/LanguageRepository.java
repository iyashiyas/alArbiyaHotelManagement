package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Language;

public interface LanguageRepository {
	public Set<Language> getAllLanguages();
	public Set<Language> getEnableLanguages();
	public void editLanguage(Language language);
}
