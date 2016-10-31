<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	 <form:input type="text" placeholder="Category Name" name="ingredientCategoryName" class="form-control" path="ingredientName"/>
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
					<label class="col-sm-2 control-label">Category Code</label>
   <div class="col-sm-10">
	 <form:input type="text" placeholder="Category Code" name="ingredientCategoryCode" class="form-control" path="ingredientName"/>
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