package org.alArbiyaHotelManagement.web;
 
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;

 
import org.alArbiyaHotelManagement.model.HotelInfo;
 
import org.alArbiyaHotelManagement.service.HotelInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 

@Controller
@RequestMapping(value = "/info")
public class HotelInfoController {
 
	@Autowired
	HotelInfoService hotelinfoService;
	
	@RequestMapping(value="/showInfo")
	public String showAccount(Model model) {
		 
		List<HotelInfo> hotelInfos = hotelinfoService.getHotelInfo();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("hotelInfo", hotelInfos);
		attributes.put("newInfo", new HotelInfo());
		model.addAllAttributes(attributes);
		 
		return "info/info";
	}
	
	
	@RequestMapping(value="/editHotelInfo", method=RequestMethod.POST)
	public String editInfo(@ModelAttribute HotelInfo info){
		hotelinfoService.editInfo(info);
		return "redirect:/info/showInfo";
	}
}
