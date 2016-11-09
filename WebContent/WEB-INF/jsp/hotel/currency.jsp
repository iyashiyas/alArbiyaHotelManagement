<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SHMS-Currencies</title> 
</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Currencies</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Currencies</a></li>
						<li class="active"><strong>Currency</strong></li>
					</ol>
				</div>

			</div>
			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../hotel/currencyTab.jsp"></jsp:include>

					<!-- Page Contents -->
					<!-- Page Heading -->

					<div class="col-lg-8 animated fadeInRight">

						<jsp:include page="../hotel/addCurrency.jsp"></jsp:include>
 
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
												<th>Currency Name</th>
												<th>CurrencyCode</th>
												<th>Current Rate</th>
 
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


</body>
</html>