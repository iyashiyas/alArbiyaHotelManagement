package org.alArbiyaHotelManagement.web;

 

import org.alArbiyaHotelManagement.model.Action;
 
import org.alArbiyaHotelManagement.service.BranchService;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/action")
public class ActionController {
	
	@Autowired BranchService branchService;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String showAction(Model model,@RequestParam(required=false) org.alArbiyaHotelManagement.enums.Action actionCode) {
		String actionCde = (actionCode == null || actionCode.name() == "") ? "action" : actionCode.getActionName();
		
		return "action/"+actionCde;
	}

	public Action addAction() {
		return null;
	}
	public Action editAction() {
		return null;
	}
	
	
	
	
}
