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

	<!-- Include Page Header-->
    
    <div id="wrapper">
   <jsp:include page="../header/header.jsp"></jsp:include>
	
	<div id="page-wrapper" class="gray-bg">
   
 
<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2><spring:message code="label.UserManagement" /></h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/user"><spring:message code="label.UserManagement" /></a></li>
				<li class="active"><strong><spring:message code="label.Users" /></strong></li>
			</ol>
		</div> 
	</div>
	
	
 
	   <div class="wrapper wrapper-content">
        <div class="row"> 
	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="col-lg-12 animated fadeInRight">
				<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5><spring:message code="label.AddNewUser" /></h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
				<jsp:include page="../user/addRole.jsp"></jsp:include>
			</div>
		</div>
	  
		  
	   <div class="col-lg-12">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Roles</h5>
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
                    <th >User Id</th>
                       <!--  <th>Role Name</th> -->
                          <th>Role </th>
                          <th>Edit</th>
                         
                    </tr>
                    </thead>
                    
					<tbody>
  <c:forEach items="${roles}" var="roles">
						<tr class="read">
                            <td class="check-mail">${roles.id} </td>
							<%-- <td class="mail-ontact ">${roles.roleName}  </td> --%>
							<td class="mail-subject"> ${roles.role}  </td>
						   <td class=""><i class="fa fa-pencil"><a class="disable">Edit</a></i></td>
							  
						</tr>
						</c:forEach>
 

					</tbody>
				</table> 
 </div>
			</div>
		</div>
		
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		
			<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">Confirm Delete</div>
				<div class="modal-body">Are you sure you want to delete this
					item</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a href="#" id="submit" class="btn btn-success success">Delete</a>
				</div>
			</div>
		</div>
	</div>
	
	
		<div class="modal fade" id="confirm-Edit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			  <jsp:include page="../user/editUser.jsp"></jsp:include>
			</div>
		</div>
	</div>
 
 


</body>
</html>