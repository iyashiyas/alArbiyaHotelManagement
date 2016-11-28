<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
		<div class="modal-header"><spring:message code="AssignToRoom" /></div>
		<div class="modal-body">
  
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="SelectBranch" /></label>

				<div class="col-sm-10">
					<select class="form-control m-b" name="branch">
						<option>branch 1</option>
						<option>branch 2</option>
						 
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="SelectBuilding" /> </label>

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
				<label class="col-sm-2 control-label"><spring:message code="Selectfloor" /></label>

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
				<label class="col-sm-2 control-label"><spring:message code="SelectScreenType" /></label>

				<div class="col-sm-10">
					<select class="form-control m-b" name="floor">
						<option>Room Service Screens</option>
						<option>Service Screens</option>

					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="SelectRoomType" /></label>

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
				<label class="col-sm-2 control-label"><spring:message code="SelectRoomNumber" /></label>

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
			<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="Cancel" /></button>
			<a href="#" id="submit" class="btn btn-success success"><spring:message code="Cancel" /></a>
		</div>
	</form>
</body>
</html>