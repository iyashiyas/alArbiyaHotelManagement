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

<title>SHMS-addRestaurant</title>

</head>
<body> 
	<form:form class="form-horizontal" action="${pageContext.request.contextPath}/action/addCarRentalItem"
		modelAttribute="newCarRental" method="post">
		<p><spring:message code="label.addCarRentelItem" /></p>
		<input type="hidden" name="hotelServiceCategoryId" value="6" />
		<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.Categories" /></label>

					<div class="col-sm-10">
				<%--  <form:select class="form-control m-b" name="category"
							path="category">
					    <form:option value="">Bus</form:option>
					   <form:option value="">Car</form:option>  
						</form:select> --%>
					</div>
				</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.ItemName" /></label>

			<div class="col-sm-10">
				<form:input type="text" required="required" path="carRentalItemName" placeholder="Item Name"
					name="carRentalItemName" class="form-control" />
			</div>
		</div>

		
									<div class="form-group">
										<label class="col-sm-2 control-label"><spring:message code="label.OtherLanguages" /></label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b select" id="drp"
														path="carRentalLanguages[0].language.id" name="carRentalLanguages[0].language.id" style="width:30%;">
													 
														<form:options items="${languages}" itemValue="id"
															itemLabel="languageName"></form:options>
													</form:select>
													<form:input class="form-control" type="text"
														name="carRentalLanguages[0].carRentalLanguageName"
														path="carRentalLanguages[0].carRentalLanguageName"
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
			<label class="col-sm-2 control-label"><spring:message code="label.PricePerDay" /></label>

			<div class="col-sm-10">
				<form:input type="number" required="required" path="carRentalPrice" placeholder="Price"
					name="carRentalPrice" class="form-control" />
			</div>
		</div>
						 
						 
						 
					<div class="form-group">
			<label class="col-sm-2 control-label"> <spring:message code="label.Description" /></label>

			<div class="col-sm-10">
				<form:input type="text" path="carRentalDescription" placeholder="Description"
					name="carRentalDescription" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"> <spring:message code="label.Image" /></label>

			<div class="col-sm-10">
				<input type="file" placeholder="Image" name="image"
					class="form-control">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

			<div class="col-sm-10">
				<form:checkbox id="checkbox1" value="ENABLED"  name="carRentalStatus" path="carRentalStatus" />
				<label for="checkbox1"> <spring:message code="label.Enable" /> </label>
			</div>
		</div>

		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit"><spring:message code="label.CreateNewItem" /></button>
			</div>
		</div>

	</form:form>

</body>
</html>