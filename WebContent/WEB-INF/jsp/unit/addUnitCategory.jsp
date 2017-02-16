<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

 <p>Insert New Categories Here</p>
<form:form class="form-horizontal" modelAttribute="newUnitCategory" action="${pageContext.request.contextPath}/unit/addUnitCategory" method="post">
								 
			   <div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.UnitCategory" /></label>

									 <div class="col-sm-10">
											<form:input type="text" required="required" placeholder="Unit Category Name"
												name="unitCategoryName" path="unitCategoryName" class="form-control" value="" />
										</div>
									</div> 
									
										<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

										<div class="col-sm-10">
											<form:checkbox id="unitStatus" name="unitCategoryStatus"
												path="unitCategoryStatus" value="ENABLE" checked="checked" />
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