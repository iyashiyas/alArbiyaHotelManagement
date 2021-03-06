<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">

<title>Assign To Room</title>
</head>
<body>

	<form:form class="form-horizontal" action="${pageContext.request.contextPath}/player/assignToRoom" modelAttribute="newPlayers" method="post">

		<div class="modal-header">
			<spring:message code="label.player.assignToRoom" />
		</div>
		<div class="modal-body">
			<input type="hidden" name="id" id="id"> <input type="hidden"
				name="playerIpAddress" id="playerIpAddress">
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message
						code="label.SelectBranchCode" /></label>
				<div class="col-sm-10">
					<select class="form-control m-b branchDetail" name="branch.id">
						<option value="0">Select branch</option>
						<c:forEach items="${branches}" var="branches">
						<option value="${branches.id}">${branches.branchCode}</option></c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message
						code="label.SelectBuildingCode" /> </label>
				<div class="col-sm-10">
					<select class="form-control m-b buildingId"
						required="required" name="building.id" > 
					</select>
				</div>
			</div>


			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message
						code="label.SelectFloorCode" /></label>
				<div class="col-sm-10">
					<select class="form-control m-b FloorId" required="required"
						name="floor.id" > 
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message
						code="label.player.selectScreenType" /></label>

				<div class="col-sm-10">
					<select class="form-control m-b" name="">
						<option>Room Service Screens</option>
						<option>Service Screens</option>

					</select>
				</div>
			</div>
 
			<div class="form-group">
				<label class="col-sm-2 control-label">Select Room Code</label>
				<div class="col-sm-10">
					<select class="form-control m-b roomId" required="required" name="room.id">

					</select>
				</div>
			</div>
 
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">
				<spring:message code="label.Cancel" />
			</button>
			<button type="submit" id="submit" class="btn btn-success success"><spring:message
					code="label.Update" /></button>
		</div>
	</form:form>
</body>
</html>