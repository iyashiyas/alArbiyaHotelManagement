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

<title>SHMS-Users</title>

</head>
<body>

	<form:form class="form-horizontal" action="${pageContext.request.contextPath}/usermanagement/addUser" modelAttribute="newUser" method="post" >
		<p>
			<spring:message code="label.AddNewUserHere" />
		</p>

		<div class="form-group">
			<label class="col-sm-2 control-label">Select Role</label>
			<div class="col-sm-10">
				<form:select class="form-control m-b" path="roles[0].id" name="roles[0].id" >
				<c:forEach items="${roles}" var="roles">
					<form:option value="${roles.id}">${roles.role}</form:option>
				 
                </c:forEach>
				</form:select>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.UserId" /></label>

			<div class="col-sm-10">
				<form:input type="text" disabled="disabled" placeholder="User Name"
					name="username" path="username" class="form-control" />
			</div>
		</div>

 
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.Password" /></label>

			<div class="col-sm-10">
				<form:input type="password" placeholder="Password" name="password"
					class="form-control" path="password" />
			</div>
		</div>
		 

		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit">
					<spring:message code="label.CreateNewUser" />
				</button>
			</div>
		</div>

	</form:form>
</body>
</html>
