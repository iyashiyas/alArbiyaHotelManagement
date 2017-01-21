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
 
<c:forEach items="${employeeparkings}" var="parkings" varStatus="loop">
<%--  <c:if test="${not loop.first and loop.index % 9 == 0}">  --%>
								<div class="col-lg-1">
                    <div class="widget style1 ${employeeparkings.parkingStatus=='AVAILABLE'? 'navy-bg':'red-bg'} ">
                        <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${employeeparkings.parkingName}</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- </c:if> 
                <div id="moreemployee" class="collapse">
                <div class="col-lg-1">
                    <div class="widget style1 ${employeeparkings.parkingStatus=='AVAILABLE'? 'navy-bg':'red-bg'} ">
                        <div class="row vertical-align">
                            <div class="col-lg-3">
                               <!--  <i class="fa fa-user fa-3x"></i> -->
                            </div>
                            <div class="col-lg-9 text-right">
                                <h2 class="font-bold">${employeeparkings.parkingName}</h2>
                            </div>
                        </div>
                    </div>
                </div>
                </div> --%>
			    </c:forEach>
	  </body>
 </html>