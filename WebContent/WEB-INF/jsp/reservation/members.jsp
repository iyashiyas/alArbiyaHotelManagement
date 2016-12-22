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

<title>SHMS-Members</title>
</head>
<body>

	<!-- Include Page Header-->
	<div class="modal-header">Members List</div>
	<div class="modal-body">

		<div class="ibox-content">

			<div class="table-responsive">
				<table
					class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th><spring:message code="label.MemberId" /></th>
							<th><spring:message code="label.Name" /></th>
							<th><spring:message code="label.Status" /></th>
							<th><spring:message code="label.Phone" /></th>
							<th><spring:message code="label.IdentityType" /></th>
							<th><spring:message code="label.IdentityNumber" /> </th>
							<th>action</th>
						</tr>
					</thead>
					<tbody>

						<!-- Fetching Language Table-->

						<tr class="gradeX">
          
							<td class="center">1</td>
							<td class="center">Muhammed</td>
							<td class="center">Active</td>
							<td class="center">9447662119</td>
							<td class="center">Passport</td>
							<td class="center">12548525</td>
 
						</tr>

						<!-- Demo -->
						<!--End Action -->
				</table>
			</div>

		</div>


		<!-- Modal Popup Box -->


		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
	</div>

	<script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>

	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript">
		
	</script>
	<script type='text/javascript'
		src="<c:url value="/resources/js/modal_language.js" />">
		
	</script>


</body>
</html>