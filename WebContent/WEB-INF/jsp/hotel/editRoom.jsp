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
						<label class="col-sm-2 control-label">Room Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Room Name" name="floorName"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Room Number/Code</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Room Code" name="roomCode"
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
						<label class="col-sm-2 control-label">Select Floor  </label>
                          <div class="col-sm-10">
							<select class="form-control m-b" name="floorCode">
								<option>Floor</option>
							 </select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Select Room Type  </label>
                          <div class="col-sm-10">
							<select class="form-control m-b" name="typeCode">
								<option>Type1</option>
							 </select>
						</div>
					</div>
					 
					  
					 <div class="form-group">
						<label class="col-sm-2 control-label">Price Per Day</label>

							<div class="col-sm-10">
											<div class="controls">
												 
													<select class="form-control m-b " id="drp"
														  style="width:10%;">
														<option>Currency</option>
													</select>
													<input class="form-control" type="text"
														 placeholder="Enter Name" name="currencyCode"
														style="width:40%;margin-left: 10px;" >
												 
						 </div>
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