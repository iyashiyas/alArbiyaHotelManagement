<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>SHMS-Home</title>
	</head>
	<body>
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-9">
				<h2>Widgets</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li class="active"><strong>Home</strong></li>
				</ol>
			</div>
		</div>
	 </body>
 </html>