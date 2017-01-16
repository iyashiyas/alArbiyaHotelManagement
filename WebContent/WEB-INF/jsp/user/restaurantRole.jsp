<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
						<td><form:radiobutton name="role" value="RESTAURANT" path="role"/></td>
						 <td><label><spring:message code="label.Restaurant" /></label></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						 <td><input type="checkbox" disabled="disabled"></td>
						</tr>
						 
						</tbody>
						</table>
						</body>
						</html>