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
 		  
<form:form class="form-horizontal" modelAttribute="newRoom"	action="${pageContext.request.contextPath}/hotel/editRoom" method="post">
				  <div class="modal-body">
				  
				  <input type="hidden" id="roomId" name="id"> 
				  
						<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomName" /></label>

						<div class="col-sm-10">
							<form:input type="text" required="required" id="roomName" placeholder="Room Name" name="roomName"
								class="form-control" path="roomName" />
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomCode" /></label>

						<div class="col-sm-10">
							<form:input type="text" required="required" id="roomCode" placeholder="Room Code" name="roomCode"
								class="form-control" path="roomCode" />
						</div>
					</div>
					
					  
					  <div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.CoastPerDay" /></label>

						<div class="col-sm-10">
							<form:input type="email" required="required" id="roomPrice" placeholder="Sr" name="roomPrice"
								class="form-control" path="roomPrice" />
						</div>
					</div>
					
					 <div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Floor" /></label>

						<div class="col-sm-10">
							<input type="text" id="roomFloorCode"  placeholder="Sr"  
								class="form-control"   disabled="disabled" >
								
								<input type="hidden" id="roomFloorId" name="floor.id" value="" >
						</div>
					</div>
					
					 <div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Roomtype" /></label>

						<div class="col-sm-10">
							<input type="text" id="roomType" placeholder="roomType"
								class="form-control" id="roomTypeCode" disabled="disabled">
								<input type="hidden" id="roomTypeId" name="roomType.id" value="">
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
							<form:input type="text" id="roomDescription" placeholder="Description" name="Description"
								class="form-control" path="roomDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" checked="checked"  id="roomStatus" path="roomStatus"/>
                                    <label for="checkbox1">
                             <spring:message code="label.Enable" />
                                    </label>
                          </div>
					      </div>
                          
					</div>
					 
					<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
					<button  id="submit" type="submit" class="btn btn-success success"><spring:message code="label.Update" /></button>
				</div>
				 </form:form>
			 
</body>
</html>