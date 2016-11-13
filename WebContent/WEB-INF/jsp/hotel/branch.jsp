<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Branch</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/hotel/showBranch">Profile</a></li>
						<li class="active"><strong>Branch</strong></li>
					</ol>
				</div>

			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-lg-10 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Add New Branch Details</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<jsp:include page="../hotel/addBranch.jsp"></jsp:include>
						</div>

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Branch Details</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>

							<div class="ibox-content">
								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example">
										<thead>
											<tr>

												<th class="check-mail">Branch ID</th>
												<th>Branch Name</th>
												<th>Branch Code</th>
												<th>Phone Number</th>
												<th>Email</th>
												<th>Address</th>
												<th>Description</th>
												<th>Status</th>
												<th>Edit</th>

											</tr>
										</thead>

										<tbody>
											<c:forEach items="${branches}" var="branch">

												<tr class="gradeX">
													<td class="center id"><c:out value="${branch.id}" /></td>
													<td class="center branchName"><c:out
															value="${branch.branchName}" /></td>
													<td class="center branchCode"><c:out
															value="${branch.branchCode}" /></td>
													<td class="center branchPhoneNumber"><c:out
															value="${branch.branchPhoneNumber}" /></td>
													<td class="center branchEmail"><c:out
															value="${branch.branchEmail}" /></td>
													<td class="center branchAddress"><c:out
															value="${branch.branchAddress}" /></td>
													<td class="center branchDescription"><c:out
															value="${branch.branchDescription}" /></td>
													<td class="center branchStatus"><c:out
															value="${branch.branchStatus}" /></td>		
													<td class="branchEdit"><i class="fa fa-pencil"><a>Edit</a></i></td>
												</tr>

											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="modal fade" id="confirm-submit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">Confirm Delete</div>
									<div class="modal-body">Are you sure you want to delete
										this item</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cancel</button>
										<a id="submit" class="btn btn-success success">Delete</a>
									</div>
								</div>
							</div>
						</div>

						<div class="modal fade" id="EditBranch" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<form:form class="form-horizontal" id="editBranch"
										action="${pageContext.request.contextPath}/hotel/editBranch"
										method="POST" modelAttribute="newBranch">
										<jsp:include page="../hotel/editBranch.jsp"></jsp:include>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/hotel/branch.js"/>"></script>

</body>
</html>