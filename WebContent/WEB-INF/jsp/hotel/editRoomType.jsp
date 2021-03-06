<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Edit Room Type</title>
</head>
<body>
 <form:form class="form-horizontal"  action="${pageContext.request.contextPath}/hotel/editRoomType" modelAttribute="newRoomType" method="post">
				  		<div class="modal-header">Edit Room Type Details</div>
			   <div class="modal-body">
			  <input type="hidden" name="id" id="id" value="">
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomType" /></label>

						<div class="col-sm-10">
					   <input type="text" disabled="disabled" id="roomType" class="form-control">
						</div> 
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.TypeCode" /></label>

						<div class="col-sm-10">
							<form:input type="text" id="roomTypeCode" placeholder="Type Code" name="typeCode"
								class="form-control" path="roomTypeCode" />
						</div>
					</div>
					 
					<%--<div class="form-group">
						<label class="col-sm-2 control-label">Bed Types </label>

						   <div class="col-sm-10">
							 
							 <form:checkbox value="Single" path="roomTypeBedType" checked="checked" id="checkbox1" />
                                    <label for="checkbox1">
                             Single
                                    </label>
                         
                         
							 <form:checkbox value="Double" path="roomTypeBedType" checked="checked" id="checkbox1" />
                                    <label for="checkbox1">
                             Double
                                    </label>
                          
							 <form:checkbox value="Kids" path="roomTypeBedType" checked="checked" id="checkbox1" />
                                    <label for="checkbox1">
                             Kids
                                    </label>
                          </div> 
                          
					      </div>--%>
					
					
					
					   		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

						<div class="col-sm-10">
							<form:input type="text" id="roomTypeDescription" placeholder="Description" name="Description"
								class="form-control" path="roomTypeDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" path="roomTypeStatus" checked="checked" id="roomTypeStatus" />
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
					      </div>
                         
			<div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default"><spring:message code="label.Cancel" /></button>
											<button type="submit" class="btn btn-success success"><spring:message code="label.Update" /></button>
										</div> 
                          
				 </form:form>
	 
</body>
</html>