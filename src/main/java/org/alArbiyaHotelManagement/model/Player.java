package org.alArbiyaHotelManagement.model;

  
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
import javax.persistence.Table;

@Entity
@Table(name="PLAYER")
public class Player {
	
	@Id @GeneratedValue
	@Column(name="PLAYER_ID")
	private long id;
	   
	@Column(name="PLAYER_IP_ADDRESS")
	private String playerIpAddress;
	
	@Column(name="PLAYER_STATUS")
	private String playerStatus;
	  
	 
	 
}
