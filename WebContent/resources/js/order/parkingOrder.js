$(document)
		.ready(
				function() {
					setInterval(
							function() {
								console.log("here1");
								$
										.ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/getParkingRequests",
											dataType : "json",
											success : function(data) {
												console.log("here2");
												$
														.each(
																data,
																function(i,
																		parkingOrders) {
																	console.log("here3");
																	$(
																			'#newRequests')
																			.append(
																					'<button class="col-lg-1 widget style1 navy-bg"  data-href="${pageContext.request.contextPath}/updateParkingStatus?parkingId=${cutomerparkings.id}&parkingStatus=NOTAVAILABLE" data-target="#confirmUpdate" data-toggle="modal"><div class="row vertical-align"><div class="col-lg-3"></div><div class="col-lg-9 text-right"><h2 class="font-bold">' + parkingOrders.id+ '</h2> </div></div></button>')
																});
											},
											error : function(xmlHttpRequest,
													textStatus, errorThrown) {
												if (xmlHttpRequest.readyState = 0 || xmlHttpRequest.status == 0)
													return;
											},

										});
							}, 10000);

				});

 
