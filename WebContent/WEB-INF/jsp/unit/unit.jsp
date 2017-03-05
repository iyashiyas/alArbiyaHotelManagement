<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
					<h2><spring:message code="label.Unit" /></h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message code="label.Home" /></a></li>
						<li class="active"><strong><spring:message code="label.Unit" /></strong></li>
					</ol>
				</div>
				 
			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../unit/unitTab.jsp"></jsp:include>

					<div class="col-lg-8 animated fadeInRight">
				 <sec:authorize access="hasAnyRole('ROLE_UNIT_ADD','ROLE_ADMIN')">
							 <jsp:include page="../unit/addUnit.jsp"></jsp:include>
					  </sec:authorize>
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.UnitItems" /></h5>
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
												<th class="check-mail"><spring:message code="label.UnitID" /></th>
												<th><spring:message code="label.UnitName" /></th>
												<th><spring:message code="label.Description" /></th>
												<th><spring:message code="label.Category" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Action" /></th>
											</tr>
										</thead> 
										<tbody> 
											<c:forEach items="${unitWithCategory}" var="unit">
												  <tr class="read" >
													<td class="id">${unit.id}</td>
													<td class="unitName">${unit.unitName}</td>
													<td class="unitDescription">${unit.unitDescription}</td>
													<td class="unitCategory">${unit.unitCategories.unitCategoryName}</td>
													<td class="unitStatus">${unit.unitStatus}</td>
													<td class="measurementUnit hide">${unit.measurementUnit}</td>
													
													 <td class="hide"><input type="hidden" id="unitLanguageSize" class="unitLanguageSize" value="${unit.unitLanguages.size()}"/>
													</td>
													<c:forEach items="${unit.unitLanguages }" var="language" varStatus="loop">
														<td class="unitLanguageLanguageId${loop.index} hide" value="${language.language.id }"></td>
														<td class="unitLanguageId${loop.index} hide" value="${language.id }"></td>
														<td class="unitLanguageName${loop.index} hide" value="${language.unitLanguageName }"></td>
													</c:forEach>
													
													<td class="unitEdit"><sec:authorize access="hasAnyRole('ROLE_UNIT_EDIT','ROLE_ADMIN')"><i class="fa fa-pencil"><a  ><spring:message code="label.Edit" /></a></i></sec:authorize></td>
												
												</tr>  
												
												 
												
											</c:forEach>
 
										</tbody> 
									</table>
								</div>
							</div>
						</div>
 
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
	<script type="text/javascript"
		src="<c:url value="/resources/js/unit/unitDynamicTextFields.js"/>"></script>  
		  </body>
</html>