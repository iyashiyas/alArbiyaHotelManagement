<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link id="loadBefore"
	href="<c:url value="/resources/css/chartist/chartist.min.css" />"
	rel="stylesheet">
<!-- Bootstrap -->
<title>SHMS-Home</title>
</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg animated fadeInRight">
			<!-- End -->
			<!-- Page Contents -->

			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>
						<spring:message code="label.Home" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/SHMS"><spring:message
									code="label.Home" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Home" /></strong></li>
						<marquee>In Screen URL include Server IP and port (EX:
							http://192.168.100.111:9091/alArbiyaScreenManagement/home)</marquee>
					</ol>
				</div>
			</div>
			
			<div class="raw animated fadeInRight"> 
				<!-- Chart 000-->
				<sec:authorize access="hasAnyRole('ROLE_PLAYEROVERVIEW','ROLE_ADMIN')">
					<div class="col-lg-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<a href="${pageContext.request.contextPath}/player/showPlayer"><spring:message
										code="label.Screen" /> - (${fn:length(players)}) </a>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
								<input type="hidden" name="players"
									value="${fn:length(configuredplayer)}" id="configuredPlayer">
								<input type="hidden" name="players"
									value="${fn:length(notConfiguredPlayer)}"
									id="notConfiguredPlayer"> 
							</div>
							<div class="ibox-content">
								<div>
									<canvas id="doughnutChart" height="140"></canvas>
								</div>
							</div>
						</div>
					</div>
				</sec:authorize>
				<sec:authorize
					access="hasAnyRole('ROLE_ROOMSOVERVIEW','ROLE_ADMIN')">
					<div class="col-lg-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<a href="${pageContext.request.contextPath}/hotel/showRoom"><spring:message
										code="label.Rooms" /> - (${fn:length(rooms)}) </a>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
								<input type="hidden" name="bookedRooms"
									value="${fn:length(bookedRooms)}" id="bookedRooms"> <input
									type="hidden" name="checkInRooms"
									value="${fn:length(checkedInRoom)}" id="checkInRooms">
							</div>
							<div class="ibox-content">
								<div>
									<canvas id="doughnutChartRooms" height="140"></canvas>
								</div>
							</div>
						</div>
					</div>
				</sec:authorize>
 
				  <sec:authorize
					access="hasAnyRole('ROLE_PARKINGVIEW','ROLE_ADMIN')">
					<div class="col-lg-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title"><a href="${pageContext.request.contextPath}/showParking">
							 <spring:message code="label.Parking" /> - (${fn:length(parkings)}) </a>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
								<input type="hidden" name="parkings"
									value="${fn:length(parkings)}" id="parkings">
								<input type="hidden" name="availableParking"
									value="${fn:length(availableParking)}" id="availableParking">
							</div>
							<div class="ibox-content">
								<div>
									<canvas id="doughnutChartParking" height="140"></canvas>
								</div>
							</div>
						</div>
					</div>
				</sec:authorize> 
				</div> 
			<div class="raw animated fadeInRight "> 
			<div class="col-lg-12"> 
				 <sec:authorize
					access="hasAnyRole('ROLE_REQUESTOVERVIEW','ROLE_ADMIN')">
					<div class="col-lg-8">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.Requests" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
								<input type="hidden" name="CoffeeShopOrder"
									value="${fn:length(CoffeeShopOrderRequest)}" id="CoffeeShopOrder">
								<input type="hidden" name="CoffeeShopOrderRequestAccept"
									value="${fn:length(CoffeeShopOrderRequestAccept)}" id="CoffeeShopOrderRequestAccept">
							<input type="hidden" name="CoffeeShopOrderDeliverd"
									value="${fn:length(CoffeeShopOrderDeliverd)}" id="CoffeeShopOrderDeliverd">
									
									<!--  -->
										<input type="hidden" name="restaurantOrderRequest"
									value="${fn:length(restaurantOrderRequest)}" id="restaurantOrderRequest">
								<input type="hidden" name="restaurantOrderRequestAccept"
									value="${fn:length(restaurantOrderRequestAccept)}" id="restaurantOrderRequestAccept">
							<input type="hidden" name="restaurantOrderDeliverd"
									value="${fn:length(restaurantOrderDeliverd)}" id="restaurantOrderDeliverd">
								  <!--  --> 
								  <input type="hidden" name="laundryOrderRequest"
									value="${fn:length(laundryOrderRequest)}" id="laundryOrderRequest">
								<input type="hidden" name="laundryOrderRequestAccept"
									value="${fn:length(laundryOrderRequestAccept)}" id="laundryOrderRequestAccept">
							<input type="hidden" name="laundryOrderDeliverd"
									value="${fn:length(laundryOrderDeliverd)}" id="laundryOrderDeliverd">
									 
								  <input type="hidden" name="houseKeepingOrderRequest"
									value="${fn:length(houseKeepingOrderRequest)}" id="houseKeepingOrderRequest">
								<input type="hidden" name="houseKeepingOrderRequestAccept"
									value="${fn:length(houseKeepingOrderRequestAccept)}" id="houseKeepingOrderRequestAccept">
							  
							   <input type="hidden" name="receptionOrderRequest"
									value="${fn:length(receptionOrderRequest)}" id="receptionOrderRequest">
								<input type="hidden" name="receptionOrderRequestAccept"
									value="${fn:length(receptionOrderRequestAccept)}" id="receptionOrderRequestAccept">
							   
							</div>
							<div class="ibox-content"> 
						 
								<canvas id="barChart" height="126" width="485" style="display: block; width: 485px; height: 126px;"  ></canvas>
							  
							</div>
						</div>
					</div>
				</sec:authorize>
				 
				<sec:authorize
					access="hasAnyRole('ROLE_PROFILEOVERVIEW','ROLE_ADMIN')">
					<div class="col-lg-4">
						<div><marquee direction="up">
							<table class="table">	
								<tbody> 
							
									<tr>
										<td><a type="button"
											href="${pageContext.request.contextPath}/hotel/showBranch"
											class="btn btn-warning m-r-sm">${fn:length(branches)}</a> <spring:message
												code="label.TotalBranch" /></td>
                                      </tr><tr>
										<td><a type="button"
											href="${pageContext.request.contextPath}/hotel/showBuilding"
											class="btn btn-danger m-r-sm">${fn:length(buildings)}</a> <spring:message
												code="label.Totalbuilding" /></td> </tr><tr>
										<td><a type="button"
											href="${pageContext.request.contextPath}/hotel/showFloor"
											class="btn btn-info m-r-sm">${fn:length(floors)}</a> <spring:message
												code="label.TotalFloor" /></td> 
										   </tr><tr>
										<td><a type="button"
											href="${pageContext.request.contextPath}/hotel/showRoomTypes"
											class="btn btn-default m-r-sm">${fn:length(roomTypes)}</a> <spring:message
												code="label.TotalRoomTypes" /></td>  
									</tr>
								</tbody>
							</table></marquee>
						</div> 
					</div>
				</sec:authorize> 
				</div>
				</div>
				 
		</div> 
		</div>
				<%--   
				<sec:authorize access="hasAnyRole('ROLE_URLPREVIEW','ROLE_ADMIN')">
					<div class="col-lg-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.AccessURL" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div>
									<spring:message code="label.ROOM-SCREEN-URL" />
							serverip:9091/alArbiyaScreenManagement/home</label>
									 
										<spring:message code="label.COFFEESHOP-SCREEN-URL" />
								serverip:9091/alArbiyaHotelManagement/order/coffeeShopScreen</label>
									 
										<spring:message code="label.RESTAURANT-SCREEN-URL" />
							serverip:9091/alArbiyaHotelManagement/order/restaurantScreen</label>
									 
										<spring:message code="label.LAUNDRY-SCREEN-URL" />
									serverip:9091/alArbiyaHotelManagement/order/laundryScreen</label>
									 
										<spring:message code="label.PARKING-SCREEN-URL" />
								serverip:9091/alArbiyaHotelManagement/ParkingScreen</label>
								</div>
							</div>
						</div>
					</div>
				</sec:authorize>  --%>
				  
	<script
		src="<c:url value="/resources/js/plugins/chart/Chart.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/plugins/chart/customChart.js" />"></script>

</body>
</html>