<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<link
	href="<c:url value="/resources/css/dateTimePicker/bootstrap-datetimepicker.css" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/css/dateTimePicker/datepicker3.css" />"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">

<title>Reservation</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.Reservation" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation/reservation"><spring:message code="label.Reservation" /></a></li>
						<li class="active"><strong><spring:message code="label.Reservation" /></strong></li>
					</ol>
				</div>
			</div>

			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-12 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.Reservation" /></h5>
								<div class="ibox-tools">

									<!-- <a class="btn btn-primary " data-toggle="modal"
										href="#Checked-Rooms"><i class="fa fa-th-list">
											Checked Rooms</i> </a> <a class="btn btn-primary" data-toggle="modal"
										href="#membersList"><i class="fa fa-globe"> Members</i> </a> -->

									<sec:authorize access="hasAnyRole('ROLE_CHECKIN','ROLE_ADMIN')"><a class="dropdown-toggle btn btn-primary"
										data-toggle="dropdown" href="#"> <i class="fa fa-th-list">
											<spring:message code="label.CheckIn" /></i>
									</a></sec:authorize>
									<ul class="dropdown-menu dropdown-user">
										<jsp:include page="../reservation/checkIn.jsp"></jsp:include>
									</ul>

									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>



								</div>
							</div>
							<div class="ibox-content">
								<form class="form-horizontal" method="POST"
									action="${pageContext.request.contextPath}/reservation/availableRooms">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<div class="row">
										<div class="col-lg-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title"><spring:message code="label.CheckIn" /></h3>
												</div><sec:authorize access="hasAnyRole('ROLE_BOOKING','ROLE_ADMIN')">
												<div class="panel-body">
													<div class="col-lg-6 form-group">

<!-- 
														<div id="data_5">
															<label class="font-noraml">Choose Booking Date</label>
															<div class="input-daterange input-group" id="datepicker">
																<input type="text" class="form-control" name="startDate" />
																<span class="input-group-addon">to</span> <input
																	type="text" class="input form-control" name="endDate" />
															</div>
														</div>
													</div>
 -->



												 		
														<label><spring:message code="label.CheckIn" /></label>
														<div class='input-group date' id='datetimepicker1'>
															<input type='text' class="form-control "
																name="startDate" required="required" /> <span class="input-group-addon">
																<span class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
													<div class="col-sm-1 form-group"></div>
  
													<div class="col-sm-4 form-group">
														<label><spring:message code="label.CheckOut" /></label>
														<div class='input-group date' id='datetimepicker2'>
															<input type='text' class="form-control "
																name="endDate" required="required" /> <span class="input-group-addon">
																<span class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>  


													<div class="col-lg-1 form-group"></div>
													<div class="col-lg-3 form-group">
														<label><spring:message code="label.Roomtype" /></label> <select required="required" class="form-control"
															name="roomType">
															<c:forEach items="${roomType}" var="roomType">
															
															<option value="${roomType.id}">${roomType.roomTypeCode}</option>
														 
															</c:forEach>
														</select>
													</div>
													<!-- <div class="col-sm-1 form-group"></div>
													<div class="col-sm-3 form-group">
														<label>Rooms</label>
														<div class="col-sm-13">
															<input class="touchspin1" type="text" value=""
																name="time_finish">
														</div>
													</div>
													<div class="col-sm-1 form-group"></div>
													<div class="col-sm-4 form-group">
														<label>Adults</label>
														<div class="col-sm-13">
															<input class="touchspin1" type="text" value=""
																name="time_finish">
														</div>
													</div>
													<div class="col-sm-1 form-group"></div>
													<div class="col-sm-3 form-group">
														<label>Children</label>
														<div class="col-sm-13">
															<input class="touchspin1" type="text" value=""
																name="time_finish">
														</div>
													</div> -->


													<div class="col-lg-1 form-group"></div>
													<div class="col-lg-2 form-group">
														<label><spring:message code="label.Search" /></label>
														<button id="singlebutton" type="submit"
															name="singlebutton" class="btn btn-primary center-block">
															<spring:message code="label.SearchAvailableRooms" /></button>
													</div>
                                                   
												</div></sec:authorize>
											</div>
										</div>
									</div>

								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
<sec:authorize access="hasAnyRole('ROLE_BOOKING','ROLE_ADMIN')">
			<jsp:include page="../reservation/availableRooms.jsp"></jsp:include>
</sec:authorize>
		</div>
	</div>


	<%-- 
	<div class="modal fade" id="membersList" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/members.jsp"></jsp:include>

			</div>

		</div>
	</div> --%>


	<%-- <div class="modal fade" id="Checked-Rooms" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/checkedRooms.jsp"></jsp:include>

			</div>

		</div>
	</div> --%>


	<%-- <div class="modal fade" id="CheckOut" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/checkOut.jsp"></jsp:include>

			</div>
		</div>
	</div> --%>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/dateTimePicker/callDateTimepicker.js"/>"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/dateTimePicker/bootstrap-datepicker.js"/>"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"/>"></script>

	<script type="text/javascript">
		$("input[name='time_finish']").TouchSpin({
			min : 0,
			max : 60,
			step : 1,
			boostat : 5,
			maxboostedstep : 10,

		});

		$('.datepicker').datepicker(

		);
	</script>

	<script type="text/javascript">
		$('#data_5 .input-daterange').datepicker({
			todayBtn : "linked",
			keyboardNavigation : false,
			calendarWeeks : true,
			forceParse : false,
			autoclose : true
		});
	</script>



</body>
</html>