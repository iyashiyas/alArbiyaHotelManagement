$(document)
		.ready(
				function() {
					setInterval(
							function() {
								$('#orderTable > tbody > tr').empty();
								$ .ajax({
											type : 'GET',
											contentType : "application/json",
											url : "/alArbiyaHotelManagement/order/receptionScreenScreenOrder",
											dataType : "json",
											success : function(data) {

												$.each( data, function(i, Orders) {
																	$('#orderTable > tbody').append( '<tr><td>'
																							+ Orders.id
																							+ '</td><td>'
																							+ Orders.room.roomCode 
																							+ '</td><td>' 
																							+ Orders.requestType
																							+ '</td> <td>'
																							+ Orders.requestTime
																							+ '</td><td>' 
																							+ (Orders.orderStatus == 'ORDERED' ?'<a href="accpetreceptionRequest?id='
																									+ Orders.id+'&roomId='+Orders.room.id+'&serviceItemName='+Orders.requestType
																									+ '" class="btn btn-success">AcceptRequest</a>' : ' <label class="label label-primary">'
																											+ Orders.acceptTime
																											+ '</label>')
																							+ '</td></tr>' );
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

function printDiv()
{ 
alert("hello print");
	}
 