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
	
	//languages
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
});
});