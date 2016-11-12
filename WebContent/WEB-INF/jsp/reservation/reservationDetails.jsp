<html>
	<head>
	<meta http-equiv="Content-Type"
		content="text/html; charset=windows-1256">
		<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">
	<title>Reservation Details</title>
	</head>
	<body>
		<div id="wrapper">
			<jsp:include page="../header/header.jsp"></jsp:include>
			<table>
				<thead>
					<tr>
						<th>
							Booking details
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Reference Id</td><td>${bookingDetails.bookingReferenceId }</td>
					</tr>
					<tr>
						<td>Room Id</td><td>${bookingDetails.room.roomName }</td>
					</tr>
					<tr>
						<td>Booked From </td><td>${bookingDetails.startDate }</td>
					</tr>
					<tr>
						<td>Booked till</td><td>${bookingDetails.endDate }</td>
					</tr>
				</tbody>
			</table>
			<a href="${pageContext.request.contextPath}/reservation">Do another booking</a>
			</div>
	</body>
</html>