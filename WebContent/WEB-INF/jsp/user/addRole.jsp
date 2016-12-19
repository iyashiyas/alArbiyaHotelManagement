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
    		<div class="col-sm-6">
		<div class="form-group">
			<label class="col-sm-4 control-label"><spring:message
					code="label.role.roleName" /></label>

			<%-- <div class="col-sm-8">
				<form:input type="text" path="roleName" placeholder="Role Name" name="roleName"
					class="form-control" />
			</div> --%>
		</div> 
		</div>
		   
	 <table class="table table-bordered table-hover  ">
				       
                    <thead>
                    <tr>
                    <th class="check-mail"><spring:message code="label.select"></spring:message></th>
                    <th><spring:message code="label.ItemName"></spring:message></th>
                    <th class="disable"><spring:message code="label.Read"></spring:message></th>
                    <th class="disabled"><spring:message code="label.Write"></spring:message></th>
                    </tr>
                    </thead>
                    
					<tbody>
 
						<tr>
						<td><form:radiobutton name="role" value="LANGUAGES" path="role"/></td>
						 <td><label><spring:message code="label.Languages" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
						<tr>
						<td><form:radiobutton  value="PROFILE" path="role" name="role"  /></td>
						 <td><label><spring:message code="label.Profile" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
						<tr>
						<td><form:radiobutton path="role" name="role" value="RESERVATION" /></td>
						 <td><label><spring:message code="label.Reservation" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
						<tr>
						<td><form:radiobutton path="role" name="role" value="UNIT" /></td>
						 <td><label><spring:message code="label.Unit" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
							<tr>
						<td><form:radiobutton path="role" name="role" value="INGREDIENTS" /></td>
						 <td><label><spring:message code="label.Ingredients" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
							<tr>
						<td><form:radiobutton path="role" name="role" value="SERVICE" /></td>
						 <td><label><spring:message code="label.Service" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
							<tr>
						<td><form:radiobutton path="role" name="role" value="USERMANAGEMENT"  /></td>
						 <td><label><spring:message code="label.UserManagement" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
							<tr>
						<td><form:radiobutton path="role" name="role" value="PLAYER" /></td>
						 <td><label><spring:message code="label.Player" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
							<tr>
						<td><form:radiobutton  path="role" name="role" value="Order" /></td>
						 <td><label><spring:message code="label.Order" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
						
						</tbody>
						</table>
						 
 <div class="form-group">
			<div class="col-lg-offset-2 col-lg-8">
				<button class="btn btn-primary" type="submit">
					<spring:message code="label.CreateNewRole" />
				</button>
			</div>
		</div>
	</form:form>
 
	 
</body>
</html>
