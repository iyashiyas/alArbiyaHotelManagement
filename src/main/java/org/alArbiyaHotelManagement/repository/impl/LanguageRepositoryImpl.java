package org.alArbiyaHotelManagement.repository.impl;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.repository.LanguageRepository;
import org.springframework.stereotype.Repository;

@Repository
public class LanguageRepositoryImpl implements LanguageRepository{

	@PersistenceContext EntityManager entityManager; 
	
	@SuppressWarnings("unchecked")
	@Override
	public Set<Language> getAllLanguages() {
		Query query = entityManager.createQuery("SELECT langs from Language langs", Language.class);
		return new HashSet<Language>(query.getResultList());
	}

	@Override
	@Transactional
	public Language editLanguage(Language language) {
		Language updateLanguage = entityManager.merge(language);
		return updateLanguage;
	}

	
	
}
