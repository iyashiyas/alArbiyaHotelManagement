<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

 <p>Insert New Categories Here</p>
<form class="form-horizontal" action="#" method="post">
								 
				<div class="form-group">
					<label class="col-sm-2 control-label">Category Name</label>
   <div class="col-sm-10">
	 <form:input type="text" placeholder="Category Name" name="categoryName" class="form-control" path="categoryName"/>
					</div>
				</div>
				 
				 	<div class="form-group">
										<label class="col-sm-2 control-label">Other Languages</label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b " id="drp"
														path="ingredientLanguages[0].id" style="width:30%;">
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
					<label class="col-sm-2 control-label">Category Code</label>
   <div class="col-sm-10">
	 <form:input type="text" placeholder="Category Code" name="ingredientCategoryCode" class="form-control" path="ingredientCategoryCode"/>
					</div>
				</div>
				
				<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
											<button id="submit" type="submit" class="btn btn-success success">Update</button>
										</div>
										</form>

</body>
</html>