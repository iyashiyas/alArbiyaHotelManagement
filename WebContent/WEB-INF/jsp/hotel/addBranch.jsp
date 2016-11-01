<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
<div class="ibox-content">
<form class="form-horizontal" action="" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label">Branch Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Branch Name" name="branchName"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Branch Code</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Branch Code" name="branchCode"
								class="form-control">
						</div>
					</div>
					
							<div class="form-group">
						<label class="col-sm-2 control-label">Phone Number</label>

						<div class="col-sm-10">
							<input type="text" placeholder="PhoneNumber" name="phoneNumber"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Email</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Email" name="email"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">Address</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Address" name="address"
								class="form-control">
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
</body>
</html>