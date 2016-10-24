package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Action;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/action")
public class ActionController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showAction(@RequestParam(required=false) org.alArbiyaHotelManagement.enums.Action actionCode) {
		String actionCde = (actionCode == null || actionCode.name() == "") ? "action" : actionCode.getActionName();
		System.out.println("actionCode"+actionCde);
		return "action/"+actionCde;
	}

	public Action addAction() {
		return null;
	}
	public Action editAction() {
		return null;
	}
	
	
}
