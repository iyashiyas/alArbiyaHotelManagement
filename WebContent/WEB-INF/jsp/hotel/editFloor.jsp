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
						<label class="col-sm-2 control-label">Floor Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Floor Name" name="floorName"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Floor Code</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Floor Code" name="floorCode"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Branch  </label>
                          <div class="col-sm-10">
							<select class="form-control m-b" name="branchCode">
								<option>Branch</option>
							 </select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Buildings  </label>
                          <div class="col-sm-10">
							<select class="form-control m-b" name="buIlingCode">
								<option>Bild1</option>
							 </select>
						</div>
					</div>
					 
					 
					
					 <div class="form-group">
						<label class="col-sm-2 control-label"> Total Rooms</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Total Floor" name="totalRoom"
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