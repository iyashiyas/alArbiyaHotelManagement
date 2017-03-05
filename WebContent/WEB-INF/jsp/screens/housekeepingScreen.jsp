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
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
	<link   href="<c:url value="/resources/css/select/select2.css"/>"
	rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/common.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<%-- <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"> --%>
<%-- <c:if test="${pageContext.response.locale=='ar'}">
	<link href="<c:url value="/resources/css/rtl/bootstrap-rtl.css"/>"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/rtl/bootstrap-rtl.min.css"/>"
		rel="stylesheet">
	<link href="<c:url value="/resources/css/rtl/style-rtl.css"/>"
		rel="stylesheet">
<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet"> 
	</c:if> --%>
<title>SHMS-Housekeeping-Order</title>
</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<!-- Page Contents -->
			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<%-- <div class="col-lg-9">
					<h2>
						<spring:message code="label.Order" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message
									code="label.Home" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Order" /></strong></li>
					</ol>
				</div> --%>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h3 class="text-center "><label class="label label-primary">HouseKeeping Screen</label></h3>
<form action="${pageContext.request.contextPath}/<c:url value="j_spring_security_logout" />"
					method="post">
					<button type="submit" class="btn btn-primary"><i class="fa fa-sign-out"></i>
						<spring:message code="label.Logout" />
					</button>
					 <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
							</div>
								<div class="ibox-content">
						 	<div class="table-responsive">  

									<table class="table table-striped table-bordered table-hover dataTables-example"
										id="orderTable">
										<thead>
											<tr>
												<th><spring:message code="label.OrderID" /></th>
												<th><spring:message code="label.OrderRoom" /></th>
												<th><spring:message code="label.ItemName" /></th>  
										        <th><spring:message code="label.RequestTime" /></th>
												<th><spring:message code="label.AcceptRequest" /></th>
												<th><spring:message code="label.Requests" /></th>  
											 </tr>
										</thead>
										<tbody class="animated fadeInRight">
											<!-- Fetching Language Table-->
											<!-- Fetching Language Table--> 
											 <c:forEach items="${orders}" var="orders"> 
											 <tr>
											 	<td class="center">${orders.id}</td>
											 	<td class="center">${orders.room.roomCode}</td>
											 	<td class="center">${orders.houseKeepingType}</td>
											 	<td class="center">${orders.requestTime}</td>
											 	<td class="center">
											 	<c:choose>
											 		<c:when test="${orders.status == 'ORDERED'}">
											 		<sec:authorize access="hasAnyRole('ROLE_HOUSEKEEPING_ACCEPTORDER','ROLE_ADMIN')">
											 		ROLE_HOUSEKEEPING_ACCEPTORDER
											 		  <a id="readyForDeliverys" data-toggle="modal"
																		data-target="#assignToDelivery" data-href="${pageContext.request.contextPath}/order/accpethouseKeepingRequest?id=${orders.id}&roomId=${orders.room.id}&serviceItemName=${Orders.houseKeepingType}&roomName=${orders.room.roomCode}"
																	class="btn btn-success "><spring:message
																		code="label.Submit" /></a>
																		</sec:authorize>>
											 		</c:when>
											 		<c:when test="${orders.status != 'ORDERED'}">
											 		   ${orders.status}
											 		</c:when>
											 	</c:choose>
											  </td> 
											   
											  </tr>
											 </c:forEach>  
											<!-- Demo -->
											<!--End Action -->
											</tbody>
									</table>
								</div>
								</div>
								<button type="button" class="btn btn-primary" onclick=refresh()>Refresh
									Off/Refresh Here</button>
							</div>
						</div>
					</div>
				</div>
			</div> 
			<input type="hidden" name="${_csrf.parameterName}" id="secuirtyId"
				value="${_csrf.token}" /> 
	</div>
	 
		<div class="modal fade" id="assignToDelivery" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">
								<spring:message code="label.ConfirmSubmit" />
							</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label class="col-sm-4 control-label"> <spring:message
										code="label.SelectDeliveryBoy" /></label>
								<div class="col-sm-8">
									<select id="e1" name="parkingId">
										<option value="0">SELECT DELIVERY BOY</option>
										<c:forEach items="${deliveryBoy}" var="deliveryBoy">
											<option value="${deliveryBoy.username}">${deliveryBoy.username}
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<spring:message code="label.Cancel" />
							</button>
							<a class="btn btn-danger btn-oks"><spring:message
									code="label.ConfirmSubmit" /></a>
						</div>
					</div>
				</div>
			</div>
	
	  
	<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
	<%-- <script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script> --%>

	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/navbar.js" />"></script>
	<script
		src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js" />"></script>
	<script
		src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>
	<!-- Custom and plugin javascript -->
	<script src="<c:url value="/resources/js/inspinia.js" />"></script>
	<script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
	<!-- iCheck -->
	<script
		src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />"></script>
<script src="<c:url value="/resources/js/plugins/select/select2.js"/>"></script> 

	<!-- Date Time Picker -->
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/bootstrap-datetimepicker.js"/>"></script>
	<script src="<c:url value="/resources/js/header/header.js"/>"></script>
	<%-- <script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript">   
	</script> --%>
	<script src="<c:url value="/resources/js/order/houseKeepingOrder.js" />"></script>

	 
</body>
</html>