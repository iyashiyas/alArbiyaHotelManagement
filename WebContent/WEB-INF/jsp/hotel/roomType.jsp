<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>SHMS-roomType</title>

</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2><spring:message code="label.RoomType" /></h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/">Profile</a></li>
						<li class="active"><strong>Room</strong></li>
					</ol>
				</div>
			  </div>
			<div class="wrapper wrapper-content">
				<div class="row">
				 
					<div class="col-lg-10 animated fadeInRight">

						<jsp:include page="../hotel/addRoomType.jsp"></jsp:include>

       <div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5><spring:message code="label.RoomtypeOverView" /></h5>
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
												<th class="check-mail"><spring:message code="label.ID" /></th>
												<th><spring:message code="label.RoomType" /></th>
												<th><spring:message code="label.TypeCode" /></th>
												<!-- <th>Bed Type</th> -->
												<th><spring:message code="label.TypeDescription" /></th>
										  		 <th><spring:message code="label.Status" /></th>
												<th><spring:message code="label.Edit" /></th>
											    </tr>
										</thead>

										<tbody>
											<c:forEach items="${roomTypes}" var="roomType">
											<tr class="read">
											 <td class="roomTypeId"><c:out value="${roomType.id}" /></td>
										     <td class="roomType"><c:out value="${roomType.roomType}" /></td>
										     <td class="roomTypeCode"><c:out value="${roomType.roomTypeCode}" /></td>
											<%--   <td class="roomBedType"><c:out value="${roomType.roomTypeBedType}" /></td> --%>
										     <td class="roomTypeDescription"><c:out value="${roomType.roomTypeDescription}" /></td>
											   <td class="roomTypeStatus"><c:out value="${roomType.roomTypeStatus}"/></td>
											 
											<td class="edit-roomType"><i class="fa fa-pencil"><a >Edit</a></i></td>
							                  </tr>
											 </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- <div class="modal fade" id="confirm-submit" tabindex="-1"
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
						</div> -->

						<div class="modal fade" id="editRoomType" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									 <jsp:include page="../hotel/editRoomType.jsp"></jsp:include>
  
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	 <script src="<c:url value="/resources/js/hotel/roomType.js"/>"></script>
	 
</body>
</html>