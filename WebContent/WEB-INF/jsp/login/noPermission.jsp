
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
<body class="gray-bg" >
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

			<p class="m-t">
				<label class="label label-danger">YOU DO NOT HAVE PERMISSION FOR THIS PAGE GO
					BACK TO LOGIN OR CONTACT ADMIN</label><a href="${pageContext.request.contextPath}/login">LOGIN
					HERE</a>
			</p>

			<p>
			<p class="m-t">
				<small> <spring:message
						code="label.AlArabiyaDepthForAdvancedProjectLtd" /> &copy; <spring:message
						code="label.2016" /></small>
			</p>
		</div>
	</div>

	<!-- end captcha -->

	<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/login/login.js" />">
		
	</script>
</body>
</html>
