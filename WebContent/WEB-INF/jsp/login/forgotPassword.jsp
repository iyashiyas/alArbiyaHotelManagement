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

<title>SHMS-ForgotPassword</title>

</head>
<body> 
	<form:form class="form-horizontal" id="confirm-EditForm"
		  method="POST" action="${pageContext.request.contextPath}/forgotPassword">
		<div class="modal-header">
			<spring:message code="label.forgotPassword" />
		</div>
		<div class="modal-body">
			<p> <spring:message code="label.forgotPassword" />
			</p> 
			<%-- <div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.Email" /></label> 
			<div class="col-sm-10">
				<input type="email"  placeholder="Email"
					name="email" class="form-control" >
			</div>
		</div> --%>
		 
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