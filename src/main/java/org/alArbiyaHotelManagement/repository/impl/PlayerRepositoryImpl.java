package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
 


import org.alArbiyaHotelManagement.model.Player;
import org.alArbiyaHotelManagement.repository.PlayerRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class PlayerRepositoryImpl implements PlayerRepository{
	 
	@PersistenceContext EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Player> getAllPlayer() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("select ply from Player ply order by id", Player.class);
		return query.getResultList(); 
	}

	@Override
	public Player assignToRoom(Player player) {
	entityManager.merge(player);
		return player;
	}

	@Override
	public List<Player> configuredplayer() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("select ply from Player ply where playerStatus='ASSIGNED'", Player.class);
		return query.getResultList(); 
	}

	@Override
	public List<Player> notConfiguredPlayer() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("select ply from Player ply where  playerStatus='NOT CONFIGURED' ", Player.class);
		return query.getResultList(); 
	}
	 
}
