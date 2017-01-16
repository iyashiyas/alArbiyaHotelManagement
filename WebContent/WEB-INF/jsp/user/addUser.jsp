<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Users</title>

</head>
<body>

	<form:form class="form-horizontal" action="${pageContext.request.contextPath}/usermanagement/addUser?${_csrf.parameterName}=${_csrf.token}" modelAttribute="newUser" method="post" >
		<p>
			<spring:message code="label.AddNewUserHere" />
		</p>
 
 	<%-- <div class="form-group">
			<label class="col-sm-2 control-label"><spring:message code="label.SelectRole"></spring:message></label>
			<div class="col-sm-10">
				<form:select class="form-control m-b" path="roles[0].id" name="roles[0].id" >
				<c:forEach items="${roles}" var="roles">
					<form:option value="${roles.id}">${roles.role}</form:option>
				 
                </c:forEach>
				</form:select>
			</div>
		</div>   --%> 

		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.UserName" /></label>

			<div class="col-sm-10">
				<form:input type="text"  placeholder="User Name"
					name="username" path="username" class="form-control" />
			</div>
		</div>

 
		<div class="form-group">
			<label class="col-sm-2 control-label"><spring:message
					code="label.Password" /></label>

			<div class="col-sm-10">
				<form:input type="password" placeholder="Password" name="password"
					class="form-control" path="password" />
			</div>
		</div>
		 
		 	 <div class="form-group">
		 	 <label class="col-sm-2 control-label">Select Permissions</label>
		 	   <div class="col-sm-10">
        <div id="treeview-checkbox-demo">
      
            <ul>
            
            
            
            <li data-value="24"><label class="label label-primary">HotelInfo</label>
                <ul>	 
                      <li >Read</li>  
                     <li >Edit</li>    
                        
                 </ul>
                </li>
            
                <li data-value="2"><label class="label label-primary">Languages</label>
                <ul>	 
                      <li data-value="16">Read</li>  
                     <li data-value="17">Edit</li>     
                 </ul>
                </li>
            <li data-value="23" ><label class="label label-primary">Profile</label>
                    <ul> 
                        <li data-value="3">Branch
                            <ul>
                                <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li data-value="4">Building
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li data-value="5">Floor
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li data-value="6">Room
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li data-value="7">RoomType
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-value="8"><label class="label label-primary">Reservation</label>
                    <ul>
                        <li data-value="jQuery append">Booking</li>
                        <li data-value="jQuery prepend">BookedRooms</li>
                    </ul>
                </li>
                <li data-value="10"><label class="label label-primary">Unit</label>
                    <ul>
                    <li data-value=" ">Add</li>
                        <li data-value=" ">edit</li>
                        <li data-value=" ">Delete</li>
                    </ul>
                </li>
                 <li data-value="11"><label class="label label-primary">Ingredients</label>
                    <ul>
                    <li data-value="jQuery append">Add</li>
                        <li data-value="jQuery append">Edit</li>
                        <li data-value="jQuery prepend">Delete</li>
                    </ul>
                </li>
                   
                 <li><label class="label label-primary">Services</label>
                    <ul> 
                        <li data-value="12">CHECK-OUT
                            <ul>
                                <li data-value="For loop">ENABLE/DISABLE</li>
                                 
                            </ul>
                        </li>
                        <li data-value="13">PARKING
                          <ul> <li data-value="For loop">ADD</li>  
                            </ul>
                        </li>
                        <li data-value="16">COFFEESHOP
                          <ul>  
                                <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li data-value="17">RESTAURANT
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                        <li  data-value="15">LAUNDRY
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                         <li   data-value="18">CARRENTAL
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                         <li   data-value="19">RECEPTION
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                            <li data-value="14">HOUSEKEEPING
                          <ul> <li data-value="For loop">EDIT</li>
                                <li data-value="While loop">DELETE</li>
                                <li data-value="Do WHile loop">ADD</li>
                            </ul>
                        </li>
                      
                        </ul>
                        </li>
                         <li  data-value="20"><label class="label label-primary">USER MANAGEMENT</label>
                    <ul>
                    <li data-value="jQuery append">Add USER</li>
                        <li data-value="jQuery append">ADD ROLE</li>
                        <li data-value="jQuery prepend">CHANGE PASSWORD</li>
                       <li data-value="jQuery prepend">DELETE USER</li>
                       <li data-value="jQuery prepend">DELETE ROLE</li>
                    </ul>
                </li>
                 <li   data-value="21"><label class="label label-primary">PLAYER</label>
                    <ul>
                    <li data-value="jQuery append">Read</li>
                        <li data-value="jQuery append">ASSIGN ROOM</li>
                    </ul>
                </li>
                  <li data-value="22"><label class="label label-primary">ORDER</label>
                    <ul>
                    <li data-value="jQuery append">ACCEPT ORDER</li>
                     <li data-value="jQuery append">READY FOR DELIVERY</li>
                     <li data-value="jQuery append">DELIVERD</li>
                    </ul>
                </li> 
                    </ul>
              
            </div>
        </div>
        
        </div> 

		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" id="btnddas" type="submit">
					<spring:message code="label.CreateNewUser" />
				</button>
			</div>
		</div>

	</form:form>
</body>
</html>
