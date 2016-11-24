<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/phoneCode/intlTelInput.css"/>">
	
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Edit Branch</title>
</head>
<body>


	<div class="modal-header">Edit Branch Details</div>
	<div class="modal-body">

		<input type="hidden" id="id" name="id" value="" />
		<div class="form-group">
			<label class="col-sm-2 control-label">Branch Name</label>

			<div class="col-sm-10">
				<form:input type="text" path="branchName" id="branchName"
					placeholder="Branch Name"  required="required" name="branchName" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Branch Code</label>

			<div class="col-sm-10">
				<form:input type="text"  required="required" placeholder="Branch Code" id="branchCode"
					name="branchCode" class="form-control" path="branchCode" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Phone Number</label>

			<div class="col-sm-10">
				<form:input type="number"  required="required" path="branchPhoneNumber"
					placeholder="PhoneNumber" id="branchPhoneNumber" name="phoneNumber"
					class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>

			<div class="col-sm-10">
				<form:input type="email" placeholder="Email" name="email"
					class="form-control"  required="required" id="branchEmail" path="branchEmail" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Address</label>

			<div class="col-sm-10">
				<form:input type="text" id="branchAddress" path="branchAddress"
					placeholder="Address" name="address" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"> Description</label>

			<div class="col-sm-10">
				<form:input type="text" path="branchDescription"
					placeholder="Description" id="branchDescription" name="Description"
					class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Status </label>

			<div class="col-sm-10">
				<form:checkbox id="branchStatus" path="branchStatus" value="ENABLE"
					checked="checked" />
				<label for="checkbox1"> Enable </label>
			</div>
		</div>
	</div>

	<div class="modal-footer">
		<button type="button" data-reload="yes" data-dismiss="modal"
			class="btn btn-default">Cancel</button>
		<button type="submit" class="btn btn-success success">Update</button>
	</div>

<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/phoneCode/intlTelInput.min.js"/>">
		
	</script>
	<script type="text/javascript">
		$("#branchPhoneNumber").intlTelInput();
	</script>
</body>
</html>