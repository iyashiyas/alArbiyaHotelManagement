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
 
<title>SHMS-Services</title>

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
			<h2><spring:message code="label.Service" /></h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/"><spring:message code="label.Home" /></a></li>
				<li class="active"><strong><spring:message code="label.Services" /></strong></li>
			</ol>
		</div>
	</div>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<spring:message code="label.ServicesTableWillHelpyouToViewTheAllServicesForScreens" /><h5>
						
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
										<th><spring:message code="label.serviceID" /></th>
										<th><spring:message code="label.serviceName" /></th>
										<th><spring:message code="label.Description" /></th>
										<th><spring:message code="label.Status" /></th>
									   
									</tr>
								</thead>
								<tbody>

									<!-- Fetching Language Table-->
								  <tr class="gradeX">
											 <td class="center">1</td>
											<td class="center">Service 1</td>
											<td class="center">Service Description View Here</td>
											<td class="center">Active</td>
										     </tr>
									  
									<!-- Demo -->
									<!--End Action -->
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- Modal Popup Box -->
   

</div>
</div>
</div>

		<div class="modal fade" id="View_AllLanguages" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">Service List By All Language</div>
					<div class="modal-body">
					 	<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover dataTables-example">
								<thead>
									<tr>
										<th>Service ID</th>
											<th> Language Name</th>
										<th>Service Name </th>
										 
									</tr>
								</thead>
								<tbody>

									<!-- Fetching Language Table-->
								 
										<tr class="gradeX">
											
											<td class="center">1</td>
											<td class="center">English</td>
											<td class="center">Service 1</td>
										     </tr>
									  
									<!-- Demo -->
									<!--End Action -->
							</table>
						</div>
  
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
						<a href="#" id="submit" class="btn btn-success success">Submit</a>
					</div>
				</div>
			</div>
		</div>
 
          <script src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>
		 
		<!-- Page-Level Scripts -->
		<script src="<c:url value="/resources/js/datatablecustom.js" />"
			type="text/javascript">
			
		</script>
	 

 
</body>
</html>