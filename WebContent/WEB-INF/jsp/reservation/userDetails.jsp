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

<style>
	.form-horizontal .form-group {
		margin-right: 0 !important;
    	margin-left: 0 !important;
	}
</style>

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
								<form:form class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/reservation/doBooking/?roomId=${roomId}&startDate=${startDate }&endDate=${endDate } " modelAttribute="userDetails">
									<div class="row ">
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">Basic Details</h3>
												</div>
												<div class="panel-body">
													<div class="col-xs-2 form-group">
														<label>Title</label> 
														<form:select class="form-control" path="title" style="width: 150%;">
															<form:option value="Mr">Mr</form:option>
															<form:option value="Mrs">Mrs</form:option>
															<form:option value="Ms">Ms</form:option>
														</form:select>
													</div>
													<div class="col-xs-10 form-group">
														<label>Name</label> 
														<form:input class="form-control" path="firstName" placeholder="Full Name" type="text" />
													</div>
													<div class="col-xs-10 form-group">
														<label>Phone</label> 
														<form:input class="form-control" path="phoneNumber" placeholder="phone" type="text" />
													</div>
													<div class="col-xs-2 form-group">
														<label>Country Code</label> 
														<form:select class="form-control" path="phoneCode">
															<form:option value="+91">+91</form:option>
															<form:option value="+1">+1</form:option>
															<form:option value="+971">+971</form:option>
														</form:select>
													</div>
													<div class="col-xs-11 form-group">
														<label>Email</label> 
														<form:input class="form-control" path="email" placeholder="Email" type="text" />
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
														<label>Address</label> 
														<form:input class="form-control" path="addressLineOne"	placeholder="Address" type="text" />
													</div>

													<div class="col-xs-5 form-group">
														<label>Company Name</label> 
														<form:input class="form-control" path="companyName" placeholder="Company Name" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label>City</label> 
														<form:input class="form-control" path="city"	placeholder="City" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label>State</label> 
														<form:input class="form-control" path="state" placeholder="State" type="text" />
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
													<label>Identity type</label> 
													<form:select class="form-control" path="identityType">
														<form:option value="Passport">Passport</form:option>
														<form:option value="NIC">National Id Card</form:option>
													</form:select>
												</div>
												<div class="col-xs-5 form-group">
													<label>Identity Number</label> 
													<form:input class="form-control" path="identityNumber" placeholder="Identity Number" type="text" />
												</div>
												<div class="col-xs-5 form-group">
													<label>Country</label>  
													<form:select class="form-control" path="country">
															<form:option value="India">India</form:option>
															<form:option value="USA">USA</form:option>
															<form:option value="UAE">UAE</form:option>
													</form:select>
												</div>
												<div class="col-xs-5 form-group">
													<label>Scanned Id</label> 
													<form:input class="form-control" path="scannedId" value=""/>
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
													<label>Add To Members List</label> 
													<form:checkbox path="hotelMember" value="" checked="checked"/>
												</div>
											</div>
										</div>

										<div class="col-md-12 center-block">

											<button id="singlebutton" type="submit" name="singlebutton"
												class="btn btn-primary center-block">Create Member
												And Check In To Room</button>
										</div>
									</div>


								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
