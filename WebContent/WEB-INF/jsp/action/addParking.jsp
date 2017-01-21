<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/phoneCode/intlTelInput.css"/>">
	
<title>SHMS-Add Parking</title>
</head>
<body>
	<div class="ibox-content">
		<form:form class="form-horizontal"
			action="${pageContext.request.contextPath}/addParking"
			method="post" modelAttribute="newParking" >

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.ParkingName" /></label>

				<div class="col-sm-10">
					<form:input type="text" required="required" path="parkingName" placeholder="parkingName"
						name="parkingName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Category" /></label>
					   <div class="col-sm-10">
					   <form:select class="form-control m- "  required="required" path="parkingCategory" name="parkingCategory">
					   <form:option value="0"> <spring:message code="label.select" /> </form:option>
					   <form:option value="VIP"> <spring:message code="label.VIP" /> </form:option>
					   <form:option value="CUSTOMER"> <spring:message code="label.Customer" /> </form:option>
					   <form:option value="EMPLOYEE"> <spring:message code="label.Employee" /> </form:option>
					  </form:select> 
			 			</div>
			 		</div>
	  
			          <div class="form-group">
				     <div class="col-lg-offset-2 col-lg-8">
				   	<button class="btn btn-primary" type="submit"><spring:message code="label.Add" /></button>
				     </div>
		             </div>

		</form:form>
	</div>
	 
</body>
</html>