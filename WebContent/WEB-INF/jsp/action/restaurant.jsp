<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-RestaurantService</title>

</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>  <spring:message code="label.Restaurant" /></h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/restaurant">  <spring:message code="label.Restaurant" /></a></li>
						<li class="active"><strong>  <spring:message code="label.Restaurant" /></strong></li>
					</ol>
				</div>

			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../action/restaurantTab.jsp"></jsp:include>

					<div class="col-lg-8 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>  <spring:message code="label.AddNewItems" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							<sec:authorize access="hasAnyRole('ROLE_RESTAURANT_ADD','ROLE_ADMIN')">
								<jsp:include page="../action/addRestaurantItem.jsp"></jsp:include>
								</sec:authorize>
							</div>
						</div>
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>  <spring:message code="label.ItemsTable" /></h5>
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
											<th class="check-mail">  <spring:message code="label.ItemsID" /></th>
											<th>  <spring:message code="label.ItemName" /></th>
											<th>  <spring:message code="label.Description" /></th>
											<th>BarCode</th>
											<th>  <spring:message code="label.Edit" /></th>
										</tr>
									</thead>

<tbody>
								 <c:forEach items="${getAllProductWithCategory}" var="restaurant">
										<tr class=" ">
											<td>${restaurant.id}</td>
											<td><c:out value="${restaurant.serviceItemName}" /></td>
											<td>${restaurant.serviceItemDescription}</td>
									        <td> <img src="/alArbiyaHotelManagement/images/restaurant/${restaurant.barCodeImageUrlName}"> </td>
											<td> <sec:authorize access="hasAnyRole('ROLE_RESTAURANT_EDIT','ROLE_ADMIN')"><i class="fa fa-pencil"><a>Edit</a></i></sec:authorize></td>

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



	<script type="text/javascript"
		src="<c:url value="/resources/js/action/restaurant.js"/>"></script>


</body>
</html>