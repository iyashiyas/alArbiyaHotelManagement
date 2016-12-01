package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Player;

public interface PlayerRepository {

	public List<Player> getAllPlayer();

	public Player assignToRoom(Player player);
 
}
