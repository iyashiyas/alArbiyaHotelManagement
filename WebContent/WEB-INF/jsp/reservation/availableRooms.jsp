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
					<h2>Available Rooms</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation/reservation">Reservation</a></li>
						<li class="active"><strong>Available Rooms</strong></li>
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
								<h5>
									Available Rooms from <label class="label-primary">08-11-2016</label>
									to <label class="label-primary">09-11-2016</label>
								</h5>
								<div class="ibox-tools">
									<a class=""
										href="${pageContext.request.contextPath}/reservation/reservation">
										<i class="fa fa-backward"></i>
									</a> <a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>

								</div>
							</div>

							<div class="ibox-content">


								<div class="row">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example">
											<thead>
												<tr>
													<th>Room Id</th>
													<th>Room Number</th>
													<th>Floor</th>
													<th>Coast Per Day</th>
													<th>Status</th>
													<th>Check-In</th>
													<th>Book</th>
												</tr>
											</thead>
											<tbody>

												<!-- Fetching Language Table-->

												<tr class="gradeX">

													<td class="center">1</td>
													<td class="center">Room1</td>
													<td class="center">Floor</td>
													<td class="center">225 sar/-</td>
													<td class="center">Clean/dirty/block</td>
													<td class="center"><a class="btn btn-success"
														href="${pageContext.request.contextPath}/reservation/checkIn">Check-In</a></td>
													<td class="center"><button type="button"
															disabled="disabled" class="btn btn-default">Book</button></td>

												</tr>

												<!-- Demo -->
												<!--End Action -->
										</table>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>