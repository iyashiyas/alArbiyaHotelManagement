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

<title>SHMS-Header</title>
</head>
<body>
	<div id="wrapper">
		<!-- Header left side -->
		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<!-- Profile Menu -->
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear"> <span class="block m-t-xs"> <strong
										class="font-bold">Hotel Name</strong>
								</span> <span class="text-muted text-xs block">Branch <b
										class="caret"></b></span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="#">Profile</a></li>
								<li class="divider"></li>
								<li><a href="login.html">Logout</a></li>
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
							<li><a href="#">Branch</a></li>
							<li><a href="#">Building</a></li>
							<li><a href="#">Floor</a></li>
							<li><a href="#">Rooms</a></li>

						</ul></li>

					<li><a href="#"><i class="fa fa-pie-chart"></i> <span
							class="nav-label">Unit</span> </a></li>
					<li><a href="#"><i class="fa fa-shopping-cart"></i> <span
							class="nav-label">Ingredients</span></a></li>
					<li><a href="#"><i class="fa fa-picture-o"></i> <span
							class="nav-label">Services</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="#">###</a></li>
							<li><a href="#"> ####</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-desktop"></i> <span
							class="nav-label">User Management</span> </a>
						<ul class="nav nav-second-level collapse">
							<li><a href="contacts.html">Roles</a></li>
							<li><a href="profile.html">Users</a></li>
						</ul></li>

					<li><a href="#"><i class="fa fa-desktop"></i> <span
							class="nav-label">Player</span> </a></li>

					<li><a href="#"><i class="fa fa-table"></i> <span
							class="nav-label">Order</span> </a></li>


				</ul>
			</div>
		</nav>
 

	<!-- Header Up -->

 
 <!-- Page Header UP Including logout  -->

	<div id="page-wrapper" class="gray-bg">
		<div class="row border-bottom">
			<nav class="navbar navbar-static-top" role="navigation"
				style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
					 
				</div>
				<ul class="nav navbar-top-links navbar-right">
					<li><span class="m-r-sm text-muted welcome-message">Welcome
							Admin</span></li>
					 	<li><a href="#"> <i class="fa fa-sign-out"></i>
							Log out
					</a></li>
				</ul>

			</nav>
		</div>
	 
			<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
			<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>
			<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
			<script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
			<script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>
			<script src="<c:url value="/resources/js/inspinia.js" />"></script>
			<script	src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
			<script src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />"></script>
			<script src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"/>"></script>
			<script src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"></script>
			<script src="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>"></script>
			<script src="<c:url value="/resources/js/plugins/flot/jquery.flot.tooltip.min.js"/>"></script>
			<script src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js" />"></script>
			<script>
				$(document).ready(
						function() {
							var d1 = [ [ 1262304000000, 6 ],
									[ 1264982400000, 3057 ],
									[ 1267401600000, 20434 ],
									[ 1270080000000, 31982 ],
									[ 1272672000000, 26602 ],
									[ 1275350400000, 27826 ],
									[ 1277942400000, 24302 ],
									[ 1280620800000, 24237 ],
									[ 1283299200000, 21004 ],
									[ 1285891200000, 12144 ],
									[ 1288569600000, 10577 ],
									[ 1291161600000, 10295 ] ];
							var d2 = [ [ 1262304000000, 5 ],
									[ 1264982400000, 200 ],
									[ 1267401600000, 1605 ],
									[ 1270080000000, 6129 ],
									[ 1272672000000, 11643 ],
									[ 1275350400000, 19055 ],
									[ 1277942400000, 30062 ],
									[ 1280620800000, 39197 ],
									[ 1283299200000, 37000 ],
									[ 1285891200000, 27000 ],
									[ 1288569600000, 21000 ],
									[ 1291161600000, 17000 ] ];

							var data1 = [ {
								label : "Data 1",
								data : d1,
								color : '#17a084'
							}, {
								label : "Data 2",
								data : d2,
								color : '#127e68'
							} ];
							$.plot($("#flot-chart1"), data1, {
								xaxis : {
									tickDecimals : 0
								},
								series : {
									lines : {
										show : true,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 1
											}, {
												opacity : 1
											} ]
										}
									},
									points : {
										width : 0.1,
										show : false
									}
								},
								grid : {
									show : false,
									borderWidth : 0
								},
								legend : {
									show : false
								}
							});

							var data2 = [ {
								label : "Data 1",
								data : d1,
								color : '#19a0a1'
							} ];
							$.plot($("#flot-chart2"), data2, {
								xaxis : {
									tickDecimals : 0
								},
								series : {
									lines : {
										show : true,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 1
											}, {
												opacity : 1
											} ]
										}
									},
									points : {
										width : 0.1,
										show : false
									}
								},
								grid : {
									show : false,
									borderWidth : 0
								},
								legend : {
									show : false
								}
							});

							var data3 = [ {
								label : "Data 1",
								data : d1,
								color : '#fbbe7b'
							}, {
								label : "Data 2",
								data : d2,
								color : '#f8ac59'
							} ];
							$.plot($("#flot-chart3"), data3, {
								xaxis : {
									tickDecimals : 0
								},
								series : {
									lines : {
										show : true,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 1
											}, {
												opacity : 1
											} ]
										}
									},
									points : {
										width : 0.1,
										show : false
									}
								},
								grid : {
									show : false,
									borderWidth : 0
								},
								legend : {
									show : false
								}
							});

							$('.i-checks').iCheck({
								checkboxClass : 'icheckbox_square-green',
								radioClass : 'iradio_square-green'
							});

							$(".todo-list").sortable({
								placeholder : "sort-highlight",
								handle : ".handle",
								forcePlaceholderSize : true,
								zIndex : 999999
							}).disableSelection();

							var mapData = {
								"US" : 498,
								"SA" : 200,
								"CA" : 1300,
								"DE" : 220,
								"FR" : 540,
								"CN" : 120,
								"AU" : 760,
								"BR" : 550,
								"IN" : 200,
								"GB" : 120,
								"RU" : 2000
							};

							$('#world-map').vectorMap({
								map : 'world_mill_en',
								backgroundColor : "transparent",
								regionStyle : {
									initial : {
										fill : '#e4e4e4',
										"fill-opacity" : 1,
										stroke : 'none',
										"stroke-width" : 0,
										"stroke-opacity" : 0
									}
								},
								series : {
									regions : [ {
										values : mapData,
										scale : [ "#1ab394", "#22d6b1" ],
										normalizeFunction : 'polynomial'
									} ]
								}
							});
						});
			</script>
</body>
</html>