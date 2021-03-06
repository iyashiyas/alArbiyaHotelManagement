<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link id="" href="<c:url value="/resources/css/dataTables/datatables.min.css"/>" rel="stylesheet">
<title>SHMS-Player</title>

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
					<h2>Player</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message
									code="label.Home" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Screen" /></strong></li>
					</ol>
				</div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>
									<spring:message
										code="label.player.playertableWillHelpyouToControlServiceScreensWithIP" />
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
												<th><spring:message code="label.PlayerId" /></th>
												<th><spring:message code="label.player.playerIP" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.player.assignedRoom" /></th>
												<th><spring:message code="label.player.assign" /></th>
											 </tr>
										</thead>
										<tbody> 
											<!-- Fetching Language Table-->
											<c:forEach items="${players}" var="players">
												<tr class="gradeX">

													<td class="center id">${players.id}</td>
													<td class="center playerIpAddress">${players.playerIpAddress}</td>
													<td class="center playerStatus"><label
														class=" label ${players.playerStatus == 'NOTCONFIGURED' ? 'label-primary' : 'label-danger'}">
															<c:out value="${players.playerStatus}" />
													</label></td>
													<td class="center playerRoomNumber">${players.room.roomCode}</td>
													<td class="center assigntoRoom">
													 <sec:authorize access="hasAnyRole('ROLE_ASSIGNROOM','ROLE_ADMIN')"><a class ="btn btn-danger">${players.playerStatus == 'ASSIGNED' ? 'Change Room' : 'Assign To Room'}</a></sec:authorize></td>
												 
												</tr>
											</c:forEach>
 
											<!-- Demo -->
											<!--End Action -->
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>


				<!-- Modal Popup Box -->

				<div class="modal fade" id="confirm-submit" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">Confirm Submit</div>
							<div class="modal-body">
								Are you sure you want to submit <label id="#langName"></label>?

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
								<a href="#" id="submit" class="btn btn-success success">Submit</a>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="assign" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							 <jsp:include page="../player/assignToRoom.jsp"></jsp:include>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />" type="text/javascript">
	 </script>
	 
	<script type='text/javascript' src="<c:url value="/resources/js/player/player.js" />">
	 </script>

</body>
</html>