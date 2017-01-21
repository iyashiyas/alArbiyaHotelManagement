package org.alArbiyaHotelManagement.web;
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 







import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.Building;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.Player;
import org.alArbiyaHotelManagement.service.ParkingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ParkingController {

	@Autowired
	ParkingService parkingService; 
	 
	@RequestMapping(value="/addParking", method=RequestMethod.POST)
	public String addParking(@ModelAttribute Parking parking){
		parkingService.addParking(parking);
		return "redirect:/showParking";
	}
	 
	@RequestMapping(value = "/showParking", method = RequestMethod.GET)
	public String showParking(Model model) {
		List<Parking> parkings = parkingService.getAllParking();
		Map<String, Object> attributes = new HashMap<String, Object>(); 
		HotelServicesCategory hotelServiceCategory = new HotelServicesCategory(); 
		attributes.put("hotelServiceCategory", hotelServiceCategory); 
		attributes.put("parkings", parkings);
		attributes.put("newParking", new Parking());
		model.addAllAttributes(attributes);
		return "action/parking";
	}
	 
	@RequestMapping(value = "/ParkingScreen", method = RequestMethod.GET)
	public String ParkingScreen(Model model) {
		List<Parking> parkings = parkingService.getAllParking(); 
		List<Parking> availableParking = parkingService.availableParking();
		List<Parking> customerAvailableParking = parkingService.customerParkingAvailable();
		List<Parking> vIPavailableParking = parkingService.vIPavailableParking();
		List<Parking> employeeavailableParking = parkingService.employeeavailableParking(); 
		List<Parking> customerNonAvailableParking = parkingService.customerNonAvailableParking();
		List<Parking> vIPNonAvailableParking = parkingService.vIPNonAvailableParking();
		List<Parking> employeeaNonAvailableParking = parkingService.employeeaNonAvailableParking();
	
		
		List<Parking> cutomerparkings = parkingService.cutomerparkings();
		List<Parking> employeeparkings = parkingService.employeeparkings();
		List<Parking> VIPparkings = parkingService.VIPparkings();
		
		Map<String, Object> attributes = new HashMap<String, Object>();  
		
		attributes.put("parkings", parkings); 
		
		attributes.put("customerAvailableParking", customerAvailableParking); 
		attributes.put("vIPavailableParking", vIPavailableParking); 
		attributes.put("employeeavailableParking", employeeavailableParking); 
		
		attributes.put("customerNonAvailableParking", customerNonAvailableParking); 
		attributes.put("vIPNonAvailableParking", vIPNonAvailableParking); 
		attributes.put("employeeaNonAvailableParking", employeeaNonAvailableParking); 
		 
		attributes.put("cutomerparkings", cutomerparkings); 
		attributes.put("availableParking", availableParking); 
		attributes.put("employeeparkings", employeeparkings); 
		attributes.put("VIPparkings", VIPparkings);  
		model.addAllAttributes(attributes); 
		return "screens/parkingScreen";
	}
	
	@RequestMapping(value = "/updateParkingStatus", method = RequestMethod.GET)
	public String updateParkingStatus(@RequestParam(required=true) long parkingId,@RequestParam(required=true) String parkingStatus) {
		parkingService.updateParkingStatus(parkingId,parkingStatus);
		return "redirect:/ParkingScreen";
	}
	
	@Transactional
	@RequestMapping(value="/getParkingRequests", method=RequestMethod.GET)
	public @ResponseBody List<ParkingOrder> getRequests() {
		return parkingService.getParkingRequests();
	}
}
