$(document)
		.ready(
				function() {
					setInterval(
							function() {
								$('#newRequests').empty();
								$
										.ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/getParkingRequests",
											dataType : "json",
											success : function(data) {
												$("#totalRequests").html(data.length)
												$.each(data,function(i,parkingOrders) { 
																	$('#newRequests').append('<button class="col-lg-1 widget style1 navy-bg"  data-href="accpetParkingRequest?id='+parkingOrders.id+'&roomId='+parkingOrders.room.id+'&serviceItemName='+parkingOrders.parking.parkingName+'&parkingId='+parkingOrders.parking.id+'&requestType='+parkingOrders.requestType+'" data-target="#confirmUpdate" data-toggle="modal"><div class="row vertical-align"><div class="col-lg-3"></div><div class="col-lg-9 text-right"><h2 class="font-bold">' + parkingOrders.parking.parkingName+ '</h2> </div></div></button>')
													 });
											},
											error : function(xmlHttpRequest,textStatus, errorThrown) {
												if (xmlHttpRequest.readyState = 0 || xmlHttpRequest.status == 0)
													return;
											}, 
										});
							}, 10000);

	 });

  