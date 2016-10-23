<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>S
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">


<title>SHMS-Language</title>

</head>
<body>

	<!-- Include Page Header-->

	<jsp:include page="../header/header.jsp"></jsp:include>

	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>Languages</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/jsp/home/home.jsp">Home</a></li>
				<li class="active"><strong>Language</strong></li>
			</ol>
		</div>
		<div class="successMessage" style="display:none">
			Language updated successfully
		</div>
	</div>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Languages Table Help you To Control Service Screens
							Languages</h5>
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
										<th>Language ID</th>
										<th>Language Name</th>
										<th>Language Country</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>

									<!-- Fetching Language Table-->
									<c:forEach items="${languages}" var="language">
										<tr class="gradeX">
											<td><c:out value="${language.id}" /></td>
											<td><c:out value="${language.languageName}" /></td>

											<td><c:out value="${language.country.countryName}" /></td>

											<td class="center">	
												<label class=" label label-primary">
													<c:out value="${language.status}" />
								 				</label>
									 	    </td>
											<td class="center">
												<form class="editLanguageForm"
													action="${pageContext.request.contextPath}/language/editLanguage"
													method="POST" id="language_edit">
													<input type="hidden" name="id" id="id" value="${language.id}"/> 
													<input type="hidden" name="languageName" id="languagename" value="${language.languageName}"/>
													<input type="hidden" name="country" id="country" value="${language.country}"/> 
													<input type="hidden" name="status" id="status" value="${language.status == 'ACTIVE' ? 'INACTIVE' : 'ACTIVE'}">
													<input type="button" name="btn" value="${language.status == 'ACTIVE' ? 'DISABLE' : 'ENABLE'}" id="submitBtn" data-toggle="modal"
														data-target="#confirm-submit" class="btn btn-default" />
												</form>

											</td>
										</tr>
									</c:forEach>

									<!-- Demo -->
									<!--End Action -->
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>


		<!-- Modal Popup Box -->
  
		<div class="modal fade" id="confirm-submit" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">Confirm Submit</div>
					<div class="modal-body">
						Are you sure you want to submit?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
						<a href="#" id="submit" class="btn btn-success success">Submit</a>
					</div>
				</div>
			</div>
		</div>

 
 
 
		<!-- Page-Level Scripts -->
		<script src="<c:url value="/resources/js/datatablecustom.js" />"
			type="text/javascript">
			
		</script>
	 <script type='text/javascript'
		src="<c:url value="/resources/js/modal_language.js" />">
		
	</script>  

 
</body>
</html>