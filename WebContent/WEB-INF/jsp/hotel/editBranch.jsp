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
<form class="form-horizontal" action="" method="post">

<div class="modal-body">
           
				  
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
</div>
					  	 
					<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a   id="submit" class="btn btn-success success">Update</a>
				</div>
				</form>
				 
</body>
</html>