package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Report;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/report")
public class ReportController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showReport() {
		return "report/report";
	}

	public Report addReport() {
		return null;
	}
	public Report editReport() {
		return null;
	}
}
