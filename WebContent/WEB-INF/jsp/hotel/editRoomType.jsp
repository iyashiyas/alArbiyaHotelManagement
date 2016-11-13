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
						<label class="col-sm-2 control-label">Room Type Name</label>

						<div class="col-sm-10">
							<form:input type="text" id="roomTypeName" placeholder="Type Name" name="typeName"
								class="form-control" path="roomTypeName" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Type Code</label>

						<div class="col-sm-10">
							<form:input type="text" id="roomTypeCode" placeholder="Type Code" name="typeCode"
								class="form-control" path="roomTypeCode" />
						</div>
					</div>
					 
					<div class="form-group">
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
                          
					      </div>
					
					
					
					   		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<form:input type="text" id="roomTypeDescription" placeholder="Description" name="Description"
								class="form-control" path="roomTypeDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Status </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" id="roomTypeStatus" path="roomTypeStatus" checked="checked" />
                                    <label for="checkbox1">
                             Enable
                                    </label>
                          </div>
					      </div>
					      </div>
                         
			<div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default">Cancel</button>
											<button type="submit" class="btn btn-success success">Update</button>
										</div> 
                          
				 </form:form>
	 
</body>
</html>