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


	<div class="ibox float-e-margins">
		<div class="ibox-title">
			<h5>Add New Ingredient Items</h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
		<div class="ibox-content">
			<form:form class="form-horizontal" action="${pageContext.request.contextPath}/action/addCoffeShop" method="POST" modelAttribute="coffeShop">
				<p>Add Coffee items Here</p>

				<div class="form-group">
					<label class="col-sm-2 control-label">Categories</label>

					<div class="col-sm-10">
						<form:select class="form-control m-b" name="category" path="category">
							<form:option value="HOTDRINKS">Hot Drinks</form:option>
							<form:option value="COLDDRINKS">Cold Drinks</form:option>
							<form:option value="ICECREAM">Ice-Creams</form:option>
							<form:option value="PIESANDPASTRIES">Pies and Pastries</form:option>
						</form:select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Item Name</label>

					<div class="col-sm-10">
						<form:input type="text" placeholder="Item Name" name="itemName" path="itemName"
							class="form-control"/>
					</div>
				</div>


				 <div class="form-group">
					<label class="col-sm-2 control-label">Other Languages</label>
					<div class="col-sm-10">
						<div class="controls-coffeeLanguage">

							<div class="entry-coffeeLanguage input-group ">
								<form:select class="form-control m-b" name="languageId[0]" path="languageId[0]"
									style="width: 30%;" id="language_dropdown">
								<option value="1">Arabic</option>
									<form:option value="0">English</form:option>
								</form:select> 
								<form:input class="form-control"
									type="text" name="langageName[0]" path="langageName[0]"
									placeholder="Enter Name" style="width: 40%; margin-left: 10px;" />
								<span class="input-group-btn">
									<button class="btn btn-primary coffeShopLanguage-btn-add" type="button">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>





				<div class="form-group">
					<label class="col-sm-2 control-label">Select Ingredient and
						Price</label>
					<div class="col-sm-10">
						<div class="controls-coffeeIngredients">
							<div class="entry-coffeeIngredients input-group ">
								<form:select class="form-control" name="ingredientId[0]" path="ingredientId[0]" style="width: 30%;">
									<optgroup label="Sauce">
										<form:option value="1">Tomato Sauce</form:option>
										<form:option value="2">Chilly Sauce</form:option>
									</optgroup>
									<optgroup label="Ingredient1">
										<form:option value="3">Sauce</form:option>
										<form:option value="4">Sauce</form:option>
									</optgroup>
								</form:select> 
								<form:input class="form-control" type="text"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;" name="ingredientPrice[0]" path="ingredientPrice[0]"/>  <span
									class="input-group-btn">
									<button class="btn btn-primary coffeShopIngredients-btn-add" type="button">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-2 control-label">Select Unit And Price</label>
					<div class="col-sm-10">
						<div class="controls-coffeeShopUnits">
							<div class="entry-coffeeShopUnits input-group ">
								<form:select class="form-control" style="width: 30%;" name="unitId[0]" path="unitId[0]">
									<optgroup label="General">
										<form:option value="1">Small</form:option>
										<form:option value="2">Medium</form:option>
										<form:option value="3">Normal</form:option>
									</optgroup>
									<optgroup label="length">
										<form:option value="4">CM</form:option>
										<form:option value="5">Meter</form:option>
									</optgroup>
								</form:select> 
								<form:input class="form-control" type="text"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;" name="unitPrice[0]" path="unitPrice[0]"/> <span
									class="input-group-btn">
									<button class="btn btn-primary coffeShopUnits-btn-add" type="button">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-2 control-label"> Description</label>

					<div class="col-sm-10">
						<form:input type="text" placeholder="Description" name="description" path="description"
							class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Status </label>

					<div class="col-sm-10">
						<%-- <form:checkbox type="checkbox" id="checkbox1" name="status" path="status"/> --%> <label
							for="checkbox1"> Disable </label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<button class="btn btn-primary" type="submit">Create new
							Items</button>
					</div>
				</div>

			</form:form>
		</div>
	</div>

</body>
</html>