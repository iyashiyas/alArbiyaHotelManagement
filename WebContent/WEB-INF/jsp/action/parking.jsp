<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHMS-ParkingService</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">

			<!-- Page Contents -->
			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>
						<spring:message code="label.Services" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/action"><spring:message
									code="label.Services" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Parking" /></strong></li>
					</ol>
				</div>
			</div>
			<div class="raw">
				<div class="wrapper wrapper-content animated fadeInRight">

					<div class="col-lg-10 animated fadeInRight">
						<div class="col-lg-8">
							<div class="raw">
								<div class="ibox float-e-margins">
									<div class="ibox-content text-center p-md">

										<h2>
											<span class="text-navy"><spring:message
													code="label.ParkingService" /></span>
											<spring:message code="label.IsHelpsTheCustomer" />
											<br />
											<spring:message
												code="label.ForGettingVehicleFromParkingAreaByVehicleNumber" />
										</h2>
										<p>
											<spring:message
												code="label.Herehaveoptionsyoucanturnon/offParkingServiceFromServiceScreens" />
										</p>


									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="ibox float-e-margins">

								<div class="ibox-content text-center p-md">
									<form:form
										action="${pageContext.request.contextPath}/action/updateParkingStatus"
										method="post" modelAttribute="hotelServiceCategory">
										<div class="form-group">

											<input type="hidden" name="serviceCategoryName"
												value="PARKING"> <input type="hidden"
												name="hotelServicesCategoryId" value="3">
											<div class="col-sm-10">
												<div class="col-sm-10">
													<form:checkbox id="checkbox1" path="categoryStatus"
														value="ENABLED" checked="checked" />
													<label for="checkbox1"> <spring:message
															code="label.Enable" />
													</label>
												</div>
											</div>
										</div>
										<div class="form-group">

											<button class="btn btn-primary" type="submit">
												<spring:message code="label.Update" />
											</button>
										</div>
									</form:form>
								</div>


							</div>
						</div>


					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-10 animated fadeInRight">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>
								<spring:message code="label.AddNewParkingSlot" />
							</h5>
							<div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a>
							</div>
						</div>
						<sec:authorize access="hasAnyRole('ROLE_PARKING_ADD','ROLE_ADMIN')">
							<jsp:include page="../action/addParking.jsp"></jsp:include></sec:authorize>
					</div>

				</div>
			</div>


          <div class="row">
				<div class="col-lg-10 animated fadeInRight">
				
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>
						<spring:message code="label.ParkingSlots" />
					</h5>
					<div class="ibox-tools">
						<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>

				<div class="ibox-content">
					<div class="table-responsive">
						<table
							class="table table-striped table-bordered table-hover dataTables-example">
							<thead>
								<tr>
									<th class="check-mail"><spring:message code="label.ID" /></th>
									<th><spring:message code="label.ParkingName" /></th>
									<th><spring:message code="label.Category" /></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${parkings}" var="parkings">
									<tr class="read">
										<td class="id"><c:out value="${parkings.id}" /></td>
										<td><c:out value="${parkings.parkingName}" /></td>
										<td><c:out value="${parkings.parkingCategory}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>