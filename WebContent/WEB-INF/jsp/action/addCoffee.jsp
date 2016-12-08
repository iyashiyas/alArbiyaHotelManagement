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
<title>SHMS-addCoffee</title> 
</head>
<body> 
	<div class="ibox float-e-margins">
		<div class="ibox-title">
			<h5><spring:message code="label.AddNewCoffeeItems" /></h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
		<div class="ibox-content">
			<form:form class="form-horizontal"
				action="${pageContext.request.contextPath}/action/addCoffeShop"
				method="POST" modelAttribute="coffeShop"
				enctype="multipart/form-data"> 
				<input type="hidden" name="hotelServiceCategoryId" value="1"/> 
				<p><spring:message code="label.AddCoffeeItemsHere" /></p> 
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.Categories" /></label>
                     
                     <div class="col-sm-10">
						<form:select class="form-control m-b" name="category"
							path="category">
							<form:option value="HOTDRINKS"><spring:message code="label.HotDrinks" /></form:option>
							<form:option value="COLDDRINKS"><spring:message code="label.ColdDrinks" /></form:option>
							<form:option value="ICECREAM"><spring:message code="label.IceCreams" /></form:option>
							<form:option value="PIESANDPASTRIES"><spring:message code="label.Pies" /></form:option>
						</form:select>
					</div>
				</div> 
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.ItemName" /></label>

					<div class="col-sm-10">
						<form:input type="text" required="required" placeholder="ItemName" name="itemName"
							path="itemName" class="form-control" />
					</div>
				</div>
 
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.OtherLanguages" /></label>
					<div class="col-sm-10">
						<div class="controls-coffeeLanguage">

                     	<div class="entry-coffeeLanguage input-group ">
								
								<form:select class="form-control m-b select" id="drp"
									path="languageHelper[0].languageId" name="languageHelper[0].languageId" style="width:30%;">
								 
									<form:options items="${languageHelper}" itemValue="id"
										itemLabel="languageName"></form:options>
								</form:select>
								
								<form:input class="form-control" type="text"
									name="languageName[0]" path="languageName[0]"
									placeholder="Enter Name" style="width: 40%; margin-left: 10px;" />
								<span class="input-group-btn">
									<button class="btn btn-primary coffeShopLanguage-btn-add"
										type="button">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
  
  <div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.SelectIngredientAndPrice" /></label>
					<div class="col-sm-10">
						<div class="controls-coffeeIngredients">
							<div class="entry-coffeeIngredients input-group ">
								<form:select class="form-control" name="ingredientHelper[0].ingredientId"
									path="ingredientHelper[0].ingredientId" style="width: 30%;">
 
									<form:options items="${ingredientHelper}" itemValue="id"
										itemLabel="ingredientName"></form:options>
								</form:select>
 
								<form:input class="form-control" type="number"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;"
									name="ingredientPrice[0]" path="ingredientPrice[0]" />
								<span class="input-group-btn">
									<button class="btn btn-primary coffeShopIngredients-btn-add"
										type="button">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div> 
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.SelectUnitAndPrice" /></label>
					<div class="col-sm-10">
						<div class="controls-coffeeShopUnits">
							<div class="entry-coffeeShopUnits input-group ">
								  <form:select class="form-control" style="width: 30%;" name="unitHelper[0].unitId" path="unitHelper[0].unitId">
								<form:options items="${unitHelper}" itemValue="id"
										itemLabel="unitName"></form:options>
								</form:select>
								 
								<form:input class="form-control" type="number"
									placeholder="Enter Price"
									style="width: 40%; margin-left: 10px;" name="unitPrice[0]"
									path="unitPrice[0]" />
								<span class="input-group-btn">
									<button class="btn btn-primary coffeShopUnits-btn-add"
										type="button">
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
							name="description" path="description" class="form-control" />
					</div>
				</div> 
				<div class="form-group">
					<label class="col-sm-2 control-label"> <spring:message code="label.Image" /></label>

					<div class="col-sm-10">
						<input type="file" placeholder="Image"
							name="multipartFile" class="form-control">
					</div>
				</div>  
				<div class="form-group">
					<label class="col-sm-2 control-label"><spring:message code="label.Status" /> </label>

					<div class="col-sm-10">
					 <form:checkbox id="checkbox1"  value="ACTIVE"  name="status" path="status" />  
						<label for="checkbox1"> <spring:message code="label.Enable" /> </label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<button class="btn btn-primary" type="submit"><spring:message code="label.CreateNewItem" /></button>
					</div>
				</div> 
			</form:form>
		</div>
	</div>

</body>
</html>