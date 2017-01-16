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
 
 <form:form class="form-horizontal" action="${pageContext.request.contextPath}/role/addRole" modelAttribute="newRole" method="post">
    		<div class="col-sm-12">
		 <div class="col-sm-4">
		 <div class="form-group" >
			<label class="col-sm-2 control-label"><spring:message code="label.Users"></spring:message></label>
			<div class="col-sm-10"> 
				<select  class="form-control m-b"  name="" >
					<c:forEach items="${users}" var="users">
			    <option value="${users.id}">${users.username}</option>
		       </c:forEach>
				</select>
			</div>
		</div> 
		</div>
		<%--  <div class="col-sm-4">
		 	<div class="form-group" >
			<label class="col-sm-2 control-label"><spring:message code="label.SelectRole"></spring:message></label>
			<div class="col-sm-10"> 
				<select id="roleGroup" class="form-control m-b"  name="" >
				 <c:forEach items="${roles}" var="roles">
			    <option value="${roles.role}">${roles.role}</option> 
				</c:forEach>
				</select>
			</div>
			</div>
		</div>  --%>
		</div>  
			<div class="ibox-content">
		<%-- <div id="COFFEESHOP" style="display: none;" class="services"> 
		  <jsp:include page="../user/coffeeShopRole.jsp"></jsp:include>
		  </div>
						 <div  id="PLAYER" style="display: none;" class="services">
						 <jsp:include page="../user/playerRole.jsp"></jsp:include>
						 </div>
						  <div id="LANGUAGES" style="display: none;" class="services">
						 <jsp:include page="../user/languageRole.jsp"></jsp:include>
						 </div>
						   <div  id="ORDER" style="display: none;" class="services">
						 <jsp:include page="../user/orderRole.jsp"></jsp:include>
						 </div>
						  <div  id="HOUSEKEEPING" style="display: none;" class="services">
						 <jsp:include page="../user/houseKeepingRole.jsp"></jsp:include>
						 </div>
						 <div  id="RESERVATION" style="display: none;" class="services">
						 <jsp:include page="../user/reservationRole.jsp"></jsp:include>
						 </div>
						 <div  id="CHECKOUT" style="display: none;" class="services">
						 <jsp:include page="../user/checkoutRole.jsp"></jsp:include>
						 </div>
						 <div  id="PARKING" style="display: none;" class="services">
						 <jsp:include page="../user/parkingRole.jsp"></jsp:include>
						 </div>
						  <div  id="LAUNDRY" style="display: none;" class="services">
						 <jsp:include page="../user/laundryRole.jsp"></jsp:include>
						 </div>
						 <div  id="PROFILE" style="display: none;" class="services">
						 <jsp:include page="../user/profileRole.jsp"></jsp:include>
						 </div>
						  <div  id="USERMANAGEMENT" style="display: none;" class="services">
						 <jsp:include page="../user/userManagementRole.jsp"></jsp:include>
						 </div>
						   <div  id="RESTAURANT" style="display: none;" class="services">
						 <jsp:include page="../user/restaurantRole.jsp"></jsp:include>
						 </div>
						 <div  id="COFFEESHOP" style="display: none;" class="services">
						 <jsp:include page="../user/coffeeShopRole.jsp"></jsp:include>
						 </div>
						 </div> --%>
						
					
 </div>
						   
 <div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit">
					<spring:message code="label.CreateNewRole" />
				</button>
			</div>
		</div>
	</form:form>
 
	  <script type="text/javascript">
	   $(function() { 
        $('#roleGroup').change(function(){
            $('.services').hide();
            $('#' + $(this).val()).show();
        });
    });
	 </script>
	 
</body>
</html>
