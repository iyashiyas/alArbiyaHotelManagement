<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
	<div class="ibox-content">
		<form:form class="form-horizontal"
			action="${pageContext.request.contextPath}/hotel/addBuilding"
			modelAttribute="newBuilding" method="post">

			<div class="form-group">
				<label class="col-sm-2 control-label">Building Name</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Building Name"
						name="buildingName" class="form-control" path="buildingName" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Building Code</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Building Code"
						name="buildingCode" class="form-control" path="buildingCode" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Select Branch Code</label>
				<div class="col-sm-10">
				 <form:select class="form-control m-b" path="branch.id" name="branch.id">
							  <form:options items="${branches}" itemValue="id" itemLabel="branchCode"></form:options>
				 </form:select> 				
				 </div>			
			 </div>

			<div class="form-group">
				<label class="col-sm-2 control-label">Phone Number</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="PhoneNumber"
						name="buildingPhoneNumber" class="form-control" path="buildingPhoneNumber" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Email" name="buildingEmail"
						class="form-control" path="buildingEmail" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Floor</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Total Floor" name="buildingTotalFloor"
						class="form-control" path="buildingTotalFloor" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label"> Description</label>

				<div class="col-sm-10">
					<form:input type="text" placeholder="Description"
						name="buildingDescription" class="form-control" path="buildingDescription" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Status </label>

				<div class="col-sm-10">
					<form:checkbox id="checkbox1" path="buildingStatus" value="ENABLE" name="buildingStatus"
						checked="checked" />
					<label for="checkbox1"> Enable </label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-8">
					<button class="btn btn-primary" type="submit">Add</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>