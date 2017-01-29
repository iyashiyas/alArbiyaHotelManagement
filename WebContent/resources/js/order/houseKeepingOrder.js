$(document)
		.ready(
				function() {
					setInterval(
							function() {
								$('#orderTable > tbody > tr').empty();
								$
										.ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/order/housekeepingScreenOrder",
											dataType : "json",
											success : function(data) {

												$.each(
																data,
																function(i,
																		Orders) {
																	$('#orderTable > tbody')
																			.append('<tr><td>'
																							+ Orders.id
																							+ '</td><td>'
																							+ Orders.room.roomCode
																							+ '</td><td>'
																							+ Orders.houseKeepingType
																							+ '</td><td>'
																							+ Orders.requestTime
																							+ '</td><td>'+(Orders.status == "ORDERED" ? ('${RoleAcceptorAdmin}'==true ? '<a class="btn btn-primary" href="accpethouseKeepingRequest?id='+Orders.id+'&roomId='+Orders.room.id+'&serviceItemName='+Orders.houseKeepingType+'">Accept</a>':'NoAccess'): Orders.status)+'</td></tr>')
																});
											},
											error : function(xmlHttpRequest,
													textStatus, errorThrown) {
												if (xmlHttpRequest.readyState = 0 || xmlHttpRequest.status == 0)
													return;
											},

										});
							}, 10000);

					/*
					 * setInterval( function () { worker(); }, 30000 );
					 */
				});
