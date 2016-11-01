<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<title>SHMS-Unit</title> 
<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet"> 
<style type="text/css">
.entry:not(:first-of-type){
	margin-top: 10px;
}
</style>
</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
 	<div id="page-wrapper" class="gray-bg">

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Unit</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li class="active"><strong>Unit</strong></li>
					</ol>
				</div>
				 
			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../unit/unitTab.jsp"></jsp:include>

					<div class="col-lg-8 animated fadeInRight">
				 
							 <jsp:include page="../unit/addUnit.jsp"></jsp:include>
					  
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Unit Items</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							  
								<div class="table-responsive unit-Details">
									<table class="table table-striped table-bordered table-hover dataTables-example">
						
										<thead>
											<tr>
												<th class="check-mail">Unit Id</th>
												<th>Unit Name</th>
												<th>Description</th>
												<th>Category</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>

										<tbody>

											<c:forEach items="${unitWithCategory}" var="unit">
												  <tr class="read" >
													<td class="id">${unit.id}</td>
													<td class="unitName">${unit.unitName}</td>
													<td class="unitDescription">${unit.unitDescription}</td>
													<td class="unitCategory">${unit.unitCategory}</td>
													<td class="unitStatus">${unit.unitStatus}</td>
													<td class="measurementUnit hide">${unit.measurementUnit}</td>
													
													 <td class="hide"><input type="hidden" id="unitLanguageSize" class="unitLanguageSize" value="${unit.unitLanguages.size()}"/>
													</td>
													<c:forEach items="${unit.unitLanguages }" var="language" varStatus="loop">
														<td class="unitLanguageLanguageId${loop.index} hide" value="${language.language.id }"></td>
														<td class="unitLanguageId${loop.index} hide" value="${language.id }"></td>
														<td class="unitLanguageName${loop.index} hide" value="${language.unitLanguageName }"></td>
													</c:forEach>
													
													<td class="unitEdit"><i class="fa fa-pencil"><a  >Edit</a></i></td>
												
												
												<%-- 	<td class="text-right mail-date"><input type="button"
														unitId="${unit.id}" name="btn"
														value="${unit.unitStatus == 'ENABLE' ? 'DISABLE' : 'ENABLE'}"
														class="disableUnitButton" /></td> --%>
											
											
												</tr>  
												
												 
												
											</c:forEach>
 
										</tbody> 
									</table>
								</div>
							</div>
						</div>
					<%-- 	<div class="modal fade" id="disableUnitFormWrapper" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">

								<form class="disableUnit hide"
									action="${pageContext.request.contextPath}/unit/disableUnit"
									method="POST" id="disableUnit">
									<input type="hidden" name="id" id="id" value="" /> <input
										type="hidden" name="status" id="status" value="" />
								</form>

								<div class="modal-content">
									<div class="modal-header">Confirm Disable</div>
									<div class="modal-body">Are you sure you want to disable
										this unit?</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Cancel</button>
										<button id="submit"
											class="btn btn-success success disableUnitFormButton">Diable</button>
									</div>
								</div>
							</div>
						</div> --%>
 
						<div class="modal fade"  id="EditUnit-Modal" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									
										 <jsp:include page="../unit/editUnit.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	 	
<script src="<c:url value="/resources/js/unit/unit.js"/>"></script>
 <%-- 
          <script src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>
	 	<!-- Page-Level Scripts -->
		<script src="<c:url value="/resources/js/datatablecustom.js" />"
			type="text/javascript">
			
		</script>
 --%>
	<script type="text/javascript"
		src="<c:url value="/resources/js/dynamic_TextFields.js"/>"></script>  
		  </body>
</html>