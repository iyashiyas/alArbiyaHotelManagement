<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<link
	href="<c:url value="/resources/css/dateTimePicker/bootstrap-datetimepicker.css" />"
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
					<h2><spring:message code="BookingDetails" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation"><spring:message code="Reservation" /></a></li>
						<li class="active"><strong><spring:message code="BookingDetails" /></strong></li>
					</ol>
				</div>
			</div>

			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-12 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="BookingDetails" /></h5>
								<div class="ibox-tools">

									<!-- <a class="btn btn-primary " data-toggle="modal"
										href="#Checked-Rooms"><i class="fa fa-th-list">
											Checked Rooms</i> </a> <a class="btn btn-primary" data-toggle="modal"
										href="#membersList"><i class="fa fa-globe"> Members</i> </a> -->
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>

								</div>
							</div>
							<div class="ibox-content">
		<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example">
			<thead>
				 
			</thead>
			<tbody>
				<tr>
					<td><spring:message code="ReferenceID" /></td>
					<td>${bookingDetails.bookingReferenceId}</td>
				</tr>
				<tr>
					<td><spring:message code="RoomNumber" /></td>
					<td>${bookingDetails.room.roomCode}</td>
				</tr>
				
				<tr>
					<td><spring:message code="MemberID" /></td>
					<td>${bookingDetails.userDetails.memberId}</td>
				</tr>
				<tr>
					<td><spring:message code="MemberName" /></td>
					<td>${bookingDetails.userDetails.firstName}  ${bookingDetails.userDetails.lastName}</td>
				</tr>
				<tr>
					<td><spring:message code="BookedFrom" /></td>
					<td>${bookingDetails.startDate}</td>
				</tr>
				<tr>
					<td><spring:message code="BookedTill" /></td>
					<td>${bookingDetails.endDate}</td>
				</tr>
			</tbody>
		</table>
		
			<button id="singlebutton" type="submit" name="singlebutton" class="btn btn-primary center-block"> ${bookingDetails.PrintOut}</button>
		<a class="btn btn-primary center-block" href="${pageContext.request.contextPath}/reservation">${bookingDetails.DoAnotherBooking}</a>
	</div>
	
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>