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
	
<title>SHMS-Vip Parking</title>
</head>
<body>
<c:forEach items="${VIPparkings}" var="VIPparkings" >
					 <%--  <c:if test="${not loop.first and (loop.index + 1) % 5 == 0}">    --%> 
		 <c:if test="${VIPparkings.parkingStatus=='AVAILABLE'}"> 
				 <button class="col-lg-1 widget style1 navy-bg"  data-href="${pageContext.request.contextPath}/updateParkingStatus?parkingId=${VIPparkings.id}&parkingStatus=NOTAVAILABLE" data-target="#confirmUpdate" data-toggle="modal"> 
						 <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> --> 
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${VIPparkings.parkingName}</h2>
                            </div>
                        </div> 
                      </button> </c:if>
                <c:if test="${VIPparkings.parkingStatus=='NOTAVAILABLE'}"> 
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
                <c:if test="${VIPparkings.parkingStatus=='OUT'}"> 
							 <button class="col-lg-1 widget style1 bg-info " data-href="${pageContext.request.contextPath}/updateParkingStatus?parkingId=${VIPparkings.id}&parkingStatus=NOTAVAILABLE" data-target="#confirmUpdate" data-toggle="modal">
						 <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${VIPparkings.parkingName}</h2>
                            </div>
                        </div>
                     
  </button> 
  </c:if>
    </c:forEach>
								</body>
								</html>