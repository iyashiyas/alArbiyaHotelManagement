$(document)
		.ready(
				function() {
					setInterval(
							function() { 
								$( '#orderTable > tbody > tr').empty();
								$ .ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/order/coffeeShopScreenOrder",
											dataType : "json",
											success : function(data) {
												
												$
														.each(
																data,
																function(i,
																		Orders) {   
																	$( '#orderTable > tbody')
																			.append(
																					'<tr><td>'
																							+ Orders.id
																							+ '</td><td>'
																							+ Orders.room.roomName
																							+ '</td><td>'
																							+ Orders.unit[0].unitName
																							+ '</td><td>'
																							+ Orders.ingredients[0].ingredientName
																							+ '</td><td>'
																							+ Orders.quantity
																							+ '</td><td>'
																							+ Orders.requestedTime
																							+ '</td><td>'
																							+ (Orders.acceptTime == null ? '<a href="coffeeShopacceptOrder?id='+Orders.id+'" class="btn btn-success">AcceptRequest</a>' : ' <label class="label label-primary">'+Orders.acceptTime +'</label>' )
																							+ '</td><td>'
																							+ (Orders.orderStatus == "ORDER ACCEPT" ? '<a href="coffeeShopreadyForDelivery?id='+Orders.id+'" class="btn ' +(Orders.acceptTime==null ? 'disabled' : 'btn-success') + '">ReadyForDelivery</a>' : ' <label class="label label-primary">'+ Orders.readyForDeliveryTime+'</label>' )
																							+ '</td><td>'
																							+ (Orders.orderStatus == "DELIVERED" ? ' <label class="label label-primary">' +Orders.deliveredTime+ '</label>': '<a href="coffeeShopdelivered?id='+Orders.id+'" class="btn '+ (Orders.readyForDeliveryTime==null ? 'disabled' : 'btn-success') + '">Delivered</a>')
																							+ '</td></tr>');
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
