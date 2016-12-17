package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
	@Autowired LanguageService languageService;
	
	@RequestMapping(method = RequestMethod.GET)
	@PreAuthorize("hasRole('ROLE_UNIT','ROLE_ADMIN')")
	public String showUnit(Model model, @RequestParam(required=false) String categoryCode) {
		List<Unit> unitWithCategory = unitService.getAllUnitWithCategory(categoryCode);
		List<Language> languages = languageService.getEnableLanguages();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("unitWithCategory", unitWithCategory);
		attributes.put("languages", languages);
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
