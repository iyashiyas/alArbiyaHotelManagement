package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Branch;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.Floor;
import org.alArbiyaHotelManagement.model.Player;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/player")
public class PlayerController {
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

	@RequestMapping(value = "/showPlayer", method = RequestMethod.GET)
	public String showPlayer(Model model) {

		List<Branch> branches = branchService.getAllBranch();

		List<RoomType> roomType = roomTypeService.getAllRoomType();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("branches", branches);
		attributes.put("roomType", roomType);
		attributes.put("player", new Player());
		model.addAllAttributes(attributes);
		return "player/player";
	}

	@RequestMapping(value = "/getAllBuilding", method = RequestMethod.GET)
	public @ResponseBody List<Building> getAllBuilding(
			@RequestParam(required = false) String branchId) {
		return buildingService.getAllBuilding(branchId);
	}

	@RequestMapping(value = "/getAllFloor", method = RequestMethod.GET)
	public @ResponseBody List<Floor> getAllFloor(
			@RequestParam(required = false) String buildingId) {
		return floorService.getAllFloorByBuildingId(buildingId);
	}

	@RequestMapping(value = "/getAllRoomsByFloor", method = RequestMethod.GET)
	public @ResponseBody List<Room> getAllRoomsByFloor(
			@RequestParam(required = false) String floorId) {
		return roomService.getAllFloorByBuildingId(floorId);
	}

}
