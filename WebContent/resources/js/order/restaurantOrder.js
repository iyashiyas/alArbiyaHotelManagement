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
											url : "/alArbiyaHotelManagement/order/restaurantScreenOrder",
											dataType : "json",
											success : function(data) {

												$
														.each(
																data,
																function(i,
																		Orders) {
																	$('#orderTable > tbody')
																			.append(
																					'<tr><td>'
																							+ Orders.id
																							+ '</td><td>'
																							+ Orders.room.roomCode
																							+ '</td><td>'
																							+ Orders.hotelServicesItem.serviceItemName
																							+ '</td><td>'
																							+ (Orders.unit.length === 0 ? "-"
																									: Orders.unit[0].unitName)
																							+ '</td><td>'
																							+ (Orders.ingredients.length === 0 ? "-"
																									: Orders.ingredients[0].ingredientName)
																							+ '</td><td>'
																							+ Orders.quantity
																							+ '</td><td>'
																							+ Orders.requestedTime
																							+ '</td><td>'
																							+ (Orders.acceptTime == null ? '<a href="restaurantacceptOrder?id='
																									+ Orders.id+'&roomId='+Orders.room.id+'&serviceItemName='+Orders.hotelServicesItem.serviceItemName
																									+ '" class="btn btn-success">AcceptRequest</a>' 
																									: ' <label class="label label-primary">'
																									+ Orders.acceptTime
																								     + '</label>')
																							+ '</td><td>'
																							+ (Orders.orderStatus == "ORDER ACCEPT" ? '<a href="#" id="readyForDeliverys" data-toggle="modal" data-target="#assignToDelivery" data-href="restaurantreadyForDelivery?id='
																									+ Orders.id
																									+ '&roomName='+Orders.room.roomCode+'&roomId='+Orders.room.id+'" class="btn '
																									+ (Orders.acceptTime == true ? 'disabled'
																											: 'btn-success')
																									+ '">ReadyForDelivery</a>' 
																									: ' <label class="label label-primary">'
																											+ Orders.readyForDeliveryTime
																											+ '</label>')
																							+ '</td><td>'
																							+ (Orders.orderStatus == "DELIVERED" ? ' <label class="label label-primary">'
																									+ Orders.deliveredTime
																									+ '</label>'
																									:  'Waiting For Delivery' )
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
					$("#e1").select2(); 
					var deliveryBoyName; 
					 $('#assignToDelivery').on('show.bs.modal', function(e){
					 	 $('#e1').on('change', function(){
					 		deliveryBoyName = this.value; 
				    	$('#assignToDelivery').find('.btn-oks').attr('href', $('#readyForDeliverys').data('href')+'&deliveryBoyName='+deliveryBoyName);
				    	}) 
				  });  

					/*
					 * setInterval( function () { worker(); }, 30000 );
					 */
				});
