package org.alArbiyaHotelManagement.web;

import java.util.List;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/language")
public class LanguageController {
	
	@Autowired
	private LanguageService languageService;
	 
	@RequestMapping(method = RequestMethod.GET)
	public String showLanguage(Model model) {
		List<Language> languages = languageService.getAllLanguages();
		model.addAttribute("languages", languages);
		return "language/language";
	}
	
	@RequestMapping(value = "editLanguage", method = RequestMethod.GET)
	public void editLanguage(@ModelAttribute Language language) {
		languageService.editLanguage(language);
	}
}
