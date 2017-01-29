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
<title>SHMS-ChangePassword</title> 
</head>
<body>
 
	<form:form class="form-horizontal" id="confirm-EditForm"
		modelAttribute="newUser" method="POST" action="${pageContext.request.contextPath}/usermanagement/changePassword?${_csrf.parameterName}=${_csrf.token}">
		 <input type="hidden" name="id" id="userId" value="">
		<div class="modal-header">
			<spring:message code="label.ChangePassword" />
		</div>
		
		<div class="modal-body">
		 
			 
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.newPassword" /></label>

				<div class="col-sm-10">
					<form:input type="text" required="required" path="password" placeholder="newPassword"
						name="password" class="form-control" />
				</div>
			</div> 
		</div>  
		<div class="modal-footer">
			<button type="button" data-reload="yes" data-dismiss="modal"
				class="btn btn-default">
		    <spring:message code="label.Cancel" />
			</button>
			<button type="submit" class="btn btn-success success">
				<spring:message code="label.Update" />
			</button>
		</div> 
	</form:form>
	