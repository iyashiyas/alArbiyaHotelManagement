package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Language;

public interface LanguageService {
	public Set<Language> getAllLanguages();
	public Language editLanguage(Language language);
}
