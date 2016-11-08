<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
 
<form class="form-horizontal" id="editBuilding" action="${pageContext.request.contextPath}/hotel/editBuilding" method="post">
	<div class="modal-body">
		<div class="form-group">
			<label class="col-sm-2 control-label">Building Name</label>
			<input type="hidden" id="id" name="id" value=""/>
			<div class="col-sm-10">
				<input type="text" placeholder="Branch Name" name="buildingName" id="buildingName" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Building Code</label>
			<div class="col-sm-10">
				<input type="text" placeholder="Building Code" name="buildingCode" id="buildingCode" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Select Branch  </label>
                       <div class="col-sm-10">
				<select class="form-control m-b" name="branch.branchName" id="branchName">
					<option>Branch</option>
				 </select>
			</div>
		</div>
					
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone Number</label>
			<div class="col-sm-10">
				<input type="text" placeholder="PhoneNumber" name="buildingPhoneNumber" id="buildingPhoneNumber" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="text" placeholder="Email" name="buildingEmail" id="buildingEmail" class="form-control">
			</div>
		</div>
		 <div class="form-group">
			<label class="col-sm-2 control-label"> Floor</label>
			<div class="col-sm-10">
				<input type="text" placeholder="Total Floor" name="buildingTotalFloor" id="buildingTotalFloor" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"> Description</label>
			<div class="col-sm-10">
				<input type="text" placeholder="Description" name="buildingDescription" id="buildingDescription" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Status </label>
			 <div class="col-sm-10">
			 	<input type="checkbox" id="buildingStatus" name="buildingStatus">
				<label for="checkbox1">Enable</label>
             </div>
		 </div>
	</div>
					  	 
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
		<button type="submit" class="btn btn-success success">Update</button>
	</div>	
</form>
</body>
</html>