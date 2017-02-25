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
											url : "/alArbiyaHotelManagement/order/deliveryBoyScreen",
											dataType : "json",
											success : function(data) {

												$
														.each(
																data,
																function(i,
																		Orders) {
																	$(
																			'#orderTable > tbody')
																			.append(
																					'<tr><td>'
																							+ Orders.orderId
																							+ '</td><td>'
																							+ Orders.roomName
																							+ '</td><td>'
																							+ Orders.status
																							+ '</td><td>'
																							+ (Orders.status == "READYFORDELIVERY" ? '<a class="btn btn-primary" href="#" id="confirmDeliveryRequest" data-toggle="modal" data-target="#confirmReadForDelivery" data-href="deliveryBoyAccept?orderId='
																									+ Orders.orderId
																									+ '">Accept Request</a>'
																									: (Orders.status == "ACCEPTREQUEST" ? '<a class="btn btn-danger" href="#" id="deliverdAccept" data-toggle="modal" data-target="#confirmDelivered" data-target="#confirmReadForDelivery" data-href="deliverdAccceptHouseKeeping?id='
																											+ Orders.orderId
																											+ '&roomId='
																											+ Orders.roomId
																											+ '">Accept Delivery</a>'
																											: (Orders.status == "DELIVERED" ? 'CLEAN'
																													: s)))
																							+ '</td></tr>')
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
