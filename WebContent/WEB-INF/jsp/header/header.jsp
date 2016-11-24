<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.css" />" 	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/common.css" />" rel="stylesheet">
 
<title>SHMS-Header</title>
</head>
<body>
  <!-- Header left side -->
		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<!-- Profile Menu -->
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="<c:url value="/resources/css/patterns/logonly.png"/>" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear"> <span class="block m-t-xs"> <strong
										class="font-bold">Hotel Name</strong>
								</span> <span class=" text-xs block">Info <b
										class="caret"></b></span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="${pageContext.request.contextPath}/info/showInfo">Profile</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/SHMS/login">Lock</a></li>
							</ul>
						</div>
						<div class="logo-element">SHMS</div>
					</li>

					<!-- ENd Profile Menu  -->
 
                      <!--Main Tab Menus Left Side -->
					<li><a href="${pageContext.request.contextPath}/"><i class="fa fa-th-large"></i> <span
							class="nav-label">Home</span> </a></li>
					<li><a href="${pageContext.request.contextPath}/language"><i class="fa fa-diamond"></i> <span
							class="nav-label">Languages</span></a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o"></i> <span
							class="nav-label">Profile</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
						    <li><a href="${pageContext.request.contextPath}/hotel/showCurrency">Currency</a></li>
							<li><a href="${pageContext.request.contextPath}/hotel/showBranch">Branch</a></li>
							<li><a href="${pageContext.request.contextPath}/hotel/showBuilding">Building</a></li>
							<li><a href="${pageContext.request.contextPath}/hotel/showFloor">Floor</a></li>
							<li><a ><i class="fa fa-bar-chart-o"></i>Rooms <span class="fa arrow">
							</span></a>
							
							<ul class="nav nav-third-level collapse">
							<li><a href="${pageContext.request.contextPath}/hotel/showRoom">Rooms</a></li>
					        <li><a href="${pageContext.request.contextPath}/hotel/showRoomTypes">Room Types</a></li>
					     
							</ul>
							</li>

						</ul></li>
						<li><a href="${pageContext.request.contextPath}/reservation"><i class="fa fa-credit-card"></i> <span
							class="nav-label">Reservation</span></a>
						 </li>
					<li><a href="${pageContext.request.contextPath}/unit"><i class="fa fa-pie-chart"></i> <span
							class="nav-label">Unit</span> </a></li>
					<li><a href="${pageContext.request.contextPath}/ingredient"><i class="fa fa-shopping-cart"></i> <span
							class="nav-label">Ingredients</span></a></li>
					<li><a href="#"><i class="fa fa-picture-o"></i> <span
							class="nav-label">Services</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="${pageContext.request.contextPath}/action">All Services</a></li>
					        <li><a href="${pageContext.request.contextPath}/action/showCheckoutAction">Check-Out</a></li>
				            <li><a href="${pageContext.request.contextPath}/action/showParkingAction">Parking</a></li>
				             <li><a href="${pageContext.request.contextPath}/action/showHouseKeepingAction">House Keeping</a></li>
							<li><a href="${pageContext.request.contextPath}/action/showLaundryAction">Laundry</a></li>
						    <li><a href="${pageContext.request.contextPath}/action/showCoffeeShop">Coffee Shop</a></li>
						    <li><a href="${pageContext.request.contextPath}/action/showRestaurant">Restaurant</a></li>
							 <li><a href="${pageContext.request.contextPath}/action/showCarRentalAction">Car Rental</a></li>
					         <li><a href="${pageContext.request.contextPath}/action?actionCode=RECEPTION">Reception</a></li>
						     <li><a href="${pageContext.request.contextPath}/action?actionCode=ENTERTAINMENT">Entertainment</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-user"></i> <span
							class="nav-label">User Management</span><span class="fa arrow"></span> </a>
						<ul class="nav nav-second-level collapse">
							<li><a href="#">Roles</a></li>
							<li><a href="${pageContext.request.contextPath}/user">Users</a></li>
						</ul></li>

					<li><a href="${pageContext.request.contextPath}/player"><i class="fa fa-desktop"></i> <span
							class="nav-label">Player</span> </a></li>

					<li><a href="${pageContext.request.contextPath}/order"><i class="fa fa-table"></i> <span
							class="nav-label">Order</span> </a></li>
 
				</ul>
			</div>
		</nav>
 

	<!-- Header Up -->

 
 <!-- Page Header UP Including logout  -->

	 
		<div class="row border-bottom">
			<nav class="navbar navbar-static-top" role="navigation"
				style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
					 
				</div>
				<ul class="nav navbar-top-links navbar-right">
				 
					<li><span class="m-r-sm   welcome-message">Welcome
							Admin</span></li>
					 	<li><a href="${pageContext.request.contextPath}/SHMS/login"> <i class="fa fa-sign-out"></i>
							Log out
					</a></li>
				</ul>

			</nav>
		</div>
	 
			<!-- Custom and plugin javascript -->
 
	 	<!-- Mainly scripts -->
			<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
			<script
				src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>
				
			<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
				<script src="<c:url value="/resources/js/navbar.js" />" ></script>
			<script
				src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
			<script
				src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>
      <!-- Custom and plugin javascript -->
		     <script src="<c:url value="/resources/js/inspinia.js" />"></script>
		   <script
				src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
   <!-- iCheck -->
		 	<script
				src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />"></script>
	 
	 <!-- Date Time Picker -->
	   	<script src="<c:url value="/resources/js/plugins/dateTimePicker/moment.min.js"/>"></script> 
	  	<script src="<c:url value="/resources/js/plugins/dateTimePicker/bootstrap-datetimepicker.js"/>"></script> 
	 
	 <!-- Full Screen Mode js -->
 
	 		<!-- Jvectormap -->
			<%-- <script
				src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"/>"></script>
			<script
				src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"></script>
 --%>
			<!-- Flot -->
			<%-- <script
				src="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>"></script>
			<script
				src="<c:url value="/resources/js/plugins/flot/jquery.flot.tooltip.min.js"/>"></script>
			<script
				src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js" />"></script>
			--%>
			    
</body>
</html>