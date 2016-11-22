<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-CoffeeService</title>

</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Coffee Shop</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/action">Services</a></li>
						<li class="active"><strong>CoffeeShop</strong></li>
					</ol>
				</div>

			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../action/coffeeTab.jsp"></jsp:include>

					<div class="col-lg-8 animated fadeInRight">

						<jsp:include page="../action/addCoffee.jsp"></jsp:include>


						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Items Table</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">


								<table
									class="table table-striped table-bordered table-hover dataTables-example">

									<thead>
										<tr>
											<th>Item Id</th>
											<th>Item Name</th>
											<th>Item Description</th>
											<th>Edit</th>

										</tr>
									</thead>

									<tbody>
									<c:forEach items="${getAllcoffeeShops}" var="coffeeShop">
										<tr class=" ">
											<td>${coffeeShop.id}</td>
											<td><c:out value="${coffeeShop.serviceItemName}" /></td>
											<td>${coffeeShop.serviceItemDescription}</td>
											<td><i class="fa fa-pencil"><a>Edit</a></i></td>

										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>



	<div class="modal fade" id="addNewCategoryCoffeeShop" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<jsp:include page="../action/addNewCoffeeCategory.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value="/resources/js/action/coffeeShop.js"/>"></script>
</body>
</html>