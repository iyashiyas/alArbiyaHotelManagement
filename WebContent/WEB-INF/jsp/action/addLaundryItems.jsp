<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-addLaundryItems</title>

</head>
<body> 
	<form:form class="form-horizontal" action="${pageContext.request.contextPath}/action/addLaundryItem"
		modelAttribute="newLaundry" method="post">
		<p>Add Restaurant items Here</p>
		<input type="hidden" name="hotelServiceCategoryId" value="6" />
		<div class="form-group">
					<label class="col-sm-2 control-label">Categories</label>

					<div class="col-sm-10">
				<%--  <form:select class="form-control m-b" name="category"
							path="category">
					    <form:option value="">Bus</form:option>
					   <form:option value="">Car</form:option>  
						</form:select> --%>
					</div>
				</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Item Name</label>

			<div class="col-sm-10"> 
				<form:input type="text" required="required" path="laundryItemName" placeholder="Item Name"
					name="laundryItemName" class="form-control" />
			</div>
		</div>
 
									<div class="form-group">
										<label class="col-sm-2 control-label">Other Languages</label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b select" id="drp"
														path="laundryLanguages[0].language.id" name="laundryLanguages[0].language.id" style="width:30%;">
													 
														<form:options items="${languages}" itemValue="id"
															itemLabel="languageName"></form:options>
													</form:select>
													<form:input class="form-control" type="text"
														name="laundryLanguages[0].laundryLanguageName"
														path="laundryLanguages[0].laundryLanguageName"
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
			<label class="col-sm-2 control-label">Price  </label>

			<div class="col-sm-10">
				<form:input type="number" required="required" path="laundryItemPrice" placeholder="Price"
					name="laundryItemPrice" class="form-control" />
			</div>
		</div>
						 
						 <div class="form-group">
						<label class="col-sm-2 control-label"> Normal Time To FInish</label>

						<div class="col-sm-10">
							 <form:input class="touchspin1" required="required" path="laundryItemTimeFinish" type="number" value="" name="laundryItemTimeFinish" />

						</div>
					</div>
						 
					<div class="form-group">
			<label class="col-sm-2 control-label"> Description</label>

			<div class="col-sm-10">
				<form:input type="text" path="laundryItemDescription" placeholder="Description"
					name="laundryItemDescription" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"> Image</label>

			<div class="col-sm-10">
				<input type="file" placeholder="Image" name="image"
					class="form-control">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">Status </label>

			<div class="col-sm-10">
				<form:checkbox id="checkbox1" value="ENABLED"  name="laundryItemStatus" path="laundryItemStatus" />
				<label for="checkbox1"> ENABLE </label>
			</div>
		</div>

		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit">Create new
					Items</button>
			</div>
		</div>

	</form:form>

</body>
</html>