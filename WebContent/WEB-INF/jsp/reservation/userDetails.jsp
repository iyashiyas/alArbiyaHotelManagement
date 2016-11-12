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
					<h2>Add New Member</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation/reservation">Reservation</a></li>
						<li class="active"><strong>Add New Member</strong></li>
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
									Check In To Room Number <label class="label-primary">112B</label>
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

								<form class="form-horizontal" method="post">
									<div class="row ">




										<div class="col-lg-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">Members</h3>
												</div>
												<div class="panel-body">

													<div class="col-xs-4 form-group">
														<label>Member ID * </label> <input class="form-control"
															placeholder="Member ID" type="text" />
													</div>

													<div class="col-xs-4 form-group">
														<label>Member Phone</label> <input class="form-control"
															placeholder="Member Phone" type="text" />
													</div>

													<div class="col-xs-4 form-group">
														<label>Search</label> <a
															class="form-control btn btn-success " href="">Search</a>

													</div>

												</div>

											</div>
										</div>







										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">Basic Details</h3>
												</div>
												<div class="panel-body">


													<div class="col-xs-2 form-group">


														<label>Title</label> <select class="form-control">
															<option>Mr</option>
															<option>Mrs</option>
															<option>Ms</option>
														</select>
													</div>
													<div class="col-xs-10 form-group">
														<label>Name</label> <input class="form-control"
															placeholder="Full Name" type="text" />
													</div>
													<div class="col-xs-10 form-group">
														<label>Phone</label> <input class="form-control"
															placeholder="phone" type="text" />
													</div>


													<div class="col-xs-2 form-group">
														<label>Country</label> <select class="form-control"><option>Ind</option>
															<option>Ksa</option>
															<option>Us</option></select>
													</div>
													<div class="col-xs-11 form-group">
														<label>Email</label> <input class="form-control"
															placeholder="Email" type="text" />
													</div>

												</div>

											</div>
										</div>
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">Contact Details</h3>
												</div>
												<div class="panel-body">

													<div class="col-xs-7 form-group">
														<label>Address</label> <input class="form-control"
															placeholder="Address" type="text" />
													</div>

													<div class="col-xs-5 form-group">
														<label>Company Name</label> <input class="form-control"
															placeholder="Company Name" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label>City</label> <input class="form-control"
															placeholder="City" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label>State</label> <input class="form-control"
															placeholder="State" type="text" />
													</div>

												</div>

											</div>
										</div>

									</div>


									<div class="row">

										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title">Identity Details</h3>
											</div>
											<div class="panel-body">
												<div class="col-xs-5 form-group">
													<label>Identity type</label> <select class="form-control">
														<option>Passport</option>
														<option>National Id Card</option>
													</select>
												</div>
												<div class="col-xs-5 form-group">
													<label>Identity Number</label> <input class="form-control"
														placeholder="Identity Number" type="text" />
												</div>
												<div class="col-xs-5 form-group">
													<label>Nation</label> <select class="form-control">
														<option>Saudi Arabia</option>
													</select>
												</div>
												<div class="col-xs-5 form-group">
													<label>Scanned Id</label> <input class="form-control"
														placeholder="City" type="file" />
												</div>
												<div class="col-xs-2 form-group">
													<label>Finger Print</label>
													<button class="btn btn-primary" disabled="disabled">Scan
														Finger Print</button>
												</div>

											</div>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title">Office Use</h3>
											</div>
											<div class="panel-body">
												<div class="col-xs-5 form-group">
													<label>Add To Members List</label> <input type="checkbox"
														value="" checked="checked">
												</div>

											</div>
										</div>

										<div class="col-md-12 center-block">

											<button id="singlebutton" type="submit" name="singlebutton"
												class="btn btn-primary center-block">Create Member
												And Check In To Room</button>
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
</body>
</html>
