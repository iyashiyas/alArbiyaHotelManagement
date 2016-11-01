package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.repository.LanguageRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LanguageRepositoryImpl implements LanguageRepository{

	@PersistenceContext EntityManager entityManager; 
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Language> getAllLanguages() {
		Query query = entityManager.createQuery("SELECT langs from Language langs order by id", Language.class);
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Language> getEnableLanguages() {
		Query query = entityManager.createQuery("SELECT langs from Language langs where status='ACTIVE' order by id", Language.class);
		return query.getResultList();
	}

	@Override
	public void editLanguage(Language language) {
		Query updateQuery = entityManager.createQuery("UPDATE Language SET status = :status where id = :id ");
		updateQuery.setParameter("status", language.getStatus());
		updateQuery.setParameter("id", language.getId());
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}

	
	
}
