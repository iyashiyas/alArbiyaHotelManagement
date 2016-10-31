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

 <p>Update Ingredient items Here</p>
<form class="form-horizontal" action="ingredient/editingredient" method="post">
										<div class="form-group">
					<label class="col-sm-2 control-label">Ingredient Category</label>

					<div class="col-sm-10">
						<form:select class="form-control m-b" name="ingredientCategory" path="" >
							<form:option value="SAUCE">sauce </form:option>
							<form:option value="FLOUR">Flour</form:option>
                       </form:select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Ingredient Name</label>

					<div class="col-sm-10">
	 <form:input type="text" placeholder="Ingredient Name" name="ingredientName" class="form-control" path="ingredientName"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Other Languages</label>
					<div class="col-sm-10">
						<div class="controls">

							<div class="entry input-group ">
								<select class="form-control m-b" name="ingredientOtherlanguage" id="language_dropdown"><option>Arabic</option>
									<option>English</option></select> <input class="form-control"
									type="text" name="other_language_ingredient"
									placeholder="Enter Name" /> <span class="input-group-btn">
									<button class="btn btn-primary btn-add" type="button">
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
						<form:input type="text" placeholder="Description"
							name="ingredientDescription" class="form-control" path="ingredientDescription" />
					</div>
				 </div>
				 <div class="form-group">
										<label class="col-sm-2 control-label">Status </label>

										<div class="col-sm-10">
											<form:checkbox id="unitStatus" name="ingredientStatus"
												path="ingredientStatus" value="ENABLE" />
											Enable
										</div>
									</div>
 
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Cancel</button>
											<button id="submit" type="submit" class="btn btn-success success">Update</button>
										</div>
									</form>
							 
								
</body>
</html>