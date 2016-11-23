<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
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
			<h2>Restaurant</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/restaurant">Restaurant</a></li>
				<li class="active"><strong>Restaurant</strong></li>
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
				<h5>Add New Items</h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
			<jsp:include page="../action/addRestaurantItem.jsp"></jsp:include>
			</div>
		</div>
	    <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Items Table</h5>
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
                    <th class="check-mail">Item Id</th>
                      <th>Item Name</th>
                        <th>Item Description</th>
                          <th>Edit</th>
                            <th>Delete</th>
                    </tr>
                    </thead>
                    
					<tbody>
                        <tr class="read">
                            <td class="check-mail">1 </td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
						   <td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>
                              </tr>

							<tr class="read">
                            <td class="check-mail">2</td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>
							<tr class="read">
                            <td class="check-mail">3 </td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>


					</tbody>
				</table> 
 </div>
			</div>
		</div>
			<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">Confirm Delete</div>
				<div class="modal-body">Are you sure you want to delete this
					item</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a href="#" id="submit" class="btn btn-success success">Delete</a>
				</div>
			</div>
		</div>
	</div>
	
	
		<div class="modal fade" id="confirm-Edit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			   <form class="form-horizontal" action="" method="post">
				<div class="modal-header">Edit Restaurant Categories</div>
				<div class="modal-body">

             
					<p>Update Items Here</p>

					
					<div class="form-group">
						<label class="col-sm-2 control-label">Categories</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="res_Item_Category">
								<option>Indian</option>
								<option>Chinese</option>
								<option>MidleEast</option>
								<option>Western</option>
							  </select>
						</div>
					</div>
 
					<div class="form-group">
						<label class="col-sm-2 control-label">Restaurant Item Id</label>

						<div class="col-sm-10">
							<input type="text" disabled="disabled" placeholder="Item id"
								name="res_Item_ID" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">Item Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Item Name" name="res_Item_Name"
								class="form-control">
						</div>
					</div>
						 Need To add Unit ,Ingredients and price
						 
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Description" name="Description"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Status </label>

						<div class="col-sm-10">
							 <input type="checkbox" id="checkbox1">
                                    <label for="checkbox1">
                                        Disable
                                    </label>
                                    </div>
					</div>
                      </div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a href="#" id="submit" class="btn btn-success success">Update</a>
				</div>
				</form>
			</div>
			</div>
		</div>
	</div>

	 

</div>
</div>
</div>
</div>

<script type="text/javascript" src="<c:url value="/resources/js/dynamic_TextFields.js"/>"></script>


</body>
</html>