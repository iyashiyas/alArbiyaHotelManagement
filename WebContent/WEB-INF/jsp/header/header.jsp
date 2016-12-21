<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/common.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<c:if test="${pageContext.response.locale=='ar'}">
	<link href="<c:url value="/resources/css/rtl/bootstrap-rtl.css"/>"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/rtl/bootstrap-rtl.min.css"/>"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/rtl/style-rtl.css"/>"
		rel="stylesheet">
</c:if>
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
						</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
							class="clear"> <span class="block m-t-xs"> <strong
									class="font-bold"><label id="hotelName"></label></strong>
							</span> <span class=" text-xs block"><spring:message
										code="label.Info" /> <b class="caret"></b></span>
						</span>
						</a>
						<ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a
								href="${pageContext.request.contextPath}/info/showInfo"><spring:message
										code="label.Profile" /></a></li>
							<li class="divider"></li>
							<li><a href="${pageContext.request.contextPath}/login"><spring:message
										code="label.Lock" /></a></li>
						</ul>
					</div>
					<div class="logo-element">SHMS</div>
				</li>

				<!-- ENd Profile Menu  -->

				<!--Main Tab Menus Left Side -->
				<li><a href="${pageContext.request.contextPath}/SHMS"><i
						class="fa fa-th-large"></i> <span class="nav-label"><spring:message
								code="label.Home" /></span> </a></li>
				<li><a href="${pageContext.request.contextPath}/language"><i
						class="fa fa-diamond"></i> <span class="nav-label"><spring:message
								code="label.Languages" /></span></a></li>
				<li><a href="#"><i class="fa fa-bar-chart-o"></i> <span
						class="nav-label"><spring:message code="label.Profile" /></span><span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<li><a
							href="${pageContext.request.contextPath}/hotel/showCurrency"><spring:message
									code="label.Currency" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/hotel/showBranch"><spring:message
									code="label.Branch" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/hotel/showBuilding"><spring:message
									code="label.Building" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/hotel/showFloor"><spring:message
									code="label.Floor" /></a></li>
						<li><a><i class="fa fa-bar-chart-o"></i> <spring:message
									code="label.Rooms" /> <span class="fa arrow"> </span></a>
							<ul class="nav nav-third-level collapse">
								<li><a
									href="${pageContext.request.contextPath}/hotel/showRoom"><spring:message
											code="label.Rooms" /></a></li>
								<li><a
									href="${pageContext.request.contextPath}/hotel/showRoomTypes"><spring:message
											code="label.RoomTypes" /></a></li>
							</ul></li>
					</ul></li>
				<li><a><i class="fa fa-credit-card"></i> <span class="nav-label"><spring:message
								code="label.Reservation" /></span></a>
								 
								<ul class="nav nav-third-level collapse">
								<li><a
									href="${pageContext.request.contextPath}/reservation"><spring:message
											code="label.Reservation" /></a></li>
								<li><a
									href="${pageContext.request.contextPath}/reservation/checkOut"><spring:message
											code="label.CheckOut" /></a></li>
							</ul>
								 
								</li>
								 
				<li><a href="${pageContext.request.contextPath}/unit"><i
						class="fa fa-pie-chart"></i> <span class="nav-label"><spring:message
								code="label.Unit" /></span> </a></li>
				<li><a href="${pageContext.request.contextPath}/ingredient"><i
						class="fa fa-shopping-cart"></i> <span class="nav-label"><spring:message
								code="label.Ingredients" /></span></a></li>
				<li><a href="#"><i class="fa fa-picture-o"></i> <span
						class="nav-label"><spring:message code="label.Service" /></span><span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level collapse">
						<%-- <li><a href="${pageContext.request.contextPath}/action"><spring:message
									code="label.AllServices" /></a></li> --%>
						<li><a
							href="${pageContext.request.contextPath}/action/showCheckoutAction"><spring:message
									code="label.CheckOut" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showParkingAction"><spring:message
									code="label.Parking" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showHouseKeepingAction"><spring:message
									code="label.HouseKeeping" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showLaundryAction"><spring:message
									code="label.Laundry" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showCoffeeShop"><spring:message
									code="label.CoffeeShop" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showRestaurant"><spring:message
									code="label.Restaurant" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showCarRentalAction"><spring:message
									code="label.CarRental" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action/showReception"><spring:message
									code="label.Reception" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/action?actionCode=ENTERTAINMENT"><spring:message
									code="label.Entertainment" /></a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-user"></i> <span
						class="nav-label"><spring:message
								code="label.UserManagement" /></span><span class="fa arrow"></span> </a>
					<ul class="nav nav-second-level collapse">
						<li><a
							href="${pageContext.request.contextPath}/role/showRole"><spring:message
									code="label.Roles" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/usermanagement/showUser"><spring:message
									code="label.Users" /></a></li>
					</ul></li>
				<li><a
					href="${pageContext.request.contextPath}/player/showPlayer"><i
						class="fa fa-desktop"></i> <span class="nav-label"><spring:message
								code="label.Player" /></span> </a></li>

				<li><a href="${pageContext.request.contextPath}/order"><i
						class="fa fa-table"></i> <span class="nav-label"><spring:message
								code="label.Order" /></span> </a></li>

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
			<c:if test="${pageContext.response.locale=='ar'}">
				<ul class="nav navbar-top-links navbar-left">
			</c:if>
			<c:if test="${pageContext.response.locale=='en'}">
				<ul class="nav navbar-top-links navbar-right">
			</c:if>
			<li><span class="m-r-sm welcome-message"><spring:message
						code="label.Welcome" /> <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize var="loggedIn" access="isAuthenticated()" />
<c:choose>
    <c:when test="${loggedIn}">
            <%= request.getUserPrincipal().getName() %>        
    </c:when>
    <c:otherwise>
    </c:otherwise>
</c:choose> </span></li>

			<li><form action="${pageContext.request.contextPath}/<c:url value="j_spring_security_logout" />"
					method="post">
					<button type="submit" class="btn btn-primary"><i class="fa fa-sign-out"></i>
						<spring:message code="label.Logout" />
					</button>
					 <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form></li>
			</ul>

		</nav>
	</div>

	<!-- Custom and plugin javascript -->

	<!-- Mainly scripts -->
	<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>

	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/navbar.js" />"></script>
	<script
		src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
	<script
		src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>
	<!-- Custom and plugin javascript -->
	<script src="<c:url value="/resources/js/inspinia.js" />"></script>
	<script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
	<!-- iCheck -->
	<script
		src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />"></script>

	<!-- Date Time Picker -->
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/bootstrap-datetimepicker.js"/>"></script>
		<script
		src="<c:url value="/resources/js/header/header.js"/>"></script>
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