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
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/phoneCode/intlTelInput.css"/>">

<style>
.form-horizontal .form-group {
	margin-right: 0 !important;
	margin-left: 0 !important;
}
</style>

<title><spring:message code="label.UserDetails" /></title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.AddNewMember" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/reservation/reservation"><spring:message code="label.Reservation" /></a></li>
						<li class="active"><strong><spring:message code="label.AddNewMember" /></strong></li>
					</ol>
				</div>
			</div>
			<div class="wrapper wrapper-content">
				<div class="row">

					<div class="col-lg-12">
						<form
							action="${pageContext.request.contextPath}/user/getUserDetails">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title"><spring:message code="label.AllReadyAMember" /></h3>
								</div>
								<div class="panel-body">
									<div class="col-xs-4 form-group">
										<input type="hidden" name="roomId" value="${roomId }" /> <input
											type="hidden" name="startDate" value="${ startDate}" /> <input
											type="hidden" name="endDate" value="${endDate}" /> <label>Member
											ID * </label> <input class="form-control" placeholder="Member ID"
											type="text" name="memberId" value="" />
									</div>
									<div style="clear: both;"></div>
									<div class="col-xs-4 form-group">
										<input class="form-control btn btn-success " type="submit"
											value="Search" />
									</div>
								</div>
							</div>
						</form>
					</div>

					<div class="col-lg-12 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>
								 	<spring:message code="label.CheckInToRoomNumber" /> <label class="label-primary">"${ roomId}"</label>
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
								<form:form class="form-horizontal" method="POST"
									action="${pageContext.request.contextPath}/reservation/doBooking/?roomId=${roomId}&startDate=${startDate }&endDate=${endDate }"
									modelAttribute="userDetails">
									<div class="row ">
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title"><spring:message code="label.BasicDetails" /></h3>
													<input type="hidden" name="id" value="${userDetails.id }" />
												</div>
												<div class="panel-body">
													<div class="col-xs-2 form-group">
														<label>Title</label>
														<form:select class="form-control" path="title"
															style="width: 150%;">
															<form:option value="Mr">Mr</form:option>
															<form:option value="Mrs">Mrs</form:option>
															<form:option value="Ms">Ms</form:option>
														</form:select>
													</div>
													<div class="col-xs-10 form-group">
														<label><spring:message code="label.Name" /></label>
														<form:input class="form-control" path="firstName"
															placeholder="Full Name" type="text" />
													</div>
													<div class="col-xs-14 form-group">
														<label><spring:message code="label.PhoneNumber" /></label>
														<form:input class="form-control" id="mobile-number"
															path="phoneNumber" placeholder="phone" type="text" />
													</div>

													<div class="col-xs-12 form-group">
														<label><spring:message code="label.Email" /></label>
														<form:input class="form-control" path="email"
															placeholder="Email" type="text" />
													</div>

												</div>

											</div>
										</div>
										<div class="col-lg-6">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title"><spring:message code="label.ContactDetails" /></h3>
												</div>
												<div class="panel-body">
													<div class="col-xs-7 form-group">
														<label><spring:message code="label.Address" /></label>
														<form:input class="form-control" path="addressLineOne"
															placeholder="Address" type="text" />
													</div>

													<div class="col-xs-5 form-group">
														<label><spring:message code="label.CompanyName" /></label>
														<form:input class="form-control" path="companyName"
															placeholder="Company Name" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label><spring:message code="label.City" /></label>
														<form:input class="form-control" path="city"
															placeholder="City" type="text" />
													</div>

													<div class="col-xs-10 form-group">
														<label><spring:message code="label.State" /></label>
														<form:input class="form-control" path="state"
															placeholder="State" type="text" />
													</div>

												</div>

											</div>
										</div>

									</div>


									<div class="row">

										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title"><spring:message code="label.IdentityDetails" /></h3>
											</div>
											<div class="panel-body">
												<div class="col-xs-5 form-group">
													<label><spring:message code="label.IdentityType" /></label>
													<form:select class="form-control" path="identityType">
														<form:option value="Passport"><spring:message code="label.passport" /></form:option>
														<form:option value="NIC"><spring:message code="label.NationalIDCard" /></form:option>
													</form:select>
												</div>
												<div class="col-xs-5 form-group">
													<label><spring:message code="label.IdentityNumber" /></label>
													<form:input class="form-control" path="identityNumber"
														placeholder="Identity Number" type="text" />
												</div>
												<div class="col-xs-5 form-group">
													<label><spring:message code="label.Country" /></label>
								 
													<form:select class="form-control" path="country">
													    <form:option value="KSA">KSA</form:option>
														<form:option value="India">India</form:option>
														<form:option value="USA">USA</form:option>
														<form:option value="UAE">UAE</form:option>
													</form:select>
												</div>
												<div class="col-xs-5 form-group">
													<label><spring:message code="label.ScanId" /></label>
													<form:input class="form-control" path="scannedId" value="" />
												</div>
												<div class="col-xs-2 form-group">
													<label><spring:message code="label.FingerPrint" /></label>
													<button class="btn btn-primary" disabled="disabled"><spring:message code="label.ScanFingerPrint" /></button>
												</div>

											</div>
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title"><spring:message code="label.OfficeUse" /></h3>
											</div>
											<div class="panel-body">
												<div class="col-xs-5 form-group">
													<label><spring:message code="label.AddToMemberList" /></label>
													<form:checkbox path="hotelMember" value=""
														checked="checked" />
												</div>
											</div>
										</div>

										<div class="col-md-12 center-block">

											<button id="singlebutton" type="submit" name="singlebutton"
												class="btn btn-primary center-block"><spring:message code="label.CreateBooking" /></button>
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
	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/phoneCode/intlTelInput.min.js"/>">
		
	</script>
	<script type="text/javascript">
		$("#mobile-number").intlTelInput();
	</script>
</body>
</html>
