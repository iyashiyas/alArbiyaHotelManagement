<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SHMS-Ingredient</title>

</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Ingredient</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li class="active"><strong>Ingredient</strong></li>
					</ol>
				</div>
				<ul class="nav  navbar-right">

					<li><button class="btn btn-primary">
							<i class="fa fa-plus"></i> Add New Categories
						</button></li>
				</ul>
			</div>


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../ingredient/ingredientTab.jsp"></jsp:include>

					<!-- Page Contents -->
					<!-- Page Heading -->

					<div class="col-lg-8 animated fadeInRight">

						<jsp:include page="../ingredient/addIngredient.jsp"></jsp:include>


						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Ingredient Items</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div class="mail-box-header">
									<h2>Category Name</h2>
									<div class="mail-tools tooltip-demo m-t-md">
										<div class="btn-group pull-right">
											<button class="btn btn-white btn-sm">
												<i class="fa fa-arrow-left"></i>
											</button>
											<button class="btn btn-white btn-sm">
												<i class="fa fa-arrow-right"></i>
											</button>
										</div>

									</div>
								</div>
								<div class="mail-box">

									<table class="table table-hover table-mail">

										<thead>
											<tr>
												<th class="check-mail">Ingredient Id</th>
												<th>Ingredient Name</th>
												<th>Ingredient Description</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>

										<tbody>
                          <c:forEach items="${ingredientWithCategory}" var="ingredient">
											<tr class="read">
												<td class="check-mail">${ingredient.id}</td>
												<td class="mail-ontact ">${ingredient.ingredientName}</td>
												<td class="mail-subject">${ingredient.ingredientDescription}</td>
												<td class=""><i class="fa fa-pencil"><a
														data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
												<td class="text-right mail-date"><input type="button"
													class="btn btn-block btn-primary " name="btn"
													value="Remove" id="submitBtn" data-toggle="modal"
													data-target="#confirm-submit"></td>
 	</tr>
											</c:forEach>
                                    </tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="modal fade" id="confirm-submit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">Confirm Delete</div>
									<div class="modal-body">Are you sure you want to delete
										this item</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cancel</button>
										<a id="submit" class="btn btn-success success">Delete</a>
									</div>
								</div>
							</div>
						</div>


						<div class="modal fade" id="confirm-Edit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									
										<div class="modal-header">Edit Ingredient</div>
										<div class="modal-body">
  
  <jsp:include page="../ingredient/editIngredient.jsp"></jsp:include>
  
  		
							</div>
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