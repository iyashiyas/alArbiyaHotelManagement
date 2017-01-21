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


<link id=""
	href="<c:url value="/resources/css/dataTables/datatables.min.css"/>"
	rel="stylesheet">
	<link id="" href="<c:url value="/resources/css/select/select2.css"/>"
	rel="stylesheet">


<title>SHMS-Checked In Rooms</title>

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
						<spring:message code="label.OccupiedRooms" />
					</h2>
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/"><spring:message
									code="label.Reservation" /></a></li>
						<li class="active"><strong><spring:message
									code="label.OccupiedRooms" /></strong></li>
					</ol>
				</div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">

							<div class="ibox-content">

								<div class="table-responsive">
									<table
										class="table table-striped table-bordered table-hover dataTables-example">
										<thead>
											<tr>
												<th><spring:message code="label.ReferenceID" /></th>
												<th><spring:message code="label.NationalIDCard" /></th>
												<th><spring:message code="label.CheckedinTime" /></th>
												<th><spring:message code="label.checkOutDate" /></th>
												<th><spring:message code="label.RoomNumber" /></th>
												<th><spring:message code="label.MemberName" /></th>
												 <th><spring:message code="label.Password" /></th>
												<th><spring:message code="label.CheckOut" /></th>
                                             </tr>
										</thead>
										<tbody> 
											<!-- Fetching Language Table-->
											<c:forEach items="${bookedRooms}" var="bookedRooms">
												<tr class="gradeX">
													<td class="center">${bookedRooms.bookingReferenceId}</td>
													<td class="center">${bookedRooms.userDetails.identityNumber}</td>
													<td class="center"> <label class="'label label-primary">${bookedRooms.checkedInTime}</label></td>
													<td class="center">${bookedRooms.endDate}</td>
													<td class="center">${bookedRooms.room.roomCode}</td>
													<td class="center">${bookedRooms.userDetails.firstName}</td>
													<td class="center">${bookedRooms.accessPassword}</td>
													<td class="center">
													 
													 
													 <sec:authorize access="hasAnyRole('ROLE_CHECKIN','ROLE_ADMIN')">
													 <c:if test="${bookedRooms.bookingStatus=='BOOKED'}">
														<a href="#" id="ss" data-toggle="modal" data-target="#confirmCheckIn" data-href="${pageContext.request.contextPath}/reservation/checkIn?bookingrefernceId=${bookedRooms.bookingReferenceId}" class="btn btn-success">
															<spring:message code="label.CheckIn" />
														</a> 
														</c:if>
									 </sec:authorize>
													
													
													<sec:authorize access="hasAnyRole('ROLE_CHECKOUT','ROLE_ADMIN')">
													<c:if test="${bookedRooms.bookingStatus=='CHECKEDIN'}">
														<a href="#" data-toggle="modal" data-target="#confirm"  data-href="${pageContext.request.contextPath}/reservation/checkOut?bookingrefernceId=${bookedRooms.bookingReferenceId}" class="btn btn-danger">
															<spring:message code="label.CheckOut" />
														</a>
														</c:if>
														<c:if test="${bookedRooms.bookingStatus=='CHECKEDOUT'}">
														 <label class="'label label-danger"> ${bookedRooms.checkedOutTime}</label>
														</c:if>
														</sec:authorize>
														 
													</td>
												</tr>
											</c:forEach>

										</tbody>

										<!-- Demo -->
										<!--End Action -->
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
    
      <div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="label.ConfirmSubmit" /></h4>
                </div> 
                <div class="modal-body">
                 <p><spring:message code="label.doYouWantToContinue" /></p> 
                </div> 
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
                    <a class="btn btn-danger btn-ok"><spring:message code="label.ConfirmSubmit" /></a>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
        <div class="modal fade" id="confirmCheckIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="label.ConfirmSubmit" /></h4>
                </div> 
                <div class="modal-body"> 
                <div class="col-sm-12">
	<div class="form-group">
				<label class="col-sm-2 control-label" >
				<spring:message code="label.Parking" /></label>
				<div class="col-sm-10">
			  <select  id="e1" name="parkingId">
			   <option value="0">SELECT PARKING</option>
			  <option value="0">No Parking Card</option>
			  <c:forEach items="${NotAvailableParking}" var="NotAvailableParking">  
        <option value="${NotAvailableParking.id}">${NotAvailableParking.parkingName}</option>  
        </c:forEach>
    </select> 
				 </div>			
			 </div>
  
                </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
                    <a class="btn btn-danger btn-oks"><spring:message code="label.ConfirmSubmit" /></a>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
	<script
		src="<c:url value="/resources/js/plugins/dataTables/datatables.min.js"/>"></script>
		<script src="<c:url value="/resources/js/plugins/select/select2.js"/>"></script> 
	<!-- Page-Level Scripts -->
	<script src="<c:url value="/resources/js/datatablecustom.js" />"
		type="text/javascript"> 
	</script>
	
	<script type='text/javascript' src="<c:url value="/resources/js/modal_language.js" />"> </script> 
	
   <script>
        $('#confirm').on('show.bs.modal', function(e) {
            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
            
            $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
        });
    </script> 
   <script> 
      $("#e1").select2();   
       var parkingId=0; 
      	 $('#confirmCheckIn').on('show.bs.modal', function(e){
      	 	 $('#e1').on('change', function(){
   	    	  parkingId = this.value;
   	    	  alert(parkingId); 
   	    	$('#confirmCheckIn').find('.btn-oks').attr('href', $('#ss').data('href')+'&parkingId='+parkingId);
   	    	}) 
         });    
    </script>  
</body>
</html>