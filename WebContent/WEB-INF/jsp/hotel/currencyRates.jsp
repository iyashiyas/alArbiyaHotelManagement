<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link
	href="<c:url value="/resources/css/dateTimePicker/bootstrap-datetimepicker.css" />"
	rel="stylesheet">
<title>SHMS-Currencies</title> 
</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Currency Rate</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Currencies</a></li>
						<li class="active"><strong>CurrencyRate</strong></li>
					</ol>
				</div>

			</div>
			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../hotel/currencyTab.jsp"></jsp:include>

					<!-- Page Contents -->
					<!-- Page Heading -->

					<div class="col-lg-8 animated fadeInRight">

						<jsp:include page="../hotel/addCurrencyRate.jsp"></jsp:include>
 
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Currency</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> 
									<i class="fa fa-chevron-up">
									</i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example">

										<thead>
											<tr>
												<th class="check-mail">Id</th>
										        <th>CurrencyCode</th>
												<th>Rate For</th>
												<th>Date</th>
												<th>Currency Rate</th>
 
											</tr>
										</thead>

										 
									</table>
								</div>
							</div>
						</div>
					  
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/dateTimePicker/callDateTimepicker.js"/>"></script>

	<script type="text/javascript"
		src="<c:url value="/resources/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"/>"></script>

	

</body>
</html>