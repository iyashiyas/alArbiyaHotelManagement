package org.alArbiyaHotelManagement.service.impl;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.repository.LanguageRepository;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguageServiceImpl implements LanguageService {
	
	@Autowired
	private LanguageRepository languageRepository;
	
	@Override
	public Set<Language> getAllLanguages() {
		return languageRepository.getAllLanguages();
	}
	

	@Override
	public Set<Language> getEnableLanguages() {
		return languageRepository.getEnableLanguages();
	}
	
	
	@Override
	public void editLanguage(Language language) {
		languageRepository.editLanguage(language);
	}

	
}
