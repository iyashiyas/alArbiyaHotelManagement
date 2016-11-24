<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>edit Floor</title>
</head>
<body>

	<form:form class="form-horizontal"
		action="${pageContext.request.contextPath}/hotel/editFloor"
		modelAttribute="newFloor" method="post">
		<div class="modal-header">Edit Floor Details</div>
		<div class="modal-body">

			<div class="form-group">
				<input type="hidden" id="floorId" name="id" value="" /> <label
					class="col-sm-2 control-label">Floor Name</label>
				<div class="col-sm-10">
					<form:input type="text" placeholder="Floor Name" name="floorName"
						class="form-control" required="required" id="floorName" path="floorName" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Floor Code</label>

				<div class="col-sm-10">
					<form:input type="text" id="floorCode" placeholder="Floor Code"
						name="floorCode" required="required" class="form-control" path="floorCode" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Building Code</label>
				<div class="col-sm-10">
					<input type="text"   id="floorBuildingName" disabled="disabled"
						class="form-control"> <input type="hidden"
						id="floorBuildingId" name="building.id" value="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Total Rooms</label>

				<div class="col-sm-10">
					<form:input type="number" required="required" placeholder="Total Room"
						name="floorTotalRoom" id="floorTotalRoom" class="form-control"
						path="floorTotalRoom" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Description</label>

				<div class="col-sm-10">
					<form:input type="text" id="floorDescription"
						name="floorDescription" class="form-control"
						path="floorDescription" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Status </label>

				<div class="col-sm-10">
					<form:checkbox id="floorStatus" path="floorStatus"
						name="floorStatus" value="ENABLE" checked="checked" />
					<label for="checkbox1"> Enable </label>
				</div>
			</div>
		</div>

		<div class="modal-footer">
			<button type="button" data-reload="yes" data-dismiss="modal"
				class="btn btn-default">Cancel</button>
			<button type="submit" class="btn btn-success success">Update</button>
		</div>
	</form:form>

</body>
</html>