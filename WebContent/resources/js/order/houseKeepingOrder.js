$(document)
		.ready(
				function() {
					setInterval(
							function() {
								console.log("coming");
								$('#orderTable > tbody > tr').empty();
								$ .ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/order/housekeepingScreenOrder",
											dataType : "json",
											success : function(data) { $.each(data,function(i,Orders) {
															$('#orderTable > tbody').append('<tr><td>'
																							+ Orders.id
																							+ '</td><td>'
																							+ Orders.room.roomCode
																							+ '</td><td>'
																							+ Orders.requestType
																							+ '</td><td>'
																							+ Orders.requestTime
																							+ '</td><td>'+(Orders.status == "ORDERED" ?  '<a id="readyForDeliverys" data-toggle="modal" data-target="#assignToDelivery"  class="btn btn-primary" data-href="accpethouseKeepingRequest?id='+Orders.id+'&roomId='+Orders.room.id+'&serviceItemName='+Orders.houseKeepingType+'&roomName='+Orders.room.roomCode+'">Accept</a>' : Orders.status)+'</td></tr>')
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

					 
				});
