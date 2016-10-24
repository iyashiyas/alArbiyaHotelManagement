<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">


<title>SHMS-Player</title>

</head>
<body>

	<!-- Include Page Header-->

	<jsp:include page="../header/header.jsp"></jsp:include>

	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>Player</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<li class="active"><strong>Player</strong></li>
			</ol>
		</div>
	</div>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Player Table Will Help you To Control Service Screens With IP
							 </h5>
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
										<th>Player ID</th>
										<th>Player IP</th>
										<th>Status</th>
										<th>Assigned Room</th>
										<th>Assign</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<!-- Fetching Language Table-->
								 
										<tr class="gradeX">
											
											<td class="center">1</td>
											<td class="center">192.168.100.158</td>
											<td class="center"><i class="fa fa-circle text-danger"></i> Inactive</td>
											<td class="center">Room Not Assigned</td>
                                            <td class="center"><a href="#" data-toggle="modal" data-target="#assign_to_room">Assign To Room</a></td>
                                           <td class="center"><a href="#" data-toggle="modal" data-target="#confirm-submit">Disable</a></td>
                                           
                                           </tr>
									 

									<!-- Demo -->
									<!--End Action -->
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- Modal Popup Box -->
  
		<div class="modal fade" id="confirm-submit" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">Confirm Submit</div>
					<div class="modal-body">
						Are you sure you want to submit <label id="#langName"></label>?

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
						<a href="#" id="submit" class="btn btn-success success">Submit</a>
					</div>
				</div>
			</div>
		</div>



<div class="modal fade" id="assign_to_room" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			   <form class="form-horizontal" action="" method="post">
				<div class="modal-header">Edit Unit</div>
				<div class="modal-body">

             
					<p>Update Unit items Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Select Branch</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="branch">
								<option>branch 1</option>
								<option>branch 2</option>
								<option>branch 3</option>
								<option>branch 4</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Building</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="building">
								<option>Building 1</option>
								<option>Building 2</option>
								<option>Building 3</option>
								<option>Building 4</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select floor</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="floor">
								<option>floor 1</option>
								<option>floor 2</option>
								<option>floor 3</option>
								<option>floor 4</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Room Type</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="floor">
								<option>Room Type1</option>
								<option>Room Type2</option>
								<option>Room Type3</option>
								<option>Room Type4</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Room Number</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="floor">
								<option>Room 1</option>
								<option>Room 2</option>
								<option>Room 3</option>
								<option>Room 4</option>
							</select>
						</div>
					</div>
  
  
                </div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a href="#" id="submit" class="btn btn-success success">Assign To Room</a>
				</div>
				</form>
			</div>
		</div>
	</div>




 
          <script src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>
		 
		<!-- Page-Level Scripts -->
		<script src="<c:url value="/resources/js/datatablecustom.js" />"
			type="text/javascript">
			
		</script>
	 <script type='text/javascript'
		src="<c:url value="/resources/js/modal_language.js" />">
		
	</script>  

 
</body>
</html>