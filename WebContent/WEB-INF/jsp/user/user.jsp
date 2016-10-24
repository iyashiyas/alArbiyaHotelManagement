<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Users</title>

</head>
<body>

	<!-- Include Page Header-->
   
   
    <div id="wrapper">
   <jsp:include page="../header/header.jsp"></jsp:include>
	
	<div id="page-wrapper" class="gray-bg">
   
 
<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>User Management</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/user">User Management</a></li>
				<li class="active"><strong>Users</strong></li>
			</ol>
		</div> 
	</div>
	
	
 
	   <div class="wrapper wrapper-content">
        <div class="row">
   
   
   
	<jsp:include page="../user/usermanagement_Tab.jsp"></jsp:include>
	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="col-lg-8 animated fadeInRight">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Add New User</h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
				<form class="form-horizontal" action="" method="post">
					<p>Add New User Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Select Role</label>
                           <div class="col-sm-10">
							<select class="form-control m-b" name="user_role">
								<option>Role 1</option>
							   <option>Role 2</option>
							   <option>Role 3</option>
							   
							</select>
						</div>
					</div>
 
					<div class="form-group">
						<label class="col-sm-2 control-label">User Id</label>

						<div class="col-sm-10">
							<input type="text" disabled="disabled" placeholder="User id"
								name="User_id" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">User Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="User Name" name="User_Name"
								class="form-control">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">Password</label>

						<div class="col-sm-10">
							<input type="password" placeholder="Password" name="Password"
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
								User</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	   
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Users</h5>
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
                    <th class="check-mail">User Id</th>
                      <th>User Name</th>
                        <th>Role Name</th>
                          <th>Edit</th>
                            <th>Delete</th>
                    </tr>
                    </thead>
                    
					<tbody>

						<tr class="read">
                            <td class="check-mail">1 </td>
							<td class="mail-ontact "> User
									Name </td>
							<td class="mail-subject"> User
									Role </td>
						   <td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove User" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>

							<tr class="read">
                            <td class="check-mail">2</td>
							<td class="mail-ontact "> User
									Name </td>
							<td class="mail-subject"> User
									Role </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove User" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>
							<tr class="read">
                            <td class="check-mail">3 </td>
							<td class="mail-ontact "> User
									Name </td>
							<td class="mail-subject"> User
									Role </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove User" id="submitBtn" data-toggle="modal"
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
				<div class="modal-header">Edit User</div>
				<div class="modal-body">

               <p>Update User items Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Select Role</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="User_category">
								<option>Role 1</option>
								<option>Role 2</option>
								 
							</select>
						</div>
					</div>
 
					<div class="form-group">
						<label class="col-sm-2 control-label">User Id</label>

						<div class="col-sm-10">
							<input type="text" disabled="disabled" placeholder="User id"
								name="User_id" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">User Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="User Name" name="User_Name"
								class="form-control">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">Password</label>

						<div class="col-sm-10">
							<input type="password" placeholder="Password" name="Password"
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

	 
<div>

</div>
</div>
</div>
</div>
</div>
</div>


</body>
</html>