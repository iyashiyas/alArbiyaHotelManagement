package org.alArbiyaHotelManagement.web;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Room;
import org.alArbiyaHotelManagement.model.RoomType;
import org.alArbiyaHotelManagement.service.BranchService;
import org.alArbiyaHotelManagement.service.BuildingService;
import org.alArbiyaHotelManagement.service.FloorService;
import org.alArbiyaHotelManagement.service.RoomService;
import org.alArbiyaHotelManagement.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {

	@Autowired
	BranchService branchService;
	
	@Autowired
	BuildingService buildingService;

	@Autowired
	FloorService floorService;
	
	@Autowired
	RoomService roomService;

	@Autowired
	RoomTypeService roomTypeService;

	@RequestMapping(value = "/showCurrency", method = RequestMethod.GET)
	public String showCurrency(Model model) {
		return "hotel/currency";
	}

	@RequestMapping(value = "/showCurrencyRates", method = RequestMethod.GET)
	public String showCurrencyRates(Model model) {
		return "hotel/currencyRates";
	}

	@RequestMapping(value = "/showBranch", method = RequestMethod.GET)
	public String showBranch(Model model) {
		List<Branch> branches = branchService.getAllBranch();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch());
		model.addAllAttributes(attributes);
		return "hotel/branch";
	}
	
	@RequestMapping(value="/addBranch", method=RequestMethod.POST)
	public String addBranch(@ModelAttribute Branch branch){
		branchService.addBranch(branch);
		return "redirect:/hotel/showBranch";
	}
	
	@RequestMapping(value="/editBranch", method=RequestMethod.POST)
	public String editBranch(@ModelAttribute Branch branch) {
		 branchService.editBranch(branch);
		 return "redirect:/hotel/showBranch";
	}
	
	@RequestMapping(value="/showBuilding", method = RequestMethod.GET)
	public String showBuilding(Model model) {
		List<Branch> branches = branchService.getAllBranch();
		List<Building> buildings = buildingService.getAllBuildings();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("buildings", buildings);
		attributes.put("branches", branches);
		attributes.put("newBuilding", new Building());
		model.addAllAttributes(attributes);
		return "hotel/building";
	}
	
	@RequestMapping(value="/addBuilding", method=RequestMethod.POST)
	public String addBuilding(@ModelAttribute Building building) {
		buildingService.addBuilding(building);
		return "redirect:/hotel/showBuilding";
	}
	
	@RequestMapping(value="/editBuilding", method=RequestMethod.POST)
	public String editBuilding(@ModelAttribute Building building) {
		buildingService.editBuilding(building);
		return "redirect:/hotel/showBuilding";
	}
	
	@RequestMapping(value="/editFloor", method=RequestMethod.POST)
	public String editFloor(@ModelAttribute Floor floor) {
		floorService.editFloor(floor);
		return "redirect:/hotel/showFloor";
	}
	
	@RequestMapping(value="/showFloor", method = RequestMethod.GET)
	public String showFloor(Model model) {
		List<Floor> floors = floorService.getAllFloor();
		List<Branch> branches = branchService.getAllBranch();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("floors", floors);
		attributes.put("branches", branches);
		attributes.put("newFloor", new Floor());
		model.addAllAttributes(attributes);
		return "hotel/floor";
	}

	@RequestMapping(value = "/showRoom", method = RequestMethod.GET)
	public String showRoom(Model model) {
		List<Room> rooms = roomService.getAllRoom();
		List<Branch> branches = branchService.getAllBranch();
		List<Building> buildings = buildingService.getAllBuildings();
		List<Floor> floors = floorService.getAllFloor();
		List<RoomType> roomType = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("floors", floors);
		attributes.put("branches", branches);
		attributes.put("buildings", buildings);
		attributes.put("rooms", rooms);
		attributes.put("roomType", roomType);
		attributes.put("newRoom", new Room());
		model.addAllAttributes(attributes);
		return "hotel/room";
	}

	@RequestMapping(value = "/showRoomTypes", method = RequestMethod.GET)
	public String showRoomType(Model model) {
		List<RoomType> roomTypes = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomTypes", roomTypes);
		attributes.put("newRoomType", new RoomType());
		model.addAllAttributes(attributes);
		return "hotel/roomType";
	}
	
	@RequestMapping(value="/getAllBuilding", method=RequestMethod.GET)
	public @ResponseBody List<Building> getAllBuilding(@RequestParam(required=false) String branchId) {
		return buildingService.getAllBuilding(branchId);
	}
	 
	
	@RequestMapping(value="/getAllFloor", method=RequestMethod.GET)
	public @ResponseBody List<Floor> getAllFloor(@RequestParam(required=false) String buildingId) {
		return floorService.getAllFloorByBuildingId(buildingId);
	}
	
	@RequestMapping(value="/addFloor", method=RequestMethod.POST)
	public String addFloor(@ModelAttribute Floor floor) {
		floorService.addFloor(floor);
		return "redirect:/hotel/showFloor";
	}
	
	@RequestMapping(value="/addRoom", method=RequestMethod.POST)
	public String addRoom(@ModelAttribute Room room){
		roomService.addRoom(room);
		return "redirect:/hotel/showRoom";
	}

	
	@RequestMapping(value = "/addRoomType", method = RequestMethod.POST)
	public String addRoomType(@ModelAttribute RoomType roomType) {
		roomTypeService.addRoomType(roomType);
		return "redirect:/hotel/showRoomTypes";
	}
	
	@RequestMapping(value="/editRoomType", method=RequestMethod.POST)
	public String editRoomType(@ModelAttribute RoomType roomType) {
		roomTypeService.editRoomType(roomType);
		return "redirect:/hotel/showRoomTypes";
	}
	 
	@RequestMapping(value="/editRoom", method=RequestMethod.POST)
	public String editRoom(@ModelAttribute Room room) {
		roomService.editRoom(room);
		return "redirect:/hotel/showRoom";
	}
	 
	
}
