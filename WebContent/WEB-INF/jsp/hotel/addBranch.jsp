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
	
<title>SHMS-Add Branch</title>
</head>
<body>
	<div class="ibox-content">
		<form:form class="form-horizontal"
			action="${pageContext.request.contextPath}/hotel/addBranch"
			method="post" modelAttribute="newBranch" >

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.BranchName" /></label>

				<div class="col-sm-10">
					<form:input type="text" required="required" path="branchName" placeholder="BranchName"
						name="branchName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.BranchCode" /></label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="BranchCode" required="required" name="branchCode"
						class="form-control" path="branchCode" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.PhoneNumber" /></label>

				<div class="col-sm-10">
					<form:input type="number"  id="mobile-number" path="branchPhoneNumber"
						placeholder="PhoneNumber"  required="required" name="phoneNumber" class="form-control" />
				</div>
			</div>
		 
			 
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.Email" /></label>

				<div class="col-sm-10">
					<form:input type="email" placeholder="Email" name="email"
						class="form-control"  path="branchEmail" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.Address" /></label>

				<div class="col-sm-10">
					<form:input type="text" path="branchAddress" placeholder="Address"
						name="address" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

				<div class="col-sm-10">
					<form:input type="text" path="branchDescription"
						placeholder="Description" name="Description" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

				<div class="col-sm-10">
					<form:checkbox id="checkbox1" path="branchStatus" value="ENABLE"
						checked="checked" />
					<label for="checkbox1"> <spring:message code="label.Enable" /> </label>
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-8">
					<button class="btn btn-primary" type="submit"><spring:message code="label.Add" /></button>
				</div>
			</div>

		</form:form>
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/phoneCode/intlTelInput.min.js"/>">
		
	</script>
	<script type="text/javascript">
		$("#mobile-number").intlTelInput();
	</script>
</body>
</html>