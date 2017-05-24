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
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/> 
<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet"> 
<title>SHMS-Order</title> 
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
						<spring:message code="label.Order" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message
									code="label.Home" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Order" /></strong></li>
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
										code="label.OrderTableWillHelpyouToViewTheAllOrderFromServiceScreen" />
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
											<th><spring:message code="label.OrderID" /></th> 
												<th><spring:message code="label.OrderRoom" /></th> 
												<th><spring:message code="label.RequestTime" /></th>
												<th><spring:message code="label.AcceptRequest" /></th>
												<th><spring:message code="label.ReadyForDelivery" /></th>
												<th><spring:message code="label.Delivered" /></th>
											</tr>
										</thead>
										<tbody> 
											<!-- Fetching Language Table-->

											<c:forEach items="${orders}" var="orders">
											
												<tr class="gradeX hotelServiceItem">
												
												 	<td class="center showOrderForm" ><a href="#orderItems${orders.id}" data-toggle="modal">${orders.id}</a>
												 	
												 	
												 	
												 									 	
				  <div class="modal fade .orderItemss" id="orderItems${orders.id}"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<form class="form-horizontal" action="" method="post">
								<div class="modal-header">
									<spring:message code="label.order.orderDetails" />
								</div>
								<div class="modal-body"> 
										<table id="datatab"
											class="table table-striped table-bordered table-hover dataTables-example">
											<thead>
												<tr>
													<th><spring:message code="label.OrderID" /></th>
													<th><spring:message code="label.OrderItems" /></th>
													<th><spring:message code="label.Quantity" /></th> 
												</tr>
											</thead>
											<tbody> 
												<!-- Fetching Language Table-->
                                               <c:forEach items="${orders.newOrderDetails}" var="newOrderDetails" varStatus="loop">
												<tr class="gradeX">

													<td class="center">${newOrderDetails.id}</td>
													<td class="center"> ${newOrderDetails.product.serviceItemName}</td>
													<td class="center">${newOrderDetails.quantity} </td>  
												</tr>
												</c:forEach>

												<!-- Demo -->
												<!--End Action -->
										</table>
									 
 
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<spring:message code="label.Close" />
									</button>

								</div>
							</form>
						</div>
					</div>
				</div> 
												 	
												 	</td>  
												 	 
												 	<!-- Order Details -->
												 	 
												 	<!-- Order Details Finished -->
												 	 
													<td class="center">${orders.room.roomCode}</td>
													   
													<td class="center">${orders.requestedTime}</td>
													<td class="center"> 
													
													<sec:authorize access="hasAnyRole('ROLE_ACCEPTORDER','ROLE_ADMIN')"><c:choose>
													<c:when test="${orders.acceptTime == null}">
					                                  <a href="${pageContext.request.contextPath}/order/acceptOrder?id=${orders.id}&roomId=${orders.room.id}&serviceItemName=COffeeOrder" class="btn btn-success">Accept Request</a>
													 </c:when>
													 <c:otherwise>
													 <label class="label label-primary">
													 ${orders.acceptTime}</label>
													 </c:otherwise>
													  </c:choose></sec:authorize>
														 </td> 
													<td class="center">
													<sec:authorize access="hasAnyRole('ROLE_READYFORDELIVERY','ROLE_ADMIN')"><c:choose> 
													<c:when test="${orders.readyForDeliveryTime == null}"> 
													<a href="${pageContext.request.contextPath}/order/readyForDelivery?id=${orders.id}" class="btn ${orders.acceptTime==null ? 'disabled' : 'btn-success' } ">Request for delivery</a>
													</c:when>
													<c:otherwise>
														 <label class="label label-primary">
													${orders.readyForDeliveryTime}</label>
													</c:otherwise>
													</c:choose></sec:authorize>
													</td> 
													<td class="center">
															<sec:authorize access="hasAnyRole('ROLE_DELIVERED','ROLE_ADMIN')">
													<c:choose>
													<c:when test="${orders.deliveredTime == null}">
													<a href="${pageContext.request.contextPath}/order/delivered?id=${orders.id}" class="btn ${orders.readyForDeliveryTime==null ? 'disabled' : 'btn-success' }">Delivered</a>
													</c:when>
													<c:otherwise>
														 <label class="label label-primary">
													${orders.deliveredTime}</label>
													</c:otherwise>
													</c:choose></sec:authorize>
													</td>

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
		<input type="hidden" name="${_csrf.parameterName}" id="secuirtyId" value="${_csrf.token}"/>

				<!-- Modal Popup Box -->

				<div class="modal fade" id="orderconfirm" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<spring:message code="label.ConfirmSubmit" />
							</div>
							<div class="modal-body">
								<spring:message code="label.AreYouSureYouWanttoSubmit" />
								<label id="#langName"></label>?

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">
									<spring:message code="label.Cancel" />
								</button>
								<a href="#" id="submit" class="btn btn-success success"><spring:message
										code="label.Submit" /></a>
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
		src="<c:url value="/resources/js/modal_language.js" />"> </script>
		
		<!-- <script type="text/javascript">
		$('.showOrderForm').click(function() {

			/* var $parent = $(this).parents('.hotelServiceItem')
 */
			$('.orderItems').modal({
				backdrop : 'static',
				keyboard : true,
				show : true
			});
		});
	</script> -->
		
		
		


</body>

</html>