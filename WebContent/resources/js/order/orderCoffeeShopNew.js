 
 $(document).ready(function() { 
	 var table;
 setInterval( function() {  
	/* table=$('#orderTablesCoffeeShop').DataTable(); */
	$.ajax({
	type : 'GET',
	contentType : "application/json",
	url : "/alArbiyaHotelManagement/order/coffeeShopScreenOrder",
	dataType : "json",
	success : function(data) {  
		$ .each(data, function(i,Orders) {   
		/*	var ss = Orders.id;
		   if (table.rows('[id='+ss+']').any()){  
			   console.log("if" + ss);
		 }
		 else { 
			 console.log("else"); */
			var flag = 0;
			$("#orderTable").find("tr").each(function () {
				  var td1 = $(this).find("td:eq(0)").text();
			        var td2 = $(this).find("td:eq(5)").text();
			        if (Orders.id == td1 ) {
			            flag = 1;
			        }
			    });
			    if (flag == 1) {
			       
			    } else {
			   
			   $( '.details').append('<div class="modal fade orderItemss" id="orderItems'+ Orders.id+'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog"><div class="modal-content"><form class="form-horizontal" action="" method="post"><div class="modal-header">Order Details</div><div class="modal-body"><table id="detailsPopupTable'+Orders.id+'" class="table table-striped table-bordered table-hover"><thead><tr><th>OrderID</th><th>OrderItems</th><th>label.Quantity</th></tr></thead><tbody></tbody>	<div class="modal-footer"><button type="button" class="btn btn-default"data-dismiss="modal">Close</button></div>');
			   
			   $.each(Orders.newOrderDetails, function(j,Orderdetails) { $('#detailsPopupTable'+Orders.id+' > tbody').append('<tr><td>'+Orders.id+'</td><td>'+Orderdetails.product.serviceItemName+'</td><td>'+Orderdetails.quantity+'</td></tr>')})
			   
			   $('#orderTable > tbody').prepend('<tr class="gradeX" id="'+Orders.id+'"  role="row" ><td><a class="btn btn-primary" href="#orderItems'
										+ Orders.id
										+ '"data-toggle="modal">'
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
												: '<label class="label label-primary">'
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
										+ '</td></tr>');  Android.alertNotifyOrderSound(); } })  },
	error : function(xmlHttpRequest,
			textStatus, errorThrown) {
		if (xmlHttpRequest.readyState = 0 || xmlHttpRequest.status == 0)
			return;
	},

}); 
 },10000);	 
	var deliveryBoyName;
	$('#assignToDelivery').on('show.bs.modal',function(e) {$('#e1').on( 'change', function() { deliveryBoyName = this.value;$('#assignToDelivery').find('.btn-oks').attr('href',$('#readyForDeliverys').data('href')+ '&deliveryBoyName='+ deliveryBoyName);})});
}); 
 
/*   $(document).ready(function() { 
	  var table=$('#orderTablesCoffeeShop').DataTable( { 
		  paging: true,
		    searching: true,
		    retrieve: true,
		    processing: true,
		    serverSide: true,
	    	ajax: {
	    	    url: "/alArbiyaHotelManagement/order/coffeeShopScreenOrder",
	    	    type: "GET", 
	   		   dataType : 'json',
	   	    	contentType : "application/json",
	    	  },
	        columns: [
	            { data: "id" },
	            { data: "room.roomCode" },
	            { data: "room.roomCode" },
	            { data: "room.roomCode" },
	            { data: "room.roomCode" },
	            { data: "room.roomCode" }
	        ]
	  }); 
   
 	setInterval( function () {
		console.log("log");
	    table.ajax.reload();
	}, 10000 );}); */