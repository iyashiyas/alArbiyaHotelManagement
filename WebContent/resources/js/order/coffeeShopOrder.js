$(document)
		.ready(
				function() {
					setInterval(
							function() {
								$('#orderTable > tbody > tr').empty();
				 
								$.ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/order/coffeeShopScreenOrder",
											dataType : "json",
											success : function(data) {
												$
														.each( data,
																function(i,
																		Orders) { 
															$( '.details').append('<div class="modal fade orderItemss" id="orderItems'+ Orders.id+'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog"><div class="modal-content"><form class="form-horizontal" action="" method="post"><div class="modal-header">Order Details</div><div class="modal-body"><table id="datatabss'+Orders.id+'" class="table table-striped table-bordered table-hover"><thead><tr><th>OrderID</th><th>OrderItems</th><th>label.Quantity</th></tr></thead>'+$.each(Orders.newOrderDetails,function(j,details){	$('#datatabss'+Orders.id+'').append('<tbody><tr><td>'+details.id+'</td><td>'+details.product.serviceItemName+'</td><td>'+details.quantity+'</td></tr></tbody>')})+'</tbody>'
																	);
																 
																	$( '#orderTablesCoffeeShop > tbody')
																			.append(
																					'<tr><td><a href="#orderItems'
																							+ Orders.id
																							+ '" data-toggle="modal">'
																							+ Orders.id
																							+ '</a>'
																							+ '</td><td>'
																							+ Orders.room.roomCode
																							+ '</td><td>'
																							+ Orders.requestedTime
																							+ '</td><td>'
																							+ (Orders.acceptTime == null ? '<a href="coffeeShopacceptOrder?id='
																									+ Orders.id
																									+ '&roomId='
																									+ Orders.room.id
																									+ '&serviceItemName=CoffeeShopOrder" class="btn btn-success">AcceptRequest</a>'
																									: ' <label class="label label-primary">'
																											+ Orders.acceptTime
																											+ '</label>')
																							+ '</td><td>'
																							+ (Orders.orderStatus == "ORDER ACCEPT" ? '<a href="#" id="readyForDeliverys" data-toggle="modal" data-target="#assignToDelivery" data-href="coffeeShopreadyForDelivery?id='
																									+ Orders.id
																									+ '&roomName='
																									+ Orders.room.roomCode
																									+ '&roomId='
																									+ Orders.room.id
																									+ '" class="btn '
																									+ (Orders.acceptTime == null ? 'disabled'
																											: 'btn-success')
																									+ '">ReadyForDelivery</a>'
																									: ' <label class="label label-primary">'
																											+ Orders.readyForDeliveryTime
																											+ '</label>')
																							+ '</td><td>'
																							+ (Orders.orderStatus == "DELIVERED" ? ' <label class="label label-primary">'
																									+ Orders.deliveredTime
																									+ '</label>'
																									: 'Waiting For Delivery')
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
					$('#assignToDelivery')
							.on(
									'show.bs.modal',
									function(e) {
										$('#e1')
												.on(
														'change',
														function() {
															deliveryBoyName = this.value;
															$(
																	'#assignToDelivery')
																	.find(
																			'.btn-oks')
																	.attr(
																			'href',
																			$(
																					'#readyForDeliverys')
																					.data(
																							'href')
																					+ '&deliveryBoyName='
																					+ deliveryBoyName);
														})
									});
				});

function printDiv() {
	alert("hello print");
}
