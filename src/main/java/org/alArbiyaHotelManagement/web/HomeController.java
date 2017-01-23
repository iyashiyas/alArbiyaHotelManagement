package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.HotelInfo;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Player;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.service.BookingService;
import org.alArbiyaHotelManagement.service.BranchService;
import org.alArbiyaHotelManagement.service.BuildingService;
import org.alArbiyaHotelManagement.service.FloorService;
import org.alArbiyaHotelManagement.service.HotelInfoService;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.alArbiyaHotelManagement.service.PlayerService;
import org.alArbiyaHotelManagement.service.RoomService;
import org.alArbiyaHotelManagement.service.UserManagementService;
import org.alArbiyaHotelManagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
  
@Controller
public class HomeController {
	
	@Autowired
	HotelInfoService hotelinfoService;
	
	@Autowired
	BranchService branchService;
	
	@Autowired
	PlayerService playerService;
	
	@Autowired
	BookingService bookingService;
	
	@Autowired
	UserManagementService userManagementService;
	
	@Autowired
	RoomService roomService;
	
	@Autowired
	BuildingService buildingService;
	
	@Autowired 
	FloorService floorService;
	
	@Autowired
	LanguageService languageService;
	
	@RequestMapping(value = "/SHMS")
	public String showHomePage(Model model) {
		
		List<Language> languages = languageService.getAllLanguages();
		List<Language> enabledLanguages = languageService.getEnableLanguages();
		List<Language> disabledLanguages = languageService.disabledLanguages();
		List<Branch> branches = branchService.getAllBranch();
		List<Player> player = playerService.getAllPlayer();
		List<Player> configuredplayer = playerService.configuredplayer();
		List<Player> notConfiguredPlayer = playerService.notConfiguredPlayer();
		List<HotelInfo> hotelInfos = hotelinfoService.getHotelInfo();
		List<Booking> bookedRooms = bookingService.bookedRoomsCount();
		List<Booking> checkedInRoom = bookingService.checkedInRooms();
		List<User> users = userManagementService.getAllusers();
		List<Room> rooms = roomService.getAllRoom();
		List<Building> buildings = buildingService.getAllBuildings();
		List<Floor> floors = floorService.getAllFloor();
		Map<String, Object> attributes = new HashMap<String, Object>(); 
		
		attributes.put("languages", languages);
		attributes.put("enabledLanguages", enabledLanguages);
		attributes.put("disabledLanguages", disabledLanguages);
		attributes.put("configuredplayer", configuredplayer);
		attributes.put("notConfiguredPlayer", notConfiguredPlayer);
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch()); 
		/*Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username 
	      model.addAttribute("username", name); */ 
		  
		  model.addAttribute("floors", floors);
		  model.addAttribute("buildings", buildings);
		  model.addAttribute("rooms", rooms);
		  model.addAttribute("users", users);
		  model.addAttribute("bookedRooms", bookedRooms);
		  model.addAttribute("checkedInRoom", checkedInRoom);
		  model.addAttribute("players", player);
	      model.addAttribute("hotelInfos" ,hotelInfos);
		  model.addAllAttributes(attributes); 
		return "home/home";
	}
	 
	@RequestMapping(value="/header", method=RequestMethod.GET)
	public @ResponseBody List<HotelInfo> header() {
		return hotelinfoService.getHotelInfo();
	}
	
	  
}
