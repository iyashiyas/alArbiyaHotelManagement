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
            
             <li data-value="42"><label class="label label-primary">HOME</label>
                <ul>  
                    <li data-value="43">PLAYER OVERVIEW</li>    
                   <li data-value="44">ROOMS OVERVIEW</li>   
                    <li data-value="45">LANGUAGE OVERVIEW</li> 
                   <li data-value="46">PROFILE OVERVIEW</li>    
                   <li data-value="47">URL PRIVEW</li>     
                 </ul>
                </li>
             
            <li data-value="24"><label class="label label-primary">HOTELINFO</label>
                <ul>  
                     <li data-value="31">EDIT</li>    
                        
                 </ul>
                </li>
            
                <li data-value="2"><label class="label label-primary">LANGUAGES</label>
                <ul>  
                     <li data-value="31">EDIT</li>     
                 </ul>
                </li>
            <li data-value="23" ><label class="label label-primary">PROFILE</label>
                    <ul> 
                        <li data-value="3">BRANCH
                            <ul>
                        <li data-value="33">ADD</li>
                        <li data-value="31">EDIT</li>
                        <li data-value="32">DELETE</li>
                            </ul>
                        </li>
                        <li data-value="4">BUILDING
                          <ul>  <li data-value="33">ADD</li>
                        <li data-value="31">EDIT</li>
                        <li data-value="32">DELETE</li>
                            </ul>
                        </li>
                        <li data-value="5">FLOOR
                          <ul>  <li data-value="33">ADD</li>
                        <li data-value="31">EDIT</li>
                        <li data-value="32">DELETE</li>
                            </ul>
                        </li>
                        <li data-value="6">ROOM
                          <ul>  <li data-value="33">ADD</li>
                        <li data-value="31">EDIT</li>
                        <li data-value="32">DELETE</li>
                            </ul>
                        </li>
                        <li data-value="7">ROOMTYPE
                          <ul>  <li data-value="33">ADD</li>
                        <li data-value="31">EDIT</li>
                        <li data-value="32">DELETE</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li data-value="8"><label class="label label-primary">RESERVATIONS</label>
                    <ul>
                        <li data-value="36">BOOKING</li>
                        <li data-value="37">BOOKEDROOMS</li>
                        <li data-value="38">CHECKIN</li>
                        <li data-value="39">CHECKOUT</li>
                    </ul>
                </li>
                <li data-value="10"><label class="label label-primary">UNIT</label>
                    <ul> 
                               <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                    </ul>
                </li>
                 <li data-value="11"><label class="label label-primary">INGREDIENTS</label>
                    <ul>
                          <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                    </ul>
                </li>
                   
                 <li><label class="label label-primary">SERVICES</label>
                    <ul> 
                        <li data-value="12">CHECK-OUT
                            <ul>
                                <li data-value="31">ENABLE/DISABLE</li> 
                            </ul>
                        </li>
                        <li data-value="13">PARKING
                          <ul> <li data-value="33">ADD</li>  
                            </ul>
                        </li>
                        <li data-value="16">COFFEESHOP
                          <ul>  
                                <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                            </ul>
                        </li>
                        <li data-value="17">RESTAURANT
                          <ul>  <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                            </ul>
                        </li>
                        <li  data-value="15">LAUNDRY
                          <ul>  <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                            </ul>
                        </li>
                         <li   data-value="18">CARRENTAL
                          <ul>  <li data-value="31">EDIT</li>
                                <li data-value="32">DELETE</li>
                                <li data-value="33">ADD</li>
                            </ul>
                        </li>
                         <li  data-value="19">RECEPTION
                          <ul> <!-- <li data-value="">EDIT</li>
                                <li data-value="">DELETE</li>
                                <li data-value="">ADD</li> -->
                            </ul>
                        </li>
                            <li data-value="14">HOUSEKEEPING
                          <ul> <li data-value="31">CHANGE ROOM STATUS</li>
                                
                            </ul>
                        </li>
                      
                        </ul>
                        </li>
                    <li  data-value="20"><label class="label label-primary">USER MANAGEMENT</label>
                    <ul>
                    <li data-value="33">Add USER</li> 
                      <li data-value="35">CHANGE PASSWORD</li>
                      <li data-value="32">DELETE USER</li> 
                    </ul>
                </li>
                 <li   data-value="21"><label class="label label-primary">PLAYER</label>
                    <ul>
                      <li data-value="34">ASSIGN ROOM</li>
                    </ul>
                </li>
                  <li data-value="22"><label class="label label-primary">ORDER</label>
                    <ul>
                    <li data-value="28">ACCEPT ORDER</li>
                     <li data-value="29">READY FOR DELIVERY</li>
                     <li data-value="30">DELIVERD</li>
                    </ul>
                </li> 
                 <li data-value="25"><label class="label label-primary">COFFEESHOPSCREEN</label>
                    <ul>
                    <li data-value="28">ACCEPT ORDER</li>
                     <li data-value="29">READY FOR DELIVERY</li>
                     <li data-value="30">DELIVERD</li>
                    </ul>
                </li> 
                 <li data-value="26"><label class="label label-primary">RESTAURANTSCREEN</label>
                    <ul>
                    <li data-value="28">ACCEPT ORDER</li>
                     <li data-value="29">READY FOR DELIVERY</li>
                     <li data-value="30">DELIVERD</li>
                    </ul>
                </li>  
                 <li data-value="40"><label class="label label-primary">PARKINGSCREEN</label>
                    <ul>
                     <!-- <li data-value="28">ACCEPT ORDER</li>
                     <li data-value="29">READY FOR DELIVERY</li>
                     <li data-value="30">DELIVERD</li> -->
                    </ul>
                </li> 
                <li data-value="27"><label class="label label-primary">LAUNDRYSCREEN</label>
                    <ul>
                   <li data-value="28">ACCEPT ORDER</li>
                     <li data-value="29">READY FOR DELIVERY</li>
                     <li data-value="30">DELIVERD</li>
                    </ul>
                </li>
                 <li data-value="41"><label class="label label-primary">HOUSEKEEPINGSCREEN</label>
                    <ul>
                   <li data-value="28">ACCEPT ORDER</li>
                    </ul>
                </li>
                  <li data-value="48"><label class="label label-primary">RECEPTIONSCREEN</label>
                    <ul>
                   <li data-value="28">ACCEPT ORDER</li>
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
