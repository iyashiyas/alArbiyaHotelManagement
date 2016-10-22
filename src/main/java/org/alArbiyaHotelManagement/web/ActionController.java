package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Action;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/action")
public class ActionController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showAction() {
		return "action/action";
	}

	public Action addAction() {
		return null;
	}
	public Action editAction() {
		return null;
	}
}
