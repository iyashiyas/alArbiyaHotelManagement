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
   
	<jsp:include page="../ingredient/ingredientTab.jsp"></jsp:include>
	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="col-lg-8 animated fadeInRight">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Add New Ingredient Items</h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
				<form class="form-horizontal" action="" method="post">
					<p>Add Ingredient items Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Category</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="ingredient_category">
								<option>Ingredient 1</option>
								<option>Ingredient 2</option>
							 
							</select>
						</div>
					</div>
 
					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Id</label>

						<div class="col-sm-10">
							<input type="text" disabled="disabled" placeholder="Ingredient id"
								name="ingredient_id" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Ingredient Name" name="Ingredient_Name"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Description" name="Description"
								class="form-control">
						</div>
					</div>

					  	<div class="form-group">
						<div class="col-lg-offset-2 col-lg-8">
							<button class="btn btn-primary" type="submit">Create new
								Ingredient</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	   
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

						<tr class="read">
                            <td class="check-mail">1 </td>
							<td class="mail-ontact "> Ingredient
									Name </td>
							<td class="mail-subject"> Ingredient
									Description </td>
						   <td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>

							<tr class="read">
                            <td class="check-mail">2</td>
							<td class="mail-ontact "> Ingredient
									Name </td>
							<td class="mail-subject"> Ingredient
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>
							<tr class="read">
                            <td class="check-mail">3 </td>
							<td class="mail-ontact "> Ingredient
									Name </td>
							<td class="mail-subject"> Ingredient
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove" id="submitBtn" data-toggle="modal"
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
				<div class="modal-header">Edit Ingredient</div>
				<div class="modal-body">

             
					<p>Update Ingredient items Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Category</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="account">
								<option>Ingredient 1</option>
								<option>Ingredient 2</option>
							 
							</select>
						</div>
					</div>
 
					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Id</label>

						<div class="col-sm-10">
							<input type="text" disabled="disabled" placeholder="Ingredient id"
								name="Ingredient_id" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">Ingredient Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Ingredient Name" name="Ingredient_Name"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Description" name="Description"
								class="form-control">
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

	 




</body>
</html>