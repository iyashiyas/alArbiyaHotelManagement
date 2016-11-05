<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Edit Branch</title>
</head>
<body>
 
		<form:form class="form-horizontal editBranch"
			action="${pageContext.request.contextPath}/hotel/editBranch"
			method="POST" modelAttribute="newBranch">
			<div class="modal-header">Edit Branch Details</div>
			   <div class="modal-body">

			<div class="form-group">
				<label class="col-sm-2 control-label">Branch Name</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchName" id="branchName" placeholder="Branch Name"
						name="branchName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Branch Code</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Branch Code" id="branchCode" name="branchCode"
						class="form-control" path="branchCode" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Phone Number</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchPhoneNumber"
						placeholder="PhoneNumber" id="branchPhoneNumber" name="phoneNumber" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Email" name="email"
						class="form-control" id="branchEmail" path="branchEmail" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Address</label>

				<div class="col-sm-10">
					<form:input type="text" id="branchAddress" path="branchAddress" placeholder="Address"
						name="address" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Description</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchDescription"
						placeholder="Description" id="branchDescription" name="Description" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Status </label>

				<div class="col-sm-10">
					 <form:checkbox id="checkbox1" path="branchStatus" value="ENABLE"
						checked="checked" />
					<label for="checkbox1"> Enable </label>
				</div>
			</div>
			</div>

			<div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default">Cancel</button>
											<button type="submit" class="btn btn-success success">Update</button>
										</div> 

		</form:form>
	 
</body>
</html>