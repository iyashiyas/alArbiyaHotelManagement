<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SHMS-Ingredient</title>

</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.Rooms" /></h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message code="label.Profile" /></a></li>
						<li class="active"><strong><spring:message code="label.Room" /></strong></li>
					</ol>
				</div>

			</div>
			<div class="wrapper wrapper-content">
				<div class="row"> 
					<!-- Page Contents -->
					<!-- Page Heading -->

					<div class="col-lg-12 animated fadeInRight">
<sec:authorize access="hasAnyRole('ROLE_ROOM_ADD','ROLE_ADMIN')">
						<jsp:include page="../hotel/addRoom.jsp"></jsp:include>

</sec:authorize>
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.RoomsOverView" /></h5>
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
												<th><spring:message code="label.RoomName" /></th>
												<th><spring:message code="label.Code/Number" /></th>
												<th><spring:message code="label.Price" /></th>
												<th><spring:message code="label.Floor" /></th>
												<th><spring:message code="label.Roomtype" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Edit" /></th>

											</tr>
										</thead>

										<tbody>

											<c:forEach items="${rooms}" var="room">
												<tr class="read">
													<td class="roomId"><c:out value="${room.id}" /></td>
													<td class="roomName"><c:out value="${room.roomName}" /></td>
													<td class="roomCode"><c:out value="${room.roomCode}" /></td>
													<td class="roomPrice"><c:out value="${room.roomPrice}" /></td>
													<td class="roomFloorCode"><c:out
															value="${room.floor.floorCode}" /></td>
													<td class="roomFloorId hide"><c:out
															value="${room.floor.id}" /></td>
													<td class="roomType"><c:out
															value="${room.roomType.roomType}" /></td>
													<td class="roomTypeId hide"><c:out
															value="${room.roomType.id}" /></td>
													<td class="roomStatus"><c:out
															value="${room.roomStatus}" /></td>
															<td class="roomDescription hide"><c:out
															value="${room.roomDescription}" /></td>
												<sec:authorize access="hasAnyRole('ROLE_ROOM_EDIT','ROLE_ADMIN')"> <td class="edit-roombtn"><i class="fa fa-pencil"><a>Edit</a></i></td></sec:authorize>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- <div class="modal fade" id="confirm-submit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">Confirm Delete</div>
									<div class="modal-body">Are you sure you want to delete
										this item</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cancel</button>
										<a id="submit" class="btn btn-success success">Delete</a>
									</div>
								</div>
							</div>
						</div> -->

						<div class="modal fade" id="edit-Room" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header"><spring:message code="label.EditRoom" /></div>
									<div class="modal-body">

										<jsp:include page="../hotel/editRoom.jsp"></jsp:include>

									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

<script src="<c:url value="/resources/js/hotel/room.js"/>"></script>

</body>
</html>