<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">

<title>SHMS-HouseKeepingService</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">

			<!-- Page Contents -->
			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Services</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/action">Services</a></li>
						<li class="active"><strong>Housekeeping</strong></li>
					</ol>
				</div>
			</div>
			<div class="raw">
				<div class="wrapper wrapper-content animated fadeInRight">

					<div class="col-lg-10 animated fadeInRight">
						<div class="col-lg-6">
							<div class="raw">
								<div class="ibox float-e-margins">
									<div class="ibox-content text-center p-xs">

										<h2>
											<span class="text-navy">HouseKeeping - Service</span> is
											Helps The Customer <br />For Cleaning Rooms
										</h2>

										<p>Here have options you can turn on/off House-Keeping
											Service From Service Screens</p>


									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="ibox float-e-margins">

								<div class="ibox-content text-center p-sm">
									<form:form class="form-horizontal"
										action="${pageContext.request.contextPath}/action/updateHouseKeepingStatus"
										method="post" modelAttribute="hotelServiceCategory">
										<div class="form-group">

											<input type="hidden" name="serviceCategoryName"
												value="HOUSEKEEPING"> <input type="hidden"
												name="hotelServicesCategoryId" value="3">
											<div class="col-sm-4">

												<form:checkbox id="checkbox1" path="categoryStatus"
													value="ENABLED" checked="checked" />
												<label for="checkbox1"> ENABLE </label>
											</div>
											<button class="btn btn-primary" type="submit">
												Update</button>
										</div>
									</form:form>
								</div>
							</div>
						</div>


					</div>


					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>House Keeping Table</h5>
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
										<th>Room number</th>
										<th>Room Status</th>
										<th>Reservation Status</th>
										<th>Action</th>

									</tr>
								</thead>

								<tbody>
									<tr>
									<td>Room 1</td>
								 <td>
									 Clean</td>
									 <td>
								 Stay Over</td>
							   
							    <td><select><option>Clean</option>
							    <option>Dirty</option>
							    <option>Block Room</option>
							    </select>
								</td>
									</tr>


								</tbody>
							</table>
</div>

						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
	       <script src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>
		 
		<!-- Page-Level Scripts -->
		<script src="<c:url value="/resources/js/datatablecustom.js" />"></script>
			 
</body>
</html>