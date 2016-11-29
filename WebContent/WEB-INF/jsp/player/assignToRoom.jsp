<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<form:form class="form-horizontal" action="" modelAttribute="player"  method="post">
				  
	
		<div class="modal-header"><spring:message code="label.player.assignToRoom" /></div>
		<div class="modal-body">
  
<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.SelectBranchCode" /></label>
                          <div class="col-sm-10">
						 <form:select class="form-control m-b branchDetail"  required="required" path="" name="branch.id">
						 	<form:option value="0">Select branch</form:option>
							<form:options items="${branches}" itemValue="id" itemLabel="branchCode"></form:options>
						 </form:select> 
						</div>
					</div>
			 		
			<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.SelectBuildingCode" /> </label>
                          <div class="col-sm-10">
								<form:select class="form-control m-b buildingId"  required="required" name="building.id" path="">
								
							 </form:select>
						</div>
					</div>
					
					
			      <div class="form-group">
						<label class="col-sm-2 control-label" ><spring:message code="label.SelectFloorCode" /></label>
                          <div class="col-sm-10">
							<form:select class="form-control m-b FloorId"  required="required" name="floor.id" path="">
								
							 </form:select>
						</div>
					</div>
					
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.player.selectScreenType" /></label>

				<div class="col-sm-10">
					<select class="form-control m-b" name="">
						<option>Room Service Screens</option>
						<option>Service Screens</option>

					</select>
				</div>
			</div>
 
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.SelectRoomNumber" /></label>

				<div class="col-sm-10">
					<select class="form-control m-b" name=" ">
						<option>Room 1</option>
						<option>Room 2</option>
						<option>Room 3</option>
						<option>Room 4</option>
					</select>
				</div>
			</div>


		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
			<a href="#" id="submit" class="btn btn-success success"><spring:message code="label.Update" /></a>
		</div>
	</form:form>
</body>
</html>