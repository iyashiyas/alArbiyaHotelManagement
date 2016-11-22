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
			<form:form class="form-horizontal" action="${pageContext.request.contextPath}/ingredient/addIngredient" modelAttribute="newIngredient" 
				method="post">
				<div class="form-group">
					<label class="col-sm-2 control-label">Ingredient Category</label>
                    	<div class="col-sm-10">
						<form:select class="form-control m-b" path="ingredientCategory" >
							<form:option value="SAUCE">SAUCE</form:option>
							<form:option value="FLOUR">FLOUR</form:option>
                       </form:select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Ingredient Name</label>

					<div class="col-sm-10">
	 					<form:input type="text" placeholder="Ingredient Name" class="form-control" path="ingredientName"/>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Other Languages</label>
					<div class="col-sm-10">
						<div class="controls">
							<div class="entry input-group ">
								<form:select class="form-control m-b select" id="drp"
									path="ingredientLanguages[0].language.id" name="ingredientLanguages[0].language.id" style="width:30%;">
								
								  <form:options items="${languages}" itemValue="id"
										itemLabel="languageName"></form:options> 
								</form:select>
								<form:input class="form-control" type="text"
									name="ingredientLanguages[0].ingredientLanguageName"
									path="ingredientLanguages[0].ingredientLanguageName"
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
					<label class="col-sm-2 control-label">Description</label>

					<div class="col-sm-10">
						<form:input type="text" placeholder="Description"
							name="ingredientDescription" class="form-control" path="ingredientDescription" />
					</div>
				 </div>
				 <div class="form-group">
					<label class="col-sm-2 control-label">Status </label>
					<div class="col-sm-10">
						<form:checkbox id="ingredientStatus" name="ingredientStatus"
							path="ingredientStatus" checked="checked"  value="ENABLE" />
						Enable
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<form:button class="btn btn-primary" type="submit">Create new
								Ingredient</form:button>
					</div>
				</div>

			</form:form>
		</div>
	</div>
    
</body>
</html>