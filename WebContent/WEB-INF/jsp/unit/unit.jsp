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
<style type="text/css">
.entry:not(:first-of-type){
	margin-top: 10px;
}
</style>
<script src="<c:url value="/resources/js/jquery-1.11.0.min.js"/>"></script>
<script src="<c:url value="/resources/js/unit/unit.js"/>"></script>
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
				<ul class="nav  navbar-right">

					<li><button class="btn btn-primary">
							<i class="fa fa-plus"></i> Add New Categories
						</button></li>
				</ul>
			</div>
			<!-- Page Contents -->
			<!-- Page Heading -->


			<div class="wrapper wrapper-content">
				<div class="row">
					<jsp:include page="../unit/unitTab.jsp"></jsp:include>

					<div class="col-lg-8 animated fadeInRight">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Add New Unit Items</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<form:form id="addUnitForm" class="form-horizontal"
									action="${pageContext.request.contextPath}/unit/addUnit"
									method="POST" modelAttribute="newUnit">
									<p>Add Unit items Here</p>

									<div class="form-group">
										<label class="col-sm-2 control-label">Unit Category</label>

										<div class="col-sm-10">
											<form:select class="form-control m-b" name="unitCategory"
												path="">
												<form:option value="GRL">General</form:option>
												<form:option value="LNT">Length</form:option>
												<form:option value="VAC">Volume and Capacity</form:option>
												<form:option value="WGT">Weight</form:option>
											</form:select>
										</div>
									</div>



									<div class="form-group">
										<label class="col-sm-2 control-label">Unit Name</label>

										<div class="col-sm-10">
											<form:input type="text" placeholder="unit Name By English"
												name="unitName" path="unitName" class="form-control"
												value="" />
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label">Other Languages</label>
										<div class="col-sm-10">
											<div class="controls">
												<div class="entry input-group ">
													<form:select class="form-control m-b " id="drp"
														path="unitLanguages[0].id" style="width:30%;">
														<form:options items="${languages}" itemValue="id"
															itemLabel="languageName"></form:options>
													</form:select>
													<form:input class="form-control" type="text"
														name="unitLanguages[0].unitLanguageName"
														path="unitLanguages[0].unitLanguageName"
														placeholder="Enter Name"
														style="width:40%;margin-left: 10px;" />
													<span class="input-group-btn">
														<button class="btn btn-primary btn-add" type="button">
															<span class="glyphicon glyphicon-plus"></span>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label"> Measurement </label>

										<div class="col-sm-10">
											<form:input type="text" placeholder="Measurement"
												name="measurementUnit" path="measurementUnit"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label"> Description</label>

										<div class="col-sm-10">
											<form:input type="text" placeholder="Description"
												name="unitDescription" path="unitDescription"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Status </label>

										<div class="col-sm-10">
											<form:checkbox id="unitStatus" name="unitStatus"
												path="unitStatus" value="ENABLE" checked="checked" />
											Enable
										</div>
									</div>

									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-8">
											<form:button class="btn btn-primary" type="submit">Create new
								unit</form:button>
										</div>
									</div>

								</form:form>
							</div>
						</div>

						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Unit Items</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div class="mail-box-header">
									<!-- <h2>Category Name</h2> -->
									<!-- <div class="mail-tools tooltip-demo m-t-md">
										<div class="btn-group pull-right">
											<button class="btn btn-white btn-sm">
												<i class="fa fa-arrow-left"></i>
											</button>
											<button class="btn btn-white btn-sm">
												<i class="fa fa-arrow-right"></i>
											</button>
										</div>

									</div> -->
								</div>
								<div class="mail-box">
									<table class="table table-hover table-mail">

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
												<tr class="read">
													<td class="id">${unit.id}</td>
													<td class="unitName">${unit.unitName}</td>
													<td class="unitDescription">${unit.unitDescription}</td>
													<td class="unitCategory">${unit.unitCategory}</td>
													<td class="unitStatus">${unit.unitStatus}</td>
													<td class="measurementUnit hide">${unit.measurementUnit}</td>
													
													<input type="hidden" id="unitLanguageSize" value="${ unit.unitLanguages.size()}"/>
													<c:forEach items="${unit.unitLanguages }" var="language" varStatus="loop">
														<td class="unitLanguageId${loop.index} hide" value="${language.language.id }"></td>
														<td class="unitLanguageName${loop.index} hide" value="${language.unitLanguageName }"></td>
													</c:forEach>
													<td class="unitEdit"><i class="fa fa-pencil"><a  data-backdrop="static" data-keyboard="false" >Edit</a></i></td>
													<%-- <td class="text-right mail-date"><input type="button"
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
						<div class="modal fade" id="disableUnitFormWrapper" tabindex="-1"
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
						</div>


						<div class="modal fade" data-backdrop="static" data-keyboard="false"  id="confirm-Edit" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<form:form class="form-horizontal" id="confirm-EditForm"
										modelAttribute="newUnit" method="POST" action="unit/editUnit">
										<div class="modal-header">Edit Unit</div>
										<div class="modal-body">


											<p>Update Unit items Here</p>

											<div class="form-group">
												<label class="col-sm-2 control-label">Unit Category</label>
												<input type="hidden" name="id" id="id" value="">
												<div class="col-sm-10">
													<form:select class="form-control m-b" path="unitCategory">
														<form:option value="GRL">General</form:option>
														<form:option value="LNT">Length</form:option>
														<form:option value="VAC">Volume and Capacity</form:option>
														<form:option value="WGT">Weight</form:option>
													</form:select>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Unit Name</label>

												<div class="col-sm-10">
													<form:input type="text" path="unitName" id="unitName"
														class="form-control" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Other
													Languages</label>
												<div class="col-sm-10">
													<div class="editControls">
														<div class="editEntry input-group ">
															<form:select class="form-control m-b " id="drp"
																path="unitLanguages[0].id" name="unitLanguages[0].id" style="width:30%;">
																<form:options items="${languages }" itemValue="id"
																	itemLabel="languageName"></form:options>
															</form:select>
															<form:input class="form-control" type="text"
																name="unitLanguages[0].unitLanguageName"
																path="unitLanguages[0].unitLanguageName"
																placeholder="Enter Name"
																style="width:40%;margin-left: 10px;" />
															<span class="input-group-btn">
																<button class="btn btn-primary  btn-add" type="button">
																	<span class="glyphicon glyphicon-plus"></span>
																</button>
															</span>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label"> Measurement </label>

												<div class="col-sm-10">
													<form:input type="text" path="measurementUnit"
														id="measurementUnit" class="form-control"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label"> Description</label>

												<div class="col-sm-10">
													<form:input type="text" path="unitDescription" id="unitDescription"
														class="form-control"/>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">Status </label>

												<div class="col-sm-10">
													<form:checkbox path="unitStatus" id="unitStatus" value=""/> <label
														for="checkbox1"> Enable </label>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default">Cancel</button>
											<button type="submit" class="btn btn-success success">Update</button>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<c:url value="/resources/js/dynamic_TextFields.js"/>"></script>  
</body>
</html>