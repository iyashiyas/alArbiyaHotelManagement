package org.alArbiyaHotelManagement.service.impl;

 
import java.util.List;

import org.alArbiyaHotelManagement.model.Player;
import org.alArbiyaHotelManagement.repository.PlayerRepository;
import org.alArbiyaHotelManagement.service.PlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlayerServiceImpl implements PlayerService {
  
	@Autowired
	PlayerRepository playerRepository;
	
	@Override
	public List<Player> getAllPlayer() {
		// TODO Auto-generated method stub
		return playerRepository.getAllPlayer();
	}

	@Override
	public Player assignToRoom(Player player) {
		// TODO Auto-generated method stub'
		player.setPlayerStatus("ASSIGNED");
		return playerRepository.assignToRoom(player);
	}
	 
}
