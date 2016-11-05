package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Hotel;
 
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

@Controller
@RequestMapping(value = "/hotel")
public class HotelController {
	
	@Autowired BranchService branchService;
	@Autowired BuildingService buildingService;

	@Autowired FloorService floorService;
	@Autowired RoomService roomService;
	
	@Autowired RoomTypeService roomTypeService;
	
	@RequestMapping(value="/showBranch", method = RequestMethod.GET)
	public String showBranch(Model model) {
		Set<Branch> branches = branchService.getAllBranch();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("branches", branches);
		attributes.put("newBranch", new Branch());
		model.addAllAttributes(attributes);
		return "hotel/branch";
	}
	@RequestMapping(value="/showBuilding", method = RequestMethod.GET)
	public String showBuilding(Model model) {
		Set<Branch> branches = branchService.getAllBranch();
		Set<Building> buildings = buildingService.getAllBuildings();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("buildings", buildings);
		attributes.put("branches", branches);
		attributes.put("newBuilding", new Building());
		model.addAllAttributes(attributes);
		return "hotel/building";
	}
	@RequestMapping(value="/showFloor", method = RequestMethod.GET)
	public String showFloor(Model model) {
		Set<Floor> floors = floorService.getAllFloor();
		Set<Branch> branches = branchService.getAllBranch();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("floors", floors);
		attributes.put("branches", branches);
		attributes.put("newFloor", new Floor());
		model.addAllAttributes(attributes);
		return "hotel/floor";
	}
	
	@RequestMapping(value="/showRoom", method = RequestMethod.GET)
	public String showRoom(Model model) {
		Set<Room> rooms = roomService.getAllRoom();
		Set<Branch> branches = branchService.getAllBranch();
		Set<Building> buildings = buildingService.getAllBuildings();
		Set<Floor> floors = floorService.getAllFloor();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("floors", floors);
		attributes.put("branches", branches);
		attributes.put("buildings", buildings);
		attributes.put("rooms", rooms);
		attributes.put("newBuilding", new Building());
		model.addAllAttributes(attributes);
		return "hotel/room";
	}
	
	@RequestMapping(value="/showRoomTypes", method = RequestMethod.GET)
	public String showRoomType(Model model) {
		Set<RoomType> roomTypes = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("roomTypes", roomTypes);
		attributes.put("newRoomType", new RoomType());
	 
		model.addAllAttributes(attributes);
		return "hotel/roomType";
	}
	
	
	@RequestMapping(value="/getAllBuilding", method=RequestMethod.GET, produces = "application/json")
	public List<Building> getAllBuilding(@RequestParam(required=false) String branchId) {
		return buildingService.getAllBuilding(branchId);
	}
	
	
	@RequestMapping(value="/getAllFloor", method=RequestMethod.GET, produces = "application/json")
	public List<Floor> GetAllFloor(@RequestParam(required=false) String buildingId) {
		return floorService.getAllFloorByBuildingId(buildingId);
	}
	
	
	@RequestMapping(value="/addBranch", method=RequestMethod.POST)
	public String addBranch(@ModelAttribute Branch branch)
	{
		branchService.addBranch(branch);
		 return "redirect:/";
	}
	

	@RequestMapping(value="/addBuilding", method=RequestMethod.POST)
	public String addBuilding(@ModelAttribute Building building)
	{
		buildingService.addBuilding(building);
		 return "redirect:/";
	}
	
	@RequestMapping(value="/addFloor", method=RequestMethod.POST)
	public String addFloor(@ModelAttribute Floor floor)
	{
		floorService.addFloor(floor);
		 return "redirect:/";
	}
	
	@RequestMapping(value="/addRoom", method=RequestMethod.POST)
	public String addRoom(@ModelAttribute Room room)
	{
		roomService.addRoom(room);
		 return "redirect:/";
	}
	@RequestMapping(value="/addRoomType", method=RequestMethod.POST)
	public String addRoomType(@ModelAttribute RoomType roomType)
	{
		roomTypeService.addRoomType(roomType);
		 return "redirect:/";
	}
	
	@RequestMapping(value="/editBranch", method=RequestMethod.POST)
	public String editBranch(@ModelAttribute Branch branch) {
		branchService.editBranch(branch);
		return "redirect:/";
	}
	 
	
	public Hotel addHotel() {
		return null;
	}
	
	public Hotel editHotel() {
		return null;
	}
}
