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
 
<form:form class="form-horizontal" modelAttribute="newBuilding" id="editBuilding" action="${pageContext.request.contextPath}/hotel/editBuilding" method="post">
	<div class="modal-body">
		<div class="form-group">
			<label class="col-sm-2 control-label">Building Name</label>
			<input type="hidden" id="id" name="id" value="">
		  
			<div class="col-sm-10">
				<input type="text" placeholder="Branch Name" required="required" name="buildingName" id="buildingName" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Building Code</label>
			<div class="col-sm-10">
				<form:input type="text" required="required" placeholder="Building Code" path="buildingCode" name="buildingCode" id="buildingCode" class="form-control" />
			</div>
		</div>
  
	 	<div class="form-group">
			<label class="col-sm-2 control-label">Branch Code</label>
			<div class="col-sm-10">
				<input type="text"  disabled="disabled" required="required"  id="branchName" class="form-control" />
				  <input type="hidden" id="branchId" name="branch.id" value="">
				  
			</div>
		</div>  
		
					<%-- <div class="form-group">
				<label class="col-sm-2 control-label">Select Branch </label>
				<div class="col-sm-10">
				 <form:select class="form-control m-b" path="branch.id" name="branch.id">
				 <form:options items="${branches}" itemValue="id" itemLabel="branchCode"></form:options>
				 </form:select> 				
				 </div>			
			 </div> --%>
 
					
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone Number</label>
			<div class="col-sm-10">
				<form:input type="number" placeholder="PhoneNumber" name="buildingPhoneNumber" path="buildingPhoneNumber" id="buildingPhoneNumber" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<form:input type="email" placeholder="Email"  path="buildingEmail" name="buildingEmail" id="buildingEmail" class="form-control" />
			</div>
		</div>
		 <div class="form-group">
			<label class="col-sm-2 control-label"> Floor</label>
			<div class="col-sm-10">
				<form:input type="number" required="required" placeholder="Total Floor" path="buildingTotalFloor" name="buildingTotalFloor" id="buildingTotalFloor" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"> Description</label>
			<div class="col-sm-10">
				<form:input type="text" placeholder="Description" path="buildingDescription" name="buildingDescription" id="buildingDescription" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Status </label>
			 <div class="col-sm-10">
			 	<form:checkbox id="buildingStatus" value="ENABLE" path="buildingStatus" name="buildingStatus" />
				<label for="checkbox1">Enable</label>
             </div>
		 </div>
	</div>
					  	 
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
		<button type="submit" class="btn btn-success success">Update</button>
	</div>	
</form:form>
</body>
</html>