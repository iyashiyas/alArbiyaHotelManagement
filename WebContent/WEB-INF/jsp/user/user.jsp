<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Users</title>

</head>
<body>

	<!-- Include Page Header--> 
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">


			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>
						<spring:message code="label.UserManagement" />
					</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/userManagement/showUser"><spring:message
									code="label.UserManagement" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Users" /></strong></li>
					</ol>
				</div>
			</div>



			<div class="wrapper wrapper-content">
				<div class="row">


					<!-- Page Contents -->
					<!-- Page Heading -->
					<div class="col-lg-10 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>
									<spring:message code="label.AddNewUser" />
								</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							<sec:authorize access="hasAnyRole('ROLE_ADD','ROLE_ADMIN')">
								<jsp:include page="../user/addUser.jsp"></jsp:include>
							 </sec:authorize>
							</div>
						</div>

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Users</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">

								<div class="mail-box">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover dataTables-example">

											<thead>
												<tr>
													<th><spring:message code="label.UserId"></spring:message></th>
													<th><spring:message code="label.UserName" /></th>
								<%--  <th><spring:message code="label.role.roleName" /></th> --%>
													<th><spring:message code="label.ChangePassword" /></th>

												</tr>
											</thead>

											<tbody>
												<c:forEach items="${users}" var="users">
													<tr class="read">
														<td class="check-mail userId" id="userId">${users.id}</td>
														<td class="mail-ontact ">${users.username}</td> 
														<td class="changePassword"><sec:authorize access="hasAnyRole('ROLE_CHANGEPASSWORD','ROLE_ADMIN')"><i class="fa fa-pencil"><a href="#"  ><spring:message code="label.ChangePassword" /></a></i></sec:authorize></td>
                                                    </tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
							 
							<div class="modal fade" id="changePassword" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<jsp:include page="../user/changePassword.jsp"></jsp:include>
									</div>
								</div>
							</div> 
							 
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="<c:url value="/resources/js/treeview.js" />"></script>
	  <script src="<c:url value="/resources/js/logger.js" />"></script>
	 <script src="<c:url value="/resources/js/user/changePassword.js" />"></script>
	 <script>
            $('#treeview-checkbox-demo').treeview({
              
            });
            $('#btnddas').on('click', function(){ 
                $('#values').text(
                    $('#treeview-checkbox-demo').treeview('selectedValues')
                );
            }); 
        </script>
</body>
</html>