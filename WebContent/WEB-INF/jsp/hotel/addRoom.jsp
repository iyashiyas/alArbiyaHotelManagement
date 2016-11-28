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
<div class="ibox float-e-margins">
		<div class="ibox-title">
			<h5>Add New Ingredient Items</h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
<div class="ibox-content">
<form:form class="form-horizontal" modelAttribute="newRoom" action="${pageContext.request.contextPath}/hotel/addRoom" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomName" /></label>

						<div class="col-sm-10">
							<form:input type="text"  required="required" placeholder="label.RoomName"  name="floorName"
								class="form-control" path="roomName" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomNumber/Code" /></label>

						<div class="col-sm-10">
							<form:input type="text"  required="required" placeholder="Room Code or Number" name="roomCode"
								class="form-control" path="roomCode" />
						</div>
					</div>
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
							<form:select class="form-control m-b FloorId"  required="required" name="floor.id" path="floor.id">
								
							 </form:select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.SelectRoomType" /> </label>
                          <div class="col-sm-10">
							<form:select class="form-control m-b roomTypeCode" path="roomType.id" name="roomType.id">
							  <form:options items="${roomType}" itemValue="id"  required="required" itemLabel="roomType"></form:options>
							 </form:select>
						</div>
					</div>
					 
					  <div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.CoastPerDay" /></label>

						<div class="col-sm-10">
							<form:input type="number" placeholder="Sr" name="roomPrice"
								class="form-control" path="roomPrice"  required="required" />
						</div>
					</div>
					 <%-- <div class="form-group">
						<label class="col-sm-2 control-label">Price Per Day</label>

							<div class="col-sm-10">
											<div class="controls">
												 
													<select class="form-control m-b " id="drp"
														  style="width:10%;">
														<option>Currency</option>
													</select>
													<form:input class="form-control" type="text"
														 placeholder="Enter Name" name="currencyCode"
														style="width:40%;margin-left: 10px;" path="roomPrice" />
												 
						 </div>
							 </div>
					 </div> --%>
					 
					  		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Description" name="Description"
								class="form-control" path="roomDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" checked="checked"  id="checkbox1" path="roomStatus"/>
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
				</div>
</body>
</html>