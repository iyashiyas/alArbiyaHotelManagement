package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.Map;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.service.ActionService;
import org.alArbiyaHotelManagement.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/action")
public class ActionController {
	
	@Autowired BranchService branchService;
	@Autowired ActionService actionService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
	    binder.setAutoGrowNestedPaths(false);
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String showAction(Model model,@RequestParam(required=false) org.alArbiyaHotelManagement.enums.Action actionCode) {
		String actionCde = (actionCode == null || actionCode.name() == "") ? "action" : actionCode.getActionName();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("coffeShop", new CoffeeShop());
		model.addAllAttributes(attributes);
		return "action/"+actionCde;
	}

	@RequestMapping(method=RequestMethod.POST, value="/addCoffeShop")
	public String addCoffeShop(Model model,@RequestParam(required=false) org.alArbiyaHotelManagement.enums.Action actionCode,
			CoffeeShop coffeeShop) {
		String actionCde = (actionCode == null || actionCode.name() == "") ? "action" : actionCode.getActionName();
		actionService.addCoffeeShop(coffeeShop);
		return "action/"+actionCde;
	}
	
	
	
	
}
