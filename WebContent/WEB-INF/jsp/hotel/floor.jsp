<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Floor</title>
</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.Floor" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/hotel/showFloor"><spring:message code="label.Profile" /></a></li>
						<li class="active"><strong><spring:message code="label.Floor" /></strong></li>
					</ol>
				</div>

			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-10 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.AddNewFloorDetails" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<sec:authorize access="hasAnyRole('ROLE_FLOOR_ADD','ROLE_ADMIN')">
							<jsp:include page="../hotel/addFloor.jsp"></jsp:include>
							</sec:authorize>
						</div>

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.FloorDetails" /></h5>
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
												<th><spring:message code="label.FloorName" /></th>
												<th><spring:message code="label.Code" /></th>
												<th><spring:message code="label.Building" /></th>
												<th><spring:message code="label.TotalRoom" /></th>
												<th><spring:message code="label.Description" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Edit" /></th>
											</tr>
										</thead>

										<tbody>

											<c:forEach items="${floors}" var="floor">
												<tr class="read">
													<td class="floorId"><c:out value="${floor.id}" /></td>
													<td class="floorName"><c:out
															value="${floor.floorName}" /></td>
													<td class="floorCode"><c:out
															value="${floor.floorCode}" /></td>
													<td class="floorBuildingName"><c:out
															value="${floor.building.buildingCode}" /></td>
															<td class="floorBuildingId hide"><c:out
															value="${floor.building.id}" /></td>
													<td class="floorTotalRoom"><c:out
															value="${floor.floorTotalRoom}" /></td>
													<td class="floorDescription"><c:out
															value="${floor.floorDescription}" /></td>
													<td class="floorStatus"><c:out
															value="${floor.floorStatus}" /></td>
													<sec:authorize access="hasAnyRole('ROLE_FLOOR_EDIT','ROLE_ADMIN')"><td class="editFloorbtn"><i class="fa fa-pencil"><a><spring:message code="label.Edit" /></a></i></td></sec:authorize>

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


						<div class="modal fade" id="editFloor" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<jsp:include page="../hotel/editFloor.jsp"></jsp:include>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

</body>
<script src="<c:url value="/resources/js/hotel/floor.js"/>"></script>
</html>