package org.alArbiyaHotelManagement.service.impl;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
 
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserServiceImpl implements UserDetailsService {
   
	@Autowired
	UserRepository userRepository;
	
/* private UserRepository UserRepository;
 public CustomUserServiceImpl(UserRepository UserRepository) {
     this.UserRepository = UserRepository;
 }*/
	 
 @Override
	public User loadUserByUsername(String username)
			throws UsernameNotFoundException { 
		return userRepository.loadUserByUsername(username);
	} 
 
 /*@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {  
	 User user= UserRepository.loadUserByUsername(username);
	 UserRepository.loadUserByUsername(username);
		return user;
	}*/

}
