package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
 
public interface UserManagementRepository  extends JpaRepository<User, Long> {

	List<User> getAllusers();

	public User addUser(User user);
	
	User findByUsername(String username);
	
	/*public User getUser(String userName);*/
 
}
