<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
			<label class="col-sm-2 control-label"><spring:message code="label.BuildingName" /></label>
			<input type="hidden" id="id" name="id" value="">
		  
			<div class="col-sm-10">
				<input type="text" placeholder="Branch Name" required="required" name="buildingName" id="buildingName" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.BuildingCode" /></label>
			<div class="col-sm-10">
				<form:input type="text" required="required" placeholder="Building Code" path="buildingCode" name="buildingCode" id="buildingCode" class="form-control" />
			</div>
		</div>
  
	 	<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.BranchCode" /></label>
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
			<label class="col-sm-2 control-label"><spring:message code="label.PhoneNumber" /></label>
			<div class="col-sm-10">
				<form:input type="number" placeholder="PhoneNumber" name="buildingPhoneNumber" path="buildingPhoneNumber" id="buildingPhoneNumber" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.Email" /></label>
			<div class="col-sm-10">
				<form:input type="email" placeholder="Email"  path="buildingEmail" name="buildingEmail" id="buildingEmail" class="form-control" />
			</div>
		</div>
		 <div class="form-group">
			<label class="col-sm-2 control-label"> <spring:message code="label.Floor" /></label>
			<div class="col-sm-10">
				<form:input type="number" required="required" placeholder="Total Floor" path="buildingTotalFloor" name="buildingTotalFloor" id="buildingTotalFloor" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>
			<div class="col-sm-10">
				<form:input type="text" placeholder="Description" path="buildingDescription" name="buildingDescription" id="buildingDescription" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>
			 <div class="col-sm-10">
			 	<form:checkbox id="buildingStatus" value="ENABLE" path="buildingStatus" name="buildingStatus" />
				<label for="checkbox1"><spring:message code="label.Enable" /></label>
             </div>
		 </div>
	</div>
					  	 
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
		<button type="submit" class="btn btn-success success"><spring:message code="label.Update" /></button>
	</div>	
</form:form>
</body>
</html>