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
<title>SHMS-Ingredient</title>

</head>
<body>
	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.Ingredient" /></h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message code="label.Home" /></a></li>
						<li class="active"><strong><spring:message code="label.Ingredient" /></strong></li>
					</ol>
				</div>
				 
			</div>
			<div class="wrapper wrapper-content">
				<div class="row"> 
					<jsp:include page="../ingredient/ingredientTab.jsp"></jsp:include> 
					<div class="col-lg-8 animated fadeInRight"> 
					<sec:authorize access="hasAnyRole('ROLE_INGREDIENT_ADD','ROLE_ADMIN')">
						<jsp:include page="../ingredient/addIngredient.jsp"></jsp:include> </sec:authorize>
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.IngredientItems" /></h5>
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
												<th class="check-mail"><spring:message code="label.IngredientID" /></th>
												<th><spring:message code="label.IngredientName" /></th>
												<th><spring:message code="label.Description" /></th>
												 <th><spring:message code="label.Category" /></th>
												<th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Action" /></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${ingredientWithCategory}" var="ingredient">
												<tr class="read">
													<td class="id">${ingredient.id}</td>
													<td class="ingredientName">${ingredient.ingredientName}</td>
													<td class="ingredientDescription">${ingredient.ingredientDescription}</td>
													<td class="ingredientCategory">${ingredient.ingredientCategories.ingredientCategoryName}</td>
                                                    <td class="ingredientStatus">${ingredient.ingredientStatus}</td>
													<td class="hide"><input type="hidden" id="ingredientLanguageSize" class="ingredientLanguageSize" value="${ingredient.ingredientLanguages.size()}"/>
													</td>
													<c:forEach items="${ingredient.ingredientLanguages }" var="language" varStatus="loop">
														<td class="ingredientLanguageLanguageId${loop.index} hide" value="${language.language.id }"></td>
														<td class="ingredientLanguageId${loop.index} hide" value="${language.id }"></td>
														<td class="ingredientLanguageName${loop.index} hide" value="${language.ingredientLanguageName }"></td>
													</c:forEach>
													<td class="ingredientEdit"><sec:authorize access="hasAnyRole('ROLE_INGREDIENT_EDIT','ROLE_ADMIN')"><i class="fa fa-pencil"><a class=""
															data-toggle="modal"  ><spring:message code="label.Edit" /></a></i></sec:authorize></td>
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

						<div class="modal fade" id="confirm-Edit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header"><spring:message code="label.EditIngredient" /></div>
									<div class="modal-body">

										<jsp:include page="../ingredient/editIngredient.jsp"></jsp:include>


									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript"
		src="<c:url value="/resources/js/ingredient/ingredientDynamicTextFields.js"/>"></script>  
	
	<script src="<c:url value="/resources/js/ingredient/ingredient.js"/>"></script>
 
</body>
</html>