<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
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
<title>SHMS-Parking-Screen</title>
</head>
<body>
	<div class="wrapper wrapper-content">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h1 class="panel-title text-center">
					<label class="label label-primary" style="font-size: 14px;"><spring:message
							code="label.Parking" /> </label>
				</h1>
				<div class="text-right">
					Total :
					<div class="btn btn-warning m-r-sm">${fn:length(parkings)}</div>
					Available :
					<div class="btn btn-primary m-r-sm">
						${fn:length(availableParking)}</div>
				</div>
			</div>
		</div>
		
			<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							Requests
						</h3>
						<div class="text-right">
							<div class="btn btn-danger m-r-sm">0 
							</div>
							Requests   
						</div>
					</div>
					<div class="panel-body">
						No requests
					</div>
				</div>

			</div>
		</div>
		
		
		
		
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<spring:message code="label.Customer" />
						</h3>
						<div class="text-right">
							<div class="btn btn-danger m-r-sm">${fn:length(customerAvailableParking)}
							</div>
							Available |
							<div class="btn btn-primary m-r-sm">${fn:length(customerNonAvailableParking)}</div>
							Not Available
							<button class="btn btn-success" data-toggle="collapse"
								data-target="#moreCustomer">More</button>

						</div>
					</div>
					<div class="panel-body">
						<jsp:include page="../screens/customerParking.jsp"></jsp:include>
					</div>
				</div>

			</div>
		</div>



		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<spring:message code="label.VIP" />
						</h3>
						<div class="text-right">
							<div class="btn btn-danger m-r-sm">${fn:length(vIPavailableParking)}</div>
							Available |
							<div class="btn btn-primary m-r-sm">${fn:length(vIPNonAvailableParking)}</div>
							Not Available
						
						<button class="btn btn-success" data-toggle="collapse"
								data-target="#moreVip">More</button></div>
					</div>
					<div class="panel-body">
						<jsp:include page="../screens/vipParking.jsp"></jsp:include>

					</div>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<spring:message code="label.Employee" />
						</h3>
						<div class="text-right">
							<div class="btn btn-danger m-r-sm">${fn:length(employeeavailableParking)}</div>
							Available |
							<div class="btn btn-primary m-r-sm">${fn:length(employeeaNonAvailableParking)}</div>
							Not Available
						
						<button class="btn btn-success" data-toggle="collapse"
								data-target="#moreemployee">More</button></div>
					</div>
					<div class="panel-body">

						<jsp:include page="../screens/employeeParking.jsp"></jsp:include>

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
	<script src="<c:url value="/resources/js/header/header.js"/>"></script>
	<script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript">
		
	</script>
	<script type="text/javascript">
		function printDiv() {
			var divToPrint = document.getElementById('printdiv'); 
			var newWin = window.open('', 'Print-Window'); 
			newWin.document.open(); 
			newWin.document.write('<html><body onload="window.print()">'
					+ divToPrint.innerHTML + '</body></html>'); 
			newWin.document.close(); 
			setTimeout(function() {
				newWin.close();
			}, 10);

		}
	</script>
   
	<script type="text/javascript">
		function refresh() {
			window.location.reload();
		}
	</script>
</body>
</html>