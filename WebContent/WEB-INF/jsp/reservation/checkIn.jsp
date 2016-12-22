<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<form:form
		action="${pageContext.request.contextPath}/reservation/checkIn"
		method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="col-xs-10 form-group">
			<label>Booking Number</label> <input class="form-control"
				name="bookingrefernceId" placeholder="Bookin Number" type="text">
		</div>
		<button type="submit" class="btn brn-primary">Check In</button>
	</form:form>
</body>
</html>
