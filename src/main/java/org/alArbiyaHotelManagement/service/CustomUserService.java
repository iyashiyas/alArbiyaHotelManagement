package org.alArbiyaHotelManagement.service;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserService implements UserDetailsService {
 
	@Autowired
	 UserRepository userRepository;
	
	@Override
	public User loadUserByUsername(String username)
			throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return userRepository.loadUserByUsername(username);
	}

}
