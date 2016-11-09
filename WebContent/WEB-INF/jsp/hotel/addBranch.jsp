<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
	<div class="ibox-content">
		<form:form class="form-horizontal"
			action="${pageContext.request.contextPath}/hotel/addBranch"
			method="post" modelAttribute="newBranch" >

			<div class="form-group">
				<label class="col-sm-2 control-label">Branch Name</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchName" placeholder="Branch Name"
						name="branchName" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Branch Code</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Branch Code" name="branchCode"
						class="form-control" path="branchCode" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Phone Number</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchPhoneNumber"
						placeholder="PhoneNumber" name="phoneNumber" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Email" name="email"
						class="form-control" path="branchEmail" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Address</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchAddress" placeholder="Address"
						name="address" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Description</label>

				<div class="col-sm-10">
					<form:input type="text" path="branchDescription"
						placeholder="Description" name="Description" class="form-control" />
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

			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-8">
					<button class="btn btn-primary" type="submit">Add</button>
				</div>
			</div>

		</form:form>
	</div>
</body>
</html>