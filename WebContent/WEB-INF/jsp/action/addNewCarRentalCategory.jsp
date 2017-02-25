<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Add New Car Rental Category</title>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="newCarRentalCategory" action="${pageContext.request.contextPath}/action/addCarRentalCategory" method="post">
								 
			   <div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.CarRentalCategory" /></label>

									 <div class="col-sm-10">
											<form:input type="text" required="required" placeholder="CarRental Category Name"
												name="carRenatalCategoryName" path="carRenatalCategoryName" class="form-control" value="" />
										</div>
									</div> 
									
										<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

										<div class="col-sm-10">
											<form:checkbox id="carRentalStatus" name="carRenatalCategoryStatus"
												path="carRenatalCategoryStatus" value="ENABLE" checked="checked" />
											<spring:message code="label.Enable" />
										</div>
									</div>
									
				             <div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
							 <button id="submit" type="submit" class="btn btn-success success"><spring:message code="label.Update" /></button>
										</div>
										</form:form>
</body>
</html>
