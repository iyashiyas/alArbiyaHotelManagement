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
<link id="" href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet"> 
<title>SHMS-Order</title> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
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
</head>
<body> 
<nav class="navbar-default navbar-static-side" role="navigation">
	 
	 
<ul>
<li><a href="?lang=en">English</a></li>
<li><a href="?lang=ar"><spring:message
					code="label.arabic" /></a></li>
			<li><form action="${pageContext.request.contextPath}/<c:url value="j_spring_security_logout" />"
					method="post">
					<button type="submit" class="btn btn-primary"><i class="fa fa-sign-out"></i>
						<spring:message code="label.Logout" />
					</button>
					 <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form></li>
			</ul>

		</nav>
    <div class="table-responsive">

									<table
										class="table table-striped table-bordered table-hover dataTables-example"
										id="orderTable">
										<thead>
											<tr>
											 <th><spring:message code="label.OrderID" /></th>  
											 <th><spring:message code="label.OrderRoom" /></th>
											 <th><spring:message code="label.Status" /></th>
											  <th> label.AcceptRequest   </th>
											  <th> Print   </th>
											</tr>
										</thead>
											<tbody class="animated fadeInRight">
										  <c:forEach items="${orders}" var="orders">
											
												<tr class="gradeX">
												<td class="center">${orders.orderId}</td>
												<td class="center">${orders.roomName}</td>
												<td class="center">${orders.status}</td>
												<td>
												   <c:if test="${orders.status=='READYFORDELIVERY'}">
														<a href="#" id="confirmDeliveryRequest" data-toggle="modal" data-target="#confirmReadForDelivery" data-href="${pageContext.request.contextPath}/order/deliveryBoyAccept?orderId=${orders.orderId}" class="btn btn-primary">
															<spring:message code="label.AcceptRequest" />
														</a> 
														</c:if> 
														 <c:if test="${orders.status=='ACCEPTREQUEST'}">
														<a href="#" id="deliverdAccept" data-toggle="modal" data-target="#confirmDelivered" data-href="${pageContext.request.contextPath}/order/deliverdAcccept?id=${orders.orderId}&roomId=${orders.roomId}" class="btn btn-danger">
															 Accept Delivery 
														</a> 
														</c:if> 
														<c:if test="${orders.status=='DELIVERED'}">
														 	<label class="label label-default"><spring:message code="label.Delivered" /> </label>
														</c:if>  
												</td>
												<td> <input type="button" value="Click Me" onClick="print(${orders.orderId},${orders.roomName})" />
												</td>
												</tr> 
												</c:forEach>
												</tbody>
												</table>
												</div>
												
												
											 	
	  <div class="modal fade" id="confirmReadForDelivery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="label.ConfirmSubmit" /></h4>
                </div> 
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
                    <a class="btn btn-danger btn-oksubmitRequest"><spring:message code="label.ConfirmSubmit" /></a>
                </div>
            </div>
        </div>
    </div>
     
    <!-- // Deliverd Accept Passqord  -->
     <div class="modal fade" id="confirmDelivered" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="label.ConfirmSubmit" /></h4>
                </div> 
                <div class="modal-body"> 
                 <div class="form-group">
					<input type="Number" id="password" name="password" class="form-control password"
						placeholder="<spring:message code="label.Password" />"
						required="required">
				</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
                    <a class="btn btn-danger btn-okdelivered"><spring:message code="label.ConfirmSubmit" /></a>
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
	<script src="<c:url value="/resources/js/header/header.js"/>"></script>
  
 <script src="<c:url value="/resources/js/order/deliveryBoyOrder.js"/>"></script>
  

	<script> 
     	 $('#confirmReadForDelivery').on('show.bs.modal', function(e){ 
  	    	$('#confirmReadForDelivery').find('.btn-oksubmitRequest').attr('href', $('#confirmDeliveryRequest').data('href')); 
        });    
     	 
     	$('#confirmDelivered').on('show.bs.modal', function(e){  
     	 
     		$('#password').on("change", function () { 
     		var password=$(this).val() ;
     		$('#confirmDelivered').find('.btn-okdelivered').attr('href', $('#deliverdAccept').data('href')+'&password='+password); 
     			});
       
        });  
     	 
</script> 
<script type="text/javascript"> 
function displaymessage()
{
JSInterface.changeActivity();
}
</script>
 
<script type="text/javascript">
   function print(orderId,roomNumber) {
     Android.print(orderId,roomNumber);
    }
</script>
</body>
</html>