package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/unit")
public class UnitController {
	
	@Autowired UnitService unitService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showUnit(Model model, @RequestParam(required=false) String categoryCode) {
		Set<Unit> unitWithCategory = unitService.getAllUnitWithCategory(categoryCode);
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("unitWithCategory", unitWithCategory);
		attributes.put("newUnit", new Unit());
		model.addAllAttributes(attributes);
		return "unit/unit";
	}

	@RequestMapping(value="/addUnit", method=RequestMethod.POST)
	public String addUnit(@ModelAttribute Unit unit) {
		unitService.addUnit(unit);
		return "redirect:/unit";
	}
	
	@RequestMapping(value="/editUnit", method=RequestMethod.POST)
	public String editUnit(@ModelAttribute Unit unit) {
		unitService.editUnit(unit);
		return "redirect:/unit";
	}
	
	@RequestMapping(value="/disableUnit", method=RequestMethod.POST)
	public String disableUnit(long id, String status) {
		unitService.disableUnit(id, status);
		return "redirect:/unit";
	}
}
