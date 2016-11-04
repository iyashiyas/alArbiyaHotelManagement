<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>SHMS-ingredientTab</title>
</head>
<body>

	<div class="col-lg-3">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<!-- <h5>
					Categories - <a data-toggle="modal" href="#addNewCategory-modal">New Category</a>
				</h5> -->

			</div>
			<div class="ibox-content ">
				<ul class="folder-list m-b-md nav metismenu" style="padding: 0">
					<li><a
						href="${pageContext.request.contextPath}/ingredient?categoryCode=SAUCE">
							<span class="label label-success">1</span> sauce
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ingredient?categoryCode=FLOUR"><span
							class="label label-success">2</span> Flourý </a></li>

				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="addNewCategory-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">Add New Category</div>
				<div class="modal-body">

					<%--  <jsp:include page="../ingredient/addIngredientCategory.jsp"></jsp:include> --%>


				</div>
			</div>
		</div>
	</div>

</body>
</html>