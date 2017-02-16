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
  	 
			<form:form class="form-horizontal"
				action="${pageContext.request.contextPath}/ingredient/editIngredient"
				 modelAttribute="newIngredient" method="post">
				<p><spring:message code="label.EditIngredientItemsHere" /></p>
                <div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.IngredientCategory" /></label>
					<input type="hidden" name="id" id="id" value="">
					<div class="col-sm-10">
					<form:select class="form-control m-b" name="ingredientCategories.id"
												path="ingredientCategories.id">
												  <c:forEach items="${ingredientCategories}" var="ingredientCategories">
												<form:option value="${ingredientCategories.id}">${ingredientCategories.ingredientCategoryName}</form:option>
												<%-- <form:option value="LNT">Length</form:option>
												<form:option value="VAC">Volume and Capacity</form:option>
												<form:option value="WGT">Weight</form:option> --%>
												</c:forEach>
											</form:select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.IngredientName" /></label>

					<div class="col-sm-10">
	 <form:input type="text" placeholder="Ingredient Name" required="required" name="ingredientName" class="form-control" path="ingredientName"/>
					</div>
				</div>

			<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.OtherLanguages" /></label>
										<div class="col-sm-10">
											<div class="editControls">
												<div class="editEntry input-group " style="margin-bottom: 10px;">
												<form:input id="editFormLanguageId" type="hidden" path="ingredientLanguages[0].id" name="ingredientLanguages[0].id"/>
												<form:select class="form-control m-b " id="editFormLanguageLanguageId"
																path="ingredientLanguages[0].language.id" name="ingredientLanguages[0].language.id" style="width:30%;">
																<form:options items="${languages }" itemValue="id"
																	itemLabel="languageName"></form:options>
												</form:select>
												
												<form:input class="form-control" type="text" id="editFormLanguageName"
													name="ingredientLanguages[0].ingredientLanguageName"
													path="ingredientLanguages[0].ingredientLanguageName"
													placeholder="Enter Name"
													style="width:40%;margin-left: 10px;" />
													<span class="input-group-btn">
														<button class="btn btn-primary edit-btn-add" type="button">
															<span class="glyphicon glyphicon-plus"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>

				<div class="form-group">
					<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

					<div class="col-sm-10">
						<form:input type="text" placeholder="Description"
							name="ingredientDescription" class="form-control" path="ingredientDescription" />
					</div>
				 </div>
				 <div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

										<div class="col-sm-10">
											<form:checkbox id="ingredientStatus" name="ingredientStatus"
												path="ingredientStatus" value="ENABLE" />
											<spring:message code="label.Enable" />
										</div>
									</div>
	 
			    <div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default"><spring:message code="label.Cancel" /></button>
											<button type="submit" class="btn btn-success success"><spring:message code="label.Update" /></button>
										</div> 

			</form:form>
		  
</body>
</html>