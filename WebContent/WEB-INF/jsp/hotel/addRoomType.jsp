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
<body><div class="ibox float-e-margins">
<div class="ibox-title">
								<h5><spring:message code="label.AddNewBranchDetails" /></h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
<div class="ibox-content">
<form:form class="form-horizontal"  action="${pageContext.request.contextPath}/hotel/addRoomType" modelAttribute="newRoomType" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.RoomType" /></label>

						<div class="col-sm-10">
					   <form:select class="form-control"  required="required" path="roomType" name="roomType">
															<form:option value="Single">Single</form:option>
															<form:option value="Double">Double</form:option>
															<form:option value="Suite">Suite</form:option>
															<form:option value="Dormitory">Dormitory</form:option>
					   </form:select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.TypeCode" /></label>

						<div class="col-sm-10">
							<form:input type="text"  required="required" placeholder="Type Code" name="typeCode"
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
                          
					      </div>
					      --%>
					
					
					
					   		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Description" name="Description"
								class="form-control" path="roomTypeDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" path="roomTypeStatus" checked="checked" id="checkbox1" />
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