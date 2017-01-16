<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">


<title>SHMS-Checked In Rooms</title>

</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">
			<!-- Page Contents -->
			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>
						<spring:message code="label.OccupiedRooms" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message
									code="label.Reservation" /></a></li>
						<li class="active"><strong><spring:message
									code="label.OccupiedRooms" /></strong></li>
					</ol>
				</div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">

							<div class="ibox-content">

								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example">
										<thead>
											<tr>
												<th><spring:message code="label.ReferenceID" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.CheckedinTime" /></th>
												<th><spring:message code="label.checkOutDate" /></th>
												<th><spring:message code="label.RoomNumber" /></th>
												<th><spring:message code="label.MemberName" /></th>
												 <th><spring:message code="label.Password" /></th>
												<th><spring:message code="label.CheckOut" /></th>
                                             </tr>
										</thead>
										<tbody> 
											<!-- Fetching Language Table-->
											<c:forEach items="${bookedRooms}" var="bookedRooms">
												<tr class="gradeX">
													<td class="center">${bookedRooms.bookingReferenceId}</td>
													<td class="center">${bookedRooms.bookingStatus}</td>
													<td class="center">${bookedRooms.checkedInTime}</td>
													<td class="center">${bookedRooms.endDate}</td>
													<td class="center">${bookedRooms.room.roomCode}</td>
													<td class="center">${bookedRooms.userDetails.firstName}</td>
													<td class="center">${bookedRooms.accessPassword}</td>
													<td class="center">
													<c:if test="${bookedRooms.bookingStatus=='CHECKEDIN'}">
														<a href="${pageContext.request.contextPath}/reservation/checkOut?bookingrefernceId=${bookedRooms.bookingReferenceId}" class="btn btn-primary">
															<spring:message code="label.CheckOut" />
														</a>
														</c:if>
													</td>
												</tr>
											</c:forEach>

										</tbody>

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

	<script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript">
		
	</script>
	<script type='text/javascript'
		src="<c:url value="/resources/js/modal_language.js" />">
		
	</script>


</body>
</html>