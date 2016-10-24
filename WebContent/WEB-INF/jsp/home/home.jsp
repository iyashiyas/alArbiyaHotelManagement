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
		
		<jsp:include page="../header/header.jsp"></jsp:include>
		
		<!-- End -->
	
	
		<!-- Page Contents -->
		
		
		<!-- Page Heading -->
		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-9">
				<h2>Widgets</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li class="active"><strong>Home</strong></li>
				</ol>
			</div>
		</div>
	        <div class="raw  animated fadeInRight">
	    <div class="col-lg-7">
                <div>
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">12</button>
                                Total Rooms
                            </td>
                            <td>
                                <button type="button" class="btn btn-primary m-r-sm">28</button>
                               Total Services
                            </td>
                            <td>
                                <button type="button" class="btn btn-info m-r-sm">15</button>
                             Available Rooms
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-info m-r-sm">20</button>
                                Total Screens
                            </td>
                            <td>
                                <button type="button" class="btn btn-success m-r-sm">40</button>
                                Total Active Screens
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">30</button>
                                Reservations
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-success m-r-sm">20</button>
                                 Check-in Rooms
                            </td>
                            <td>
                                <button type="button" class="btn btn-default m-r-sm">40</button>
                                Total Users
                            </td>
                            <td>
                                <button type="button" class="btn btn-warning m-r-sm">30</button>
                                Total Active Order
                            </td>
                        </tr>
                              <tr>
                              <td>
                                <button type="button" class="btn btn-warning m-r-sm">30</button>
                                Total Branch
                            </td>
                           
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">40</button>
                                   Total Building
                            </td>
                             <td>
                                <button type="button" class="btn btn-info m-r-sm">20</button>
                                   Total Floor
                            </td>
                            
                        </tr>
                        </tbody>
                    </table>
                </div>
                </div>
                </div>
	     
	    
 </body>
 </html>