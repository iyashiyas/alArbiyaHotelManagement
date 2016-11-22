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
				<label class="col-sm-2 control-label">Select Screen Type</label>

				<div class="col-sm-10">
					<select class="form-control m-b" name="floor">
						<option>Room Service Screens</option>
						<option>Service Screens</option>

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
			<a href="#" id="submit" class="btn btn-success success">Assign To
				Room</a>
		</div>
	</form>
</body>
</html>