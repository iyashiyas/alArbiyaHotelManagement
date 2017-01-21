<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/phoneCode/intlTelInput.css"/>">
	
<title>SHMS-customerParking</title>
</head>
<body> 

<c:forEach items="${cutomerparkings}" var="cutomerparkings" >
					 <%--  <c:if test="${not loop.first and (loop.index + 1) % 5 == 0}">    --%>
						
		 <c:if test="${cutomerparkings.parkingStatus=='AVAILABLE'}"> 
				 <button class="col-lg-1 widget style1 navy-bg"  data-href="${pageContext.request.contextPath}/updateParkingStatus?parkingId=${cutomerparkings.id}&parkingStatus=NOTAVAILABLE" data-target="#confirmUpdate" data-toggle="modal"> 
						 <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${cutomerparkings.parkingName}</h2>
                            </div>
                        </div> 
                      </button> </c:if>
                <c:if test="${cutomerparkings.parkingStatus=='NOTAVAILABLE'}"> 
					 <div class="col-lg-1">
                    <div class="widget style1 red-bg ">
                        <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${cutomerparkings.parkingName}</h2>
                            </div>
                        </div>
                    </div>
                </div> </c:if>
                
                <c:if test="${cutomerparkings.parkingStatus=='OUT'}"> 
							 <button class="col-lg-1 widget style1 navy-bg " data-href="${cutomerparkings.parkingName}" data-target="#confirm" data-toggle="modal"> 
								  
                        <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${cutomerparkings.parkingName}</h2>
                            </div>
                        </div>
                     
  </button> </c:if>
                
                
								</c:forEach>
		 
   
   
        <div class="modal fade" id="confirmUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><spring:message code="label.ConfirmSubmit" /></h4>
                </div> 
                <div class="modal-body"> 
                 <spring:message code="label.ConfirmSubmit" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
                    <a class="btn btn-danger btn-oks"><spring:message code="label.ConfirmSubmit" /></a>
                </div>
            </div>
        </div>
    </div>
   
   
   
				 
    <script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
 <script>
      $(document).ready(function() { 
     
      	 $('#confirmUpdate').on('show.bs.modal', function(e) { 
             $(this).find('.btn-oks').attr('href', $(e.relatedTarget).data('href'));  
         });
      	  
       }); 
    </script>
					
</body>
</html>
 