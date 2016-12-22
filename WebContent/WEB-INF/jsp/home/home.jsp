<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 
<!-- Bootstrap -->
 
	<title>SHMS-Home</title>
</head>
<body>
	
	<!-- Include Page Header-->
		   <div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>
		<div id="page-wrapper" class="gray-bg">
		
		<!-- End --> 
	
		<!-- Page Contents -->
		
		
		<!-- Page Heading -->
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-9">
				<h2><spring:message code="label.Home" /></h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/SHMS"><spring:message code="label.Home" /></a></li>
					<li class="active"><strong><spring:message code="label.Home" /></strong></li>
				</ol>
			</div>
		</div>
	        <div class="raw  animated fadeInRight">
	        
	          <div class="col-lg-4">
                    <div class="widget lazur-bg p-xl">
                        <c:forEach items="${hotelInfos}" var="hotelInfo">
                                <h2>
                                  <a href="#"><small><spring:message code="label.Name" /></small></a>
                                   ${hotelInfo.hotelName}
                                </h2>
                        <ul class="list-unstyled m-t-md">
                            <li>
                                <span class="fa fa-envelope m-r-xs"></span>
                                <label><spring:message code="label.Email" />:</label>
                                ${hotelInfo.hotelEmail}
                            </li>
                            <li>
                                <span class="fa fa-home m-r-xs"></span>
                                <label><spring:message code="label.Address" />:</label>
                                ${hotelInfo.hotelAddress1} , ${hotelInfo.hotelAddress2}
                            </li>
                            <li>
                                <span class="fa fa-phone m-r-xs"></span>
                                <label><spring:message code="label.Contact" />:</label>
                               ${hotelInfo.hotelPhone}
                            </li>
                        </ul>
                   </c:forEach>
                    </div>
                    </div>
	        
	        
	    <div class="col-lg-7">
                <div>
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">12</button>
                              <spring:message code="label.TotalServices" />
                            </td>
                             
                            <td>
                                <button type="button" class="btn btn-info m-r-sm">15</button>
                            <spring:message code="label.TotalRooms" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-info m-r-sm">20</button>
                                 <spring:message code="label.TotalScreens" />
                            </td>
                            <td>
                                <button type="button" class="btn btn-success m-r-sm">40</button>
                                <spring:message code="label.TotalActiveScreens" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-success m-r-sm">20</button>
                                  <spring:message code="label.CheckInRooms" />
                            </td>
                            <td>
                                <button type="button" class="btn btn-default m-r-sm">40</button>
                                <spring:message code="label.Totalusers" />
                            </td>
                            
                        </tr>
                              <tr>
                              <td>
                                <button type="button" class="btn btn-warning m-r-sm">30</button>
                                   <spring:message code="label.TotalBranch" />
                            </td>
                           
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">40</button>
                                    <spring:message code="label.Totalbuilding" />
                            </td>
                             <td>
                                <button type="button" class="btn btn-info m-r-sm">20</button>
                                          <spring:message code="label.TotalFloor" />
                            </td>
                            
                             
                        </tr>
                        </tbody>
                    </table>
                </div>
                
              
                </div>
                </div>
                </div>
                 
	     </div>
	    
 </body>
 </html>