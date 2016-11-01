<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body><div class="ibox float-e-margins">
<div class="ibox-title">
								<h5>Add New Branch Details</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
<div class="ibox-content">
<form class="form-horizontal" action="" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label">Room Type Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Type Name" name="typeName"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Type Code</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Type Code" name="typeCode"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Bed Type  </label>
                          <div class="col-sm-10">
							<select class="form-control m-b" name="branchCode">
								<option>Single</option>
							 </select>
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
							 <input type="checkbox" id="checkbox1">
                                    <label for="checkbox1">
                             Enable
                                    </label>
                          </div>
					      </div>
                         <div class="form-group">
						<div class="col-lg-offset-2 col-lg-8">
							<button class="btn btn-primary" type="submit">Add
								 </button>
						</div>
					</div>
				 </form>
				</div>
				</div>
</body>
</html>