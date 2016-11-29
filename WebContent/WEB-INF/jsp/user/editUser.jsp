<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Users</title>

</head>
<body>

	<form class="form-horizontal" action="" method="post">
		<p>
			<spring:message code="label.AddNewUserHere" />
		</p>

		<div class="form-group">
			<label class="col-sm-2 control-label">Select Role</label>
			<div class="col-sm-10">
				<select class="form-control m-b" name="user_role">
					<option>Role 1</option>
					<option>Role 2</option>
					<option>Role 3</option>

				</select>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.UserId" /></label>

			<div class="col-sm-10">
				<input type="text" disabled="disabled" placeholder="User id"
					name="User_id" class="form-control">
			</div>
		</div>


		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.UserName" /></label>

			<div class="col-sm-10">
				<input type="text" placeholder="User Name" name="User_Name"
					class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.Password" /></label>

			<div class="col-sm-10">
				<input type="password" placeholder="Password" name="Password"
					class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"> <spring:message
					code="label.Description" /></label>

			<div class="col-sm-10">
				<input type="text" placeholder="Description" name="Description"
					class="form-control">
			</div>
		</div>

		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit">
					<spring:message code="label.CreateNewUser" />
				</button>
			</div>
		</div>

	</form>
</body>
</html>
