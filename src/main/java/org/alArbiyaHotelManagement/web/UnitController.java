package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Unit;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/unit")
public class UnitController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showUnit() {
		return "unit/unit";
	}

	public Unit addUnit() {
		return null;
	}
	
	public Unit editUnit() {
		return null;
	}
}
