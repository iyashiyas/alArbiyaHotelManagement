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
<div class="ibox float-e-margins">
		<div class="ibox-title">
			<h5>Add New Ingredient Items</h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
<div class="ibox-content">
<form:form class="form-horizontal" modelAttribute="newRoom" action="${pageContext.request.contextPath}/hotel/addRoom" method="post">
				  
					<div class="form-group">
						<label class="col-sm-2 control-label">Room Name</label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Room Name" name="floorName"
								class="form-control" path="roomName" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Room Number/Code</label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Room Code or Number" name="roomCode"
								class="form-control" path="roomCode" />
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
													<form:input class="form-control" type="text"
														 placeholder="Enter Name" name="currencyCode"
														style="width:40%;margin-left: 10px;" path="roomPrice" />
												 
						 </div>
							 </div>
					 </div>
					 
					  		 
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<form:input type="text" placeholder="Description" name="Description"
								class="form-control" path="roomDescription" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Status </label>

						  <div class="col-sm-10">
							 <form:checkbox value="ENABLE" checked="checked"  id="checkbox1" path="roomStatus"/>
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
				 </form:form>
				</div>
				</div>
</body>
</html>