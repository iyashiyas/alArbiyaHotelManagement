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
<div class="ibox-content">
<form:form class="form-horizontal" action="${pageContext.request.contextPath}/hotel/addFloor" modelAttribute="newFloor" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.FloorName" /></label>

						<div class="col-sm-10">
							<form:input type="text"  required="required" placeholder="Floor Name" name="floorName"
								class="form-control" path="floorName" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.FloorCode" /></label>

						<div class="col-sm-10">
							<form:input type="text"  required="required" placeholder="Floor Code" name="floorCode"
								class="form-control" path="floorCode" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.SelectBranchCode" /></label>
						<div class="col-sm-10">
						 <form:select class="form-control m-b branchDetail"  required="required" path="building.branch.id" name="building.branch.id">
						 	<form:option value="0">Select branch</form:option>
							<form:options items="${branches}" itemValue="id" itemLabel="branchCode"></form:options>
						 </form:select> 
			 			</div>
			 		</div>
						 
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.SelectBuildingCode" /></label>
                          <div class="col-sm-10">
							<form:select class="form-control m-b buildingId"  required="required" name="building.id" path="building.id">
								
							 </form:select>
						</div>
					</div>
					 
					 
					
					 <div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.TotalRooms" /></label>

						<div class="col-sm-10">
							<form:input type="number"  required="required" placeholder="Total Room" name="floorTotalRoom"
								class="form-control" path="floorTotalRoom" />
						</div>
					</div>
					  		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Description" name="floorDescription"
								class="form-control" path="floorDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

						  <div class="col-sm-10">
							 <form:checkbox path="floorStatus" name="floorStatus" value="ENABLE" checked="checked" id="checkbox1" />
                                    <label for="checkbox1">
                             <spring:message code="label.Enable" />
                                    </label>
                          </div>
					      </div>
                         <div class="form-group">
						<div class="col-lg-offset-2 col-lg-8">
							<button class="btn btn-primary" type="submit"><spring:message code="label.Add" />
								 </button>
						</div>
					</div>
				 </form:form>
				</div>
</body>
</html>