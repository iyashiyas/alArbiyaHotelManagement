$( document ).ready(function() {
	var configuredPlayer=$('#configuredPlayer').val();
	var notConfiguredPlayer=$('#notConfiguredPlayer').val();
$(function () {

    var doughnutData = {
        labels: ["Configured-"+configuredPlayer,"NotConfigured-"+notConfiguredPlayer],
        datasets: [{
            data: [configuredPlayer,notConfiguredPlayer],
            backgroundColor: ["#a3e1d4","#ec4758"]
        }]
    } ; 
    var doughnutOptions = {
        responsive: true
    }; 
	 var ctx4 = document.getElementById("doughnutChart").getContext("2d");
	    new Chart(ctx4, {type: 'doughnut', data: doughnutData, options:doughnutOptions}); 
	   });
	    
//booked Rooms/CheckInRoom
	    var bookedRooms=$('#bookedRooms').val();
		var checkInRooms=$('#checkInRooms').val();
	$(function () {

	    var doughnutData1 = {
	        labels: ["Booked Rooms-"+bookedRooms,"Checked-In Rooms-"+checkInRooms],
	        datasets: [{
	            data: [bookedRooms,checkInRooms],
	            backgroundColor: ["#1ab394","#ec4758"]
	        }]
	    } ; 
	    var doughnutOptions1 = {
	        responsive: true
	    }; 
		 var ctx5 = document.getElementById("doughnutChartRooms").getContext("2d");
		    new Chart(ctx5, {type: 'doughnut', data: doughnutData1, options:doughnutOptions1}); 
});
	
	/*//languages
	 var enabledLanguages=$('#enabledLanguages').val();
		var disabledLanguages=$('#disabledLanguages').val();
	$(function () {

	    var doughnutData2 = {
	        labels: ["Enabled Languages-"+enabledLanguages,"Disabled Languages-"+disabledLanguages],
	        datasets: [{
	            data: [enabledLanguages,disabledLanguages],
	            backgroundColor: ["#f8ac59","#ec4758"]
	        }]
	    } ; 
	    var doughnutOptions2 = {
	        responsive: true
	    }; 
		 var ctx5 = document.getElementById("doughnutChartLanguages").getContext("2d");
		    new Chart(ctx5, {type: 'doughnut', data: doughnutData2, options:doughnutOptions2}); 
});*/
	
	// Parking
	 var parkings=$('#parkings').val();
		var availableParking=$('#availableParking').val();
	$(function () {

	    var doughnutData22 = {
	        labels: ["Total Parking-"+parkings,"Available Parking-"+availableParking],
	        datasets: [{
	            data: [parkings,availableParking],
	            backgroundColor: ["#f8ac59","#ec4758"]
	        }]
	    } ; 
	    var doughnutOptions33 = {
	        responsive: true
	    }; 
		 var ctx51 = document.getElementById("doughnutChartParking").getContext("2d");
		    new Chart(ctx51, {type: 'doughnut', data: doughnutData22, options:doughnutOptions33}); 
}); 
	
});
 
// Bar Chart
// requests
var CoffeeShopOrder=$('#CoffeeShopOrder').val();
var CoffeeShopOrderRequestAccept=$('#CoffeeShopOrderRequestAccept').val();
var CoffeeShopOrderDeliverd=$('#CoffeeShopOrderDeliverd').val();

var restaurantOrderRequest=$('#restaurantOrderRequest').val();
var restaurantOrderRequestAccept=$('#restaurantOrderRequestAccept').val();
var restaurantOrderDeliverd=$('#restaurantOrderDeliverd').val();

var laundryOrderRequest=$('#laundryOrderRequest').val();
var laundryOrderRequestAccept=$('#laundryOrderRequestAccept').val();
var laundryOrderDeliverd=$('#laundryOrderDeliverd').val();

var houseKeepingOrderRequest=$('#houseKeepingOrderRequest').val();
var houseKeepingOrderRequestAccept=$('#houseKeepingOrderRequestAccept').val();

var receptionOrderRequest=$('#receptionOrderRequest').val();
var receptionOrderRequestAccept=$('#receptionOrderRequestAccept').val();
 
    var barData = {
        labels: ["COFFEESHOP", "RESTAURANT", "LAUNDRY", "HOUSEKEEPING", "RECEPTION"],
        datasets: [
      {
    label: "REQUEST",
    backgroundColor: '#f8ac59',
    borderColor: "rgba(26,179,148,0.7)",
    pointBackgroundColor: "rgba(26,179,148,1)",
    pointBorderColor: "#fff",
    data: [CoffeeShopOrder, restaurantOrderRequest, laundryOrderRequest,houseKeepingOrderRequest, receptionOrderRequest]
      },
         
      {
          label: "REQUEST ACCEPT",
          backgroundColor: '#23c6c8',
          borderColor: "rgba(26,179,148,0.7)",
          pointBackgroundColor: "rgba(26,179,148,1)",
          pointBorderColor: "#fff",
          data: [CoffeeShopOrderRequestAccept, restaurantOrderRequestAccept, laundryOrderRequestAccept,houseKeepingOrderRequestAccept, receptionOrderRequestAccept]
      } ,
          {
         label: "DELIVERED",
           backgroundColor: '#ed5565',
           pointBorderColor: "#fff",
           data: [CoffeeShopOrderDeliverd, restaurantOrderDeliverd, laundryOrderDeliverd]
            } 
        ]
    };

    var barOptions = {
        responsive: true
    };


    var ctx2 = document.getElementById("barChart").getContext("2d");
    new Chart(ctx2, {type: 'bar', data: barData, options:barOptions});

    