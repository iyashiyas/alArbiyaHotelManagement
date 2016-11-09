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
					<h2>Reservation</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation/reservation">Reservation</a></li>
						<li class="active"><strong>Reservation</strong></li>
					</ol>
				</div>

			</div>
			<!-- Page Contents35
			55 -->
			<!-- Page Heading -->

			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-12 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Reservation</h5>
								<div class="ibox-tools">

									<a class="btn btn-primary " data-toggle="modal"
										href="#Checked-Rooms"><i class="fa fa-th-list">
											Checked Rooms</i> </a> <a class="btn btn-primary" data-toggle="modal"
										href="#membersList"><i class="fa fa-globe"> Members</i> </a> <a
										class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>

								</div>
							</div>
							<div class="ibox-content">
								<form class="form-horizontal" method="post"
									action="${pageContext.request.contextPath}/reservation/availableRooms">

									<div class="row">
										<div class="col-lg-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">Check In</h3>
												</div>
												<div class="panel-body">
													<div class="col-sm-3 form-group">
														<label>Check-In</label>
														<div class='input-group date' id='datetimepicker1'>
															<input type='text' class="form-control" /> <span
																class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
													<div class="col-sm-1 form-group"></div>

													<div class="col-sm-4 form-group">
														<label>Check-Out</label>
														<div class='input-group date' id='datetimepicker2'>
															<input type='text' class="form-control" /> <span
																class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
													<div class="col-sm-1 form-group"></div>
													<div class="col-sm-3 form-group">
														<label>Room Type</label> <select class="form-control"><option>Single</option>
															<option>Suite</option>
															<option>Room Type1</option></select>
													</div>
													<div class="col-sm-1 form-group"></div>
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
													</div>



													<div class="col-md-12 center-block">

														<button id="singlebutton" type="submit"
															name="singlebutton" class="btn btn-primary center-block">
															Search Available Rooms</button>
													</div>

												</div>
											</div>
										</div>
									</div>

								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<div class="modal fade" id="membersList" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/members.jsp"></jsp:include>

			</div>

		</div>
	</div>


	<div class="modal fade" id="Checked-Rooms" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/checkedRooms.jsp"></jsp:include>

			</div>

		</div>
	</div>


	<div class="modal fade" id="CheckOut" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../reservation/checkOut.jsp"></jsp:include>

			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/dateTimePicker/callDateTimepicker.js"/>"></script>

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
	</script>

</body>
</html>