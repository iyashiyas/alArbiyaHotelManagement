<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
 
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
	
	<div id="page-wrapper" class="gray-bg">
		<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>Building</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/hotel?profileCode=BUILDING">Profile</a></li>
				<li class="active"><strong>Building</strong></li>
			</ol>
		</div>
	</div>
	 
	 <div class="wrapper wrapper-content">
        <div class="row">
        	<div class="col-lg-10 animated fadeInRight">
        		<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Add New Building's Details </h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
	               		</div>
					</div>
			  		<jsp:include page="../hotel/addBuilding.jsp"></jsp:include>
		  		</div>
	   
	 			<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Building Details</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
						</div>
					</div>
			 
					<div class="ibox-content">
			 			<div class="table-responsive">
			 				<table class="table table-striped table-bordered table-hover dataTables-example">
				  				<thead>
				                    <tr>
				                     <th class="check-mail">  ID</th>
				                     <th>Building Name</th>
				                     <th> Code</th>
				                     <th> Branch</th>
				                     <th> Floor</th>
				                     <th> Phone Number</th>
				                     <th>Action</th>
				                    </tr>
                    			</thead>
								<tbody>
									<c:forEach items="${buildings}" var="building">
										<tr class="read">
			                            	<td class="id"><c:out value="${building.id}" /></td>
											<td class="buildingName"> <c:out value="${building.buildingName}" /></td>
											<td class="buildingCode"><c:out value="${building.buildingCode}" /></td>
											<td class="branchName"><c:out value="${building.branch.branchName}" /></td>
											<td class="buildingTotalFloor"> ${building.buildingTotalFloor}</td>
											<td class="buildingPhoneNumber"> ${building.buildingPhoneNumber}</td>
											<td class="buildingEmail hide"> ${building.buildingEmail}</td>
											<td class="buildingDescription hide"> ${building.buildingDescription}</td>
											<td class="buildingStatus hide"> ${building.buildingStatus}</td>
											<td class="buildingEdit"><i class="fa fa-pencil"><a  data-toggle="modal" data-target="#edit-Building">Edit</a></i></td>
										</tr>
									</c:forEach>
								</tbody>
							</table> 
 						</div>
					</div>
				</div>
				<div class="modal fade" id="edit-Building" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
						   <div class="modal-header">Edit Building Details</div>
							 <jsp:include page="../hotel/editBuilding.jsp"></jsp:include>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
<script src="<c:url value="/resources/js/hotel/building.js"/>"></script>
</html>