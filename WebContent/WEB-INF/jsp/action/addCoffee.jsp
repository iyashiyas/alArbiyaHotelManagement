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
			<form class="form-horizontal" action="" method="post">
				<p>Add Coffee items Here</p>

				<div class="form-group">
					<label class="col-sm-2 control-label">Categories</label>

					<div class="col-sm-10">
						<select class="form-control m-b" name="items_category">
							<option>Hot Drinks</option>
							<option>Cold Drinks</option>
							<option>Ice-Creams</option>
							<option>Pies and Pastries</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Item Name</label>

					<div class="col-sm-10">
						<input type="text" placeholder="Item Name" name="item_Name"
							class="form-control">
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-2 control-label">Other Languages</label>
					<div class="col-sm-10">
						<div class="controls-coffeeLanguage">

							<div class="entry-coffeeLanguage input-group ">
								<select class="form-control m-b" name="coffeeShopLanguages.coffeeShoplanguage.id"
									style="width: 30%;" id="language_dropdown"><option>Arabic</option>
									<option>English</option></select> <input class="form-control"
									type="text" name="coffeeShopLanguages.coffeeShopLanguageName"
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
								<select class="form-control" name="coffeeShopIngredients.coffeeShopIngredient.id" style="width: 30%;">
									<optgroup label="Sauce">
										<option>Tomato Sauce</option>
										<option>Chilly Sauce</option>
									</optgroup>
									<optgroup label="Ingredient1">
										<option>Sauce</option>
										<option>Sauce</option>
									</optgroup>
								</select> <input class="form-control" type="text"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;" name="coffeeShopIngredients.coffeeShopIngredientName">  <span
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
								<select class="form-control" style="width: 30%;" name="coffeeShopUnits.coffeeShopUnit.id">
									<optgroup label="General">
										<option>Small</option>
										<option>Medium</option>
										<option>Normal</option>
									</optgroup>
									<optgroup label="length">
										<option>CM</option>
										<option>Meter</option>
									</optgroup>
								</select> <input class="form-control" type="text"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;" name="coffeeShopUnits.coffeeShopUnitName"> <span
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
						<input type="text" placeholder="Description" name="Description"
							class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Status </label>

					<div class="col-sm-10">
						<input type="checkbox" id="checkbox1"> <label
							for="checkbox1"> Disable </label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<button class="btn btn-primary" type="submit">Create new
							Items</button>
					</div>
				</div>

			</form>
		</div>
	</div>

</body>
</html>