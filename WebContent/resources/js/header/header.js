$( document ).ready(function() {
	(function worker() {
		 
		var ctx="${pageContext.request.contextPath}/header";
	  $.ajax({
		type:'GET',
	    contentType: "application/json",
	    url:"/alArbiyaHotelManagement/header", 
	    dataType: "json",
	    success: function(data) {
	    	$.each(data, function (i, HotelInfo) { 
        	  $("#hotelName").html(HotelInfo.hotelName); 
        	  
        	  $("#headerImg").attr("src","/alArbiyaHotelManagement/images/hotelInfo/"+HotelInfo.hotelLogoUrl);
        	});
        },
        error:function(xmlHttpRequest, textStatus, errorThrown){
            if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
                return;
        },
   
	  });
	})();
	});

 