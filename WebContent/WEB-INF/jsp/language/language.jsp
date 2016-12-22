<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">
<link id="" href="<c:url value="/resources/css/bootstrap-notify.css"/>"
	rel="stylesheet">


<title>SHMS-Language</title>

</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">
			<!-- Page Contents -->
			<!-- Page Heading -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>
						<spring:message code="label.Languages" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/SHMS"><spring:message
									code="label.Home" /></a></li>
						<li class="active"><strong><spring:message
									code="label.Languages" /></strong></li>
					</ol>
				</div>

			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>
									<spring:message
										code="label.LanguagesTableHelpyouToControlServiceScreensLanguages" />
								</h5>
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
												<th><spring:message code="label.LanguageID" /></th>
												<th><spring:message code="label.LanguageName" /></th>
												<th><spring:message code="label.LanguageCountry" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Action" /></th>
											</tr>
										</thead>
										<tbody>

											<!-- Fetching Language Table-->
											<c:forEach items="${languages}" var="language">
												<tr class="gradeX">
													<td><c:out value="${language.id}" /></td>
													<td><c:out value="${language.languageName}" /></td>

													<td><c:out value="${language.country.countryName}" /></td>

													<td class="center"><label
														class=" label ${language.status == 'ACTIVE' ? 'label-primary' : 'label-danger'}">
															<spring:message code='label.active' var="active" />
															<spring:message code='label.inactive' var="inactive" />
															${language.status == 'ACTIVE' ? active : inactive}
													</label></td>
													<td class="center">
														<form class="editLanguageForm"
															action="${pageContext.request.contextPath}/language/editLanguage"
															method="POST" id="language_edit">
															<input type="hidden" name="${_csrf.parameterName}" id="secuirtyId" value="${_csrf.token}"/>
															<input type="hidden" name="id" id="id"
																value="${language.id}" /> <input type="hidden"
																name="languageName" id="languagename"
																value="${language.languageName}" /> <input type="hidden"
																name="country" id="country" value="${language.country}" />
															<input type="hidden" name="status" id="status"
																value="${language.status == 'ACTIVE' ? 'INACTIVE' : 'ACTIVE'}">
															<spring:message code='label.Disable' var="Disable" />
															 <spring:message code='label.Enable' var="Enable" />
															<button type="button" name="btn" value=" id="submitBtn1" data-toggle="modal"
																data-target="#confirm-submit"
																class="btn btn-default submitBtn">
																${language.status == 'ACTIVE' ? Disable : Enable}</button>
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
			</div>


			<!-- Modal Popup Box -->

			<div class="modal fade" id="confirm-submit" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<spring:message code="label.ConfirmSubmit" />
						</div>
						<div class="modal-body">
							<spring:message code="label.Areyousureyouwanttodisable?" />

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<spring:message code="label.Cancel" />
							</button>
							<a id="submit" class="btn btn-success success"><spring:message
									code="label.Submit" /></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>


	<div class='notifications top-right'></div>

	<!-- Page-Level Scripts -->

	<script type='text/javascript'
		src="<c:url value="/resources/js/modal_language.js" />"></script>
	<script type='text/javascript'
		src="<c:url value="/resources/js/bootstrap-notify.js" />"></script>


</body>
</html>