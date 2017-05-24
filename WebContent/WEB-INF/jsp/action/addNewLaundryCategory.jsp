<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Add New Laundry Category</title>
</head>
<body>
<form:form class="form-horizontal" modelAttribute="newLundryCategory" action="${pageContext.request.contextPath}/action/addLaundryCategory" method="post">
		 <input type="hidden" name="hotelServicesCategory.hotelServicesCategoryId" value="5"> 
			   <div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.LaundryCategory" /></label>

									 <div class="col-sm-10">
											<form:input type="text" required="required" placeholder="Laundry Category Name"
												name="serviceItemCategoryName" path="serviceItemCategoryName" class="form-control" value="" />
										</div>
									</div> 
									
										<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.OtherLanguages" /></label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b select" id="drp"
														path="serviceItemCategoryLanguage[0].language.id" name="serviceItemCategoryLanguage[0].language.id" style="width:30%;">
													 
														<form:options items="${languages}" itemValue="id"
															itemLabel="languageName"></form:options>
													</form:select>
													<form:input class="form-control" type="text"
														name="serviceItemCategoryLanguage[0].serviceItemCategoryLanguageName"
														path="serviceItemCategoryLanguage[0].serviceItemCategoryLanguageName"
														placeholder="Enter Name"
														style="width:40%;margin-left: 10px;" />
													<span class="input-group-btn">
														<button class="btn btn-primary btn-add" type="button">
															<span class="glyphicon glyphicon-plus"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
									
										<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

										<div class="col-sm-10">
											<form:checkbox id="laundryStatus" name="serviceItemCategoryStatus"
												path="serviceItemCategoryStatus" value="ENABLE" checked="checked" />
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
