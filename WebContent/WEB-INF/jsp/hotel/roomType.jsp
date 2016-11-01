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
					<h2>Room Type</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Profile</a></li>
						<li class="active"><strong>Room</strong></li>
					</ol>
				</div>
				 
			</div>
			<div class="wrapper wrapper-content">
				<div class="row">
				 
					<div class="col-lg-10 animated fadeInRight">

						<jsp:include page="../hotel/addRoomType.jsp"></jsp:include>


						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>RoomType Over View</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
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
												<th>Room Type Name</th>
												<th>Type Code</th>
												<th>Bed Type</th>
												<th>Type Description</th>
										  		 <th>Status</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>

										<tbody>
											<tr class="read">
											 <td>a</td>
										     <td>a</td>
											  <td>a</td>
											  	  <td>a</td>
											
												  <td>a</td>
											
											 <td>a</td>
											<td class=""><i class="fa fa-pencil"><a href="#edit-Room" class=""
															data-toggle="modal"  >Edit</a></i></td>
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

						<div class="modal fade" id="edit-Room" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header">Edit Room</div>
									<div class="modal-body">

										<jsp:include page="../hotel/editRoom.jsp"></jsp:include>


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