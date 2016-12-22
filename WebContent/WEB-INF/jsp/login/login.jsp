<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/style.css" />"
	rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/common.css" />"
	rel="stylesheet">
<title><spring:message code="label.shms.login" /></title>
</head>
<body class="gray-bg">
	<c:if test="${pageContext.response.locale=='ar'}">
		<style type="text/css">
body {
	direction: rtl;
}
</style>
	</c:if>
	<div class="middle-box text-center loginscreen animated fadeInDown">
		<div>
			<div>
				<h1 class="logo-name">
					<spring:message code="label.login.shms" />
				</h1>
			</div>
			<h3>
				<spring:message code="label.login.welcometoshsms1.0" />
			</h3>
			<p>
				<spring:message
					code="label.login.TheCompleteHotelManagementSolutionAndScreenControl" />

			</p>
			<p>
				<spring:message code="label.Login.logininToseeitinaction" />
			</p>
			<p>
			<c:forEach items="${message}" var="message">
			<c:if test="${message=='error'}">
				<label class="label label-danger"><spring:message code="label.Login.errorLogin" /></label>
				</c:if>
				 </c:forEach>
			</p>
			
			<form class="m-t" name="loginForm"
				action="<c:url value='j_spring_security_check' />" method="POST">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="form-group">
					<input type="text" name="j_username" class="form-control"
						placeholder="<spring:message code="label.UserName" />"
						required="required" autofocus="autofocus">
				</div>
				<div class="form-group">
					<input type="password" name="j_password" class="form-control"
						placeholder="<spring:message code="label.Password" />"
						required="required">
				</div>
				<button class="btn btn-primary block full-width m-b" type="submit">
					<spring:message code="label.Login" />
				</button>
				<a href="#forgotPassword" data-toggle="modal"><small><spring:message
							code="label.forgotPassword" /></small></a>

			</form>
			<a href="?lang=en" class="btn btn-sm btn-success">English</a> <a
				href="?lang=ar" class="btn btn-sm btn-success"><spring:message
					code="label.arabic" /></a>
			<p class="m-t">
				<small> <spring:message
						code="label.AlArabiyaDepthForAdvancedProjectLtd" /> &copy; <spring:message
						code="label.2016" /></small>
			</p>
		</div>
	</div>

	<div class="modal fade" id="forgotPassword" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../login/forgotPassword.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>
</html>
