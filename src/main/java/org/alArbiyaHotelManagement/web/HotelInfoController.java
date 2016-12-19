package org.alArbiyaHotelManagement.web;
 
 
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	@RequestMapping(value="/uploadLogo", method=RequestMethod.POST)
	public String UploadLogo(@ModelAttribute HotelInfo info){
		
		File serverFile = null;
		if (!info.getMultipartFile().isEmpty()) {
			try {
				byte[] bytes = info.getMultipartFile().getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("user.home");
				File dir = new File(rootPath+File.separator+"Hotel");
				if (!dir.exists())
					dir.mkdirs(); 
				// Create the file on server
				serverFile = new File(dir.getAbsolutePath()
						+ File.separator + new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".jpeg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				
			}
		}
		
		hotelinfoService.UploadLogo(info,serverFile);
		return "redirect:/info/showInfo";
	}
}
