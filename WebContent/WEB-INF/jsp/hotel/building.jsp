<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
	<link id="" href="<c:url value="/resources/css/bootstrap-notify.css"/>"
	rel="stylesheet">
	<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<title>SHMS-Building</title>
</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.Building" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/hotel?profileCode=BUILDING"><spring:message code="label.Profile" /></a></li>
						<li class="active"><strong><spring:message code="label.Building" /></strong></li>
					</ol>
				</div>
			</div>

			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-10 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.AddNewBuildingDetails" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<sec:authorize access="hasAnyRole('ROLE_BUILDING_ADD','ROLE_ADMIN')">
							<jsp:include page="../hotel/addBuilding.jsp"></jsp:include>
							</sec:authorize>
						</div>

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.BuildingDetails" /></h5>
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
												<th><spring:message code="label.BuildingName" /></th>
												<th><spring:message code="label.Code" /></th>
												<th><spring:message code="label.Branch" /></th>
												<th><spring:message code="label.Floor" /></th>
												<th><spring:message code="label.PhoneNumber" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Action" /></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${buildings}" var="building">
												<tr class="read">
													<td class="id"><c:out value="${building.id}" /></td>
													<td class="buildingName"><c:out
															value="${building.buildingName}" /></td>
													<td class="buildingCode"><c:out
															value="${building.buildingCode}" /></td>
													<td class="branchName"><c:out
															value="${building.branch.branchCode}" /></td>
													<td class="branchId hide"><c:out
															value="${building.branch.id}" /></td>
													<td class="buildingTotalFloor"><c:out
															value="${building.buildingTotalFloor}" /></td>
													<td class="buildingPhoneNumber"><c:out
															value="${building.buildingPhoneNumber}" /></td>
													<td class="buildingEmail hide"><c:out
															value="${building.buildingEmail}" /></td>
													<td class="buildingDescription hide"><c:out
															value="${building.buildingDescription}" /></td>
													<td class="buildingStatus"><c:out
															value="${building.buildingStatus}" /></td>
													<sec:authorize access="hasAnyRole('ROLE_BUILDING_EDIT','ROLE_ADMIN')"><td class="buildingEditbtn"><i class="fa fa-pencil"><a><spring:message code="label.Edit" /></a></i></td></sec:authorize>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="editBuildingModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header"><spring:message code="label.EditBuldingDetails" /></div>
					<jsp:include page="../hotel/editBuilding.jsp"></jsp:include>
				</div>
			</div>
		</div>
			<div class='notifications top-right'></div>
</body>
<script src="<c:url value="/resources/js/hotel/building.js"/>"></script>
	<script type='text/javascript'
		src="<c:url value="/resources/js/bootstrap-notify.js" />"></script>

</html>