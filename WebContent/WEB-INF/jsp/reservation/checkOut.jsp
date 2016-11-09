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
							<th>Bill Id</th>
							<th>Category</th>
							<th>Price</th>
						    <th>Discount</th>
						    <th>total</th>
							  
						</tr>
					</thead>
					<tbody>

						<!-- Fetching Language Table-->

						<tr class="gradeX">
							<td class="center">1</td>
							<td class="center">asd</td>
							<td class="center">500 sar/-</td>
				            <td class="center">10%</td>
							<td class="center">500 sar/-</td>
						</tr>
						<tr>
						<td>Grand Total</td>
						 <td>Grand Total</td>
						</tr>
						</tbody>

						<!-- Demo -->
						<!--End Action -->
				</table>
			</div>

		</div>

		<!-- Modal Popup Box -->
		<div class="modal-footer">
			<a class="btn btn-primary" href="#Checked-Rooms" data-toggle="modal"  data-dismiss="modal">Back</a>
			<a class="btn btn-primary" href=""  >Print Bill And Checkout</a>
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