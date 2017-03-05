<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>add Building</title>
</head>
<body>
	<div class="ibox-content">
		<form:form class="form-horizontal addBuildingForm" id="addBuildingForm"
			action="${pageContext.request.contextPath}/hotel/addBuilding"
			modelAttribute="newBuilding" method="post">
  <input type="hidden" name="${_csrf.parameterName}" id="secuirtyId" value="${_csrf.token}"/> 
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.BuildingName" /></label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="BuildingName"
						name="buildingName"  required="required" class="form-control" path="buildingName" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.BuildingCode" /></label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="BuildingCode"
						name="buildingCode"  required="required" class="form-control" path="buildingCode" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" ><spring:message code="label.SelectBranchCode" /></label>
				<div class="col-sm-10">
				 <form:select class="form-control m-b"  required="required" path="branch.id" name="branch.id">
				  	<form:option value="0">Select branch</form:option>
							  <form:options items="${branches}" itemValue="id" itemLabel="branchCode"></form:options>
				 </form:select> 				
				 </div>			
			 </div>

			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.PhoneNumber" /></label>

				<div class="col-sm-10">
					<form:input type="number"  required="required" placeholder="PhoneNumber"
						name="buildingPhoneNumber" class="form-control" path="buildingPhoneNumber" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.Email" /></label>

				<div class="col-sm-10">
					<form:input type="email" placeholder="SelectEmail" name="buildingEmail"
						class="form-control" path="buildingEmail" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> <spring:message code="label.TotalFloor" /></label>

				<div class="col-sm-10">
					<form:input type="number"  required="required" placeholder="Total Floor" name="buildingTotalFloor"
						class="form-control" path="buildingTotalFloor" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Description"
						name="buildingDescription" class="form-control" path="buildingDescription" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

				<div class="col-sm-10">
					<form:checkbox id="checkbox1" path="buildingStatus" value="ENABLE" name="buildingStatus"
						checked="checked" />
					<label for="checkbox1"> <spring:message code="label.Enable" /> </label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-8">
					<button type="submit" name="btn" value="" id="submitBtn1"  
																class="btn btn-primary submitBtn"><spring:message code="label.Add" /> </button>	</div>
			</div>
		</form:form>
	</div> 
	<div class="modal fade" id="confirm-submit" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<spring:message code="label.ConfirmSubmit" />
						</div>
						<div class="modal-body">
							<spring:message code="label.AreYouSureYouWanttoSubmit" />
                        </div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<spring:message code="label.Cancel" />
							</button>
							<a id="submit" class="btn btn-success success"><spring:message
									code="label.Submit" /></a>
						</div>
					</div>
				  </div>
     </div>
	
</body>
</html>