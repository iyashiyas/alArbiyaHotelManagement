package org.alArbiyaHotelManagement.authProvider;

import java.util.Collection;

import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.service.impl.CustomUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
  
public class CustomAuthenticationProvider implements AuthenticationProvider{
	
	@Autowired
	CustomUserService userService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();
        
		User user =  userService.loadUserByUsername(username);
        
        if (user == null || !user.getUsername().equalsIgnoreCase(username)) {
        	throw new BadCredentialsException("Username not found.");
        }
   
        if (!password.equals(user.getPassword())) {
        	throw new BadCredentialsException("Wrong password.");
        }
   
        Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
        return new UsernamePasswordAuthenticationToken(user, password, authorities);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}

}
