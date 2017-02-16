<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Ingredient</title>

</head>
<body>
  	 
			 <form:form class="form-horizontal" id="confirm-EditForm"
										modelAttribute="newUnit" method="POST" action="unit/editUnit">
										<div class="modal-header"><spring:message code="label.EditUnit" /></div>
										<div class="modal-body">
                                 	<p><spring:message code="label.UpdateUnitItemsHere" /></p>

											<div class="form-group">
												<label class="col-sm-2 control-label"><spring:message code="label.UnitCategory" /></label>
												<input type="hidden" name="id" id="id" value="">
												<div class="col-sm-10">
												  
													<form:select class="form-control m-b" name="unitCategories.id"
												path="unitCategories.id">
												  <c:forEach items="${unitCategories}" var="unitCategories">
												<form:option value="${unitCategories.id}">${unitCategories.unitCategoryName}</form:option>
											 
												</c:forEach>
											</form:select>
													
													
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label"><spring:message code="label.UnitName" /></label>

												<div class="col-sm-10">
													<form:input type="text" required="required" path="unitName" id="unitName"
														class="form-control" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label"><spring:message code="label.OtherLanguage" /></label>
												<div class="col-sm-10">
													<div class="editControls">
														<div class="editEntry input-group " style="margin-bottom: 15px;">
															<form:input id="editFormLanguageId" type="hidden" path="unitLanguages[0].id" name="unitLanguages[0].id"/>
															<form:select class="form-control m-b " id="editFormLanguageLanguageId"
																path="unitLanguages[0].language.id" name="unitLanguages[0].language.id" style="width:30%;">
																<form:options items="${languages }" itemValue="id"
																	itemLabel="languageName"></form:options>
															</form:select>
															<form:input class="form-control" type="text" id="editFormLanguageName"
																name="unitLanguages[0].unitLanguageName"
																path="unitLanguages[0].unitLanguageName"
																placeholder="Enter Name"
																style="width:40%;margin-left: 10px;" />
															<span class="input-group-btn">
																<button class="btn btn-primary  edit-btn-add" type="button">
																	<span class="glyphicon glyphicon-plus"></span>
																</button>
															</span>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label"> <spring:message code="label.Measurement" /> </label>

												<div class="col-sm-10">
													<form:input type="text" path="measurementUnit"
														id="measurementUnit" class="form-control"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

												<div class="col-sm-10">
													<form:input type="text" path="unitDescription" id="unitDescription"
														class="form-control"/>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

												<div class="col-sm-10">
													<form:checkbox path="unitStatus" id="unitStatus" value=""/> <label
														for="checkbox1"> <spring:message code="label.Enable" /> </label>
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