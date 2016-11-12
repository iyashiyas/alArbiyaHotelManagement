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

<title>SHMS-CheckedRooms</title>
</head>
<body>

	<!-- Include Page Header-->
	<div class="modal-header">Occupied Rooms</div>
	<div class="modal-body">

		<div class="ibox-content">

			<div class="table-responsive">
				<table
					class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th>Room Number</th>
							<th>Member ID</th>
							<th>Name</th>
							<th>Check In Date</th>
							<th>Check Out Date</th>
							<th>Checkout</th>

						</tr>
					</thead>
					<tbody>

						<!-- Fetching Language Table-->

						<tr class="gradeX">
							<td class="center">1</td>
							<td class="center">asd</td>
							<td class="center">muhammed</td>
							<td class="center">08/12/12</td>
							<td class="center">09/08/12</td>
							<td class="center"><a href="#CheckOut" data-toggle="modal"
								data-dismiss="modal" class="btn btn-primary">Checkout</a></td>
						</tr>

						<!-- Demo -->
						<!--End Action -->
				</table>
			</div>

		</div>

		<!-- Modal Popup Box -->
		<div class="modal-footer">
			<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
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