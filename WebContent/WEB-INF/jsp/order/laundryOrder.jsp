<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/> 
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
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
<title>SHMS-Laundry-Order</title> 
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
								<h5>
									Laundry  Screen
								</h5>
								 
							</div>  
						<div class="ibox-content"> 
								<div class="table-responsive">
					 
									<table
										class="table table-striped table-bordered table-hover dataTables-example" id="orderTable">
										<thead>
											<tr>
												<th><spring:message code="label.OrderID" /></th>
												<th><spring:message code="label.OrderRoom" /></th> 
												<th><spring:message code="label.Quantity" /></th>
												<th><spring:message code="label.RequestTime" /></th>
												<th><spring:message code="label.AcceptRequest" /></th>
												<th><spring:message code="label.ReadyForDelivery" /></th>
												<th><spring:message code="label.Delivered" /></th> 
											</tr>
										</thead>
										<tbody class="animated fadeInRight"> 
											<!-- Fetching Language Table--> 
											 <c:forEach items="${orders}" var="orders">
											
												<tr class="gradeX" id="printdiv">
												
													<td class="center">${orders.id}</td>
													<td class="center">${orders.room.roomName}</td>
													<td class="center">
													 </td> 
													<td class="center">${orders.quantity}</td>
													
													<td class="center">${orders.requestedTime}</td>
													<td class="center"> 
													<c:choose>
													<c:when test="${orders.acceptTime == null}">
					                                  <a href="${pageContext.request.contextPath}/order/acceptOrder?id=${orders.id}" class="btn btn-success"><spring:message code="label.AcceptRequest" /></a>
													 </c:when>
													 <c:otherwise>
													 <label class="label label-primary">
													 ${orders.acceptTime}</label>
													 </c:otherwise>
													  </c:choose>
														 </td> 
													<td class="center">
													<c:choose>
													<c:when test="${orders.readyForDeliveryTime == null}">
					                             
													<a href="${pageContext.request.contextPath}/order/readyForDelivery?id=${orders.id}" class="btn ${orders.acceptTime==null ? 'disabled' : 'btn-success' } "><spring:message code="label.ReadyForDelivery" /></a>
													</c:when>
													<c:otherwise>
														 <label class="label label-primary">
													${orders.readyForDeliveryTime}</label>
													</c:otherwise>
													</c:choose>
													</td> 
													<td class="center">
															
													<c:choose>
													<c:when test="${orders.deliveredTime == null}">
													<a href="${pageContext.request.contextPath}/order/delivered?id=${orders.id}" class="btn ${orders.readyForDeliveryTime==null ? 'disabled' : 'btn-success' }"><spring:message code="label.Delivered" /></a>
													</c:when>
													<c:otherwise>
														 <label class="label label-primary">
													${orders.deliveredTime}</label>
													</c:otherwise>
													</c:choose>
													</td>
												<%-- 	<td>
													<button id="singlebutton" type="button" name="singlebutton" onclick="printDiv()" class="btn btn-primary center-block"><spring:message code="label.PrintOut"/></button>
													</td> --%>

												</tr>

											</c:forEach>  
											
											
											<!-- Demo -->
											<!--End Action -->
									</table>
								</div> 
								<button type="button" class="btn btn-primary" onclick=refresh()>Refresh Off/Refresh Here</button>
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
				<div class="modal fade" id="assign_to_room" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<form class="form-horizontal" action="" method="post">
								<div class="modal-header">
									<spring:message code="label.order.orderDetails" />
								</div>
								<div class="modal-body">

									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example">
											<thead>
												<tr>
													<th><spring:message code="label.OrderID" /></th>
													<th><spring:message code="label.OrderItems" /></th>
													<th><spring:message code="label.Ingredients" /></th>
													<th><spring:message code="label.Quantity" /></th>
													<th><spring:message code="label.Price" /></th>

												</tr>
											</thead>
											<tbody> 
												<!-- Fetching Language Table-->

												<tr class="gradeX">

													<td class="center">1</td>
													<td class="center">Item Name</td>
													<td class="center">Sub Items</td>
													<td class="center">1</td>
													<td class="center">100sar/-</td>
 
												</tr>

												<!-- Demo -->
												<!--End Action -->
										</table>
									</div>
 
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

	<!-- Date Time Picker -->
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/plugins/dateTimePicker/bootstrap-datetimepicker.js"/>"></script>
		<script
		src="<c:url value="/resources/js/header/header.js"/>"></script>
	<script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript">
		
	</script>
 
<script type="text/javascript">
function printDiv() 
{ 
  var divToPrint=document.getElementById('printdiv');

  var newWin=window.open('','Print-Window');

  newWin.document.open();

  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

  newWin.document.close();

  setTimeout(function(){newWin.close();},10);

}
</script>

<script
		src="<c:url value="/resources/js/order/laundryOrder.js" />"></script>


<script type="text/javascript">

function refresh()
{window.location.reload();}
</script>
</body>
</html>