<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Unit</title>

</head>
<body>

<div class="ibox float-e-margins">
 
		<div class="ibox-title">
								<h5>Add New Unit Items</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
		<div class="ibox-content">
			 <form:form id="addUnitForm" class="form-horizontal"
									action="${pageContext.request.contextPath}/unit/addUnit"
									method="POST" modelAttribute="newUnit">
									<p>Add Unit items Here</p>

									<div class="form-group">
										<label class="col-sm-2 control-label">Unit Category</label>

										<div class="col-sm-10">
											<form:select class="form-control m-b" name="unitCategory"
												path="">
												<form:option value="GRL">General</form:option>
												<form:option value="LNT">Length</form:option>
												<form:option value="VAC">Volume and Capacity</form:option>
												<form:option value="WGT">Weight</form:option>
											</form:select>
										</div>
									</div>

                                        <div class="form-group">
										<label class="col-sm-2 control-label">Unit Name</label>

										<div class="col-sm-10">
											<form:input type="text" required="required" placeholder="unit Name By English"
												name="unitName" path="unitName" class="form-control"
												value="" />
										</div>
									</div>

 
									<div class="form-group">
										<label class="col-sm-2 control-label">Other Languages</label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b select" id="drp"
														path="unitLanguages[0].language.id" name="unitLanguages[0].language.id" style="width:30%;">
													 
														<form:options items="${languages}" itemValue="id"
															itemLabel="languageName"></form:options>
													</form:select>
													<form:input class="form-control" type="text"
														name="unitLanguages[0].unitLanguageName"
														path="unitLanguages[0].unitLanguageName"
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
										<label class="col-sm-2 control-label"> Measurement </label>

										<div class="col-sm-10">
											<form:input type="text" required="required" placeholder="Measurement"
												name="measurementUnit" path="measurementUnit"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label"> Description</label>

										<div class="col-sm-10">
											<form:input type="text" placeholder="Description"
												name="unitDescription" path="unitDescription"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Status </label>

										<div class="col-sm-10">
											<form:checkbox id="unitStatus" name="unitStatus"
												path="unitStatus" value="ENABLE" checked="checked" />
											Enable
										</div>
									</div>

									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-8">
											<form:button class="btn btn-primary" type="submit">Create new
								unit</form:button>
										</div>
									</div>

								</form:form>
		</div>
	</div>
    
</body>
</html>