package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Player;
 
public interface PlayerService {

	public List<Player> getAllPlayer();

	public Player assignToRoom(Player player);
 
}
