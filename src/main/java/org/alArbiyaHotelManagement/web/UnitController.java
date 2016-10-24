package org.alArbiyaHotelManagement.web;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/unit")
public class UnitController {
	
	@Autowired UnitService unitService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showUnit(Model model, @RequestParam(required=false) String categoryCode) {
		Set<UnitCategory> unitWithCategory = unitService.getAllUnitWithCategory(categoryCode);
		model.addAttribute("unitWithCategory", unitWithCategory);
		return "unit/unit";
	}

	public String addUnit() {
		return null;
	}
	
	public Unit editUnit() {
		return null;
	}
	
	public void deleteUnit(long id) {
		
	}
}
