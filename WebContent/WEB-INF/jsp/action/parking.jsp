<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHMS-ParkingService</title>
</head>
<body>
	 <div id="wrapper">
	<jsp:include page="../header/header.jsp"></jsp:include>
<div id="page-wrapper" class="gray-bg">

	<!-- Page Contents -->
	<!-- Page Heading -->
	<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>Services</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/action">Services</a></li>
				<li class="active"><strong>Parking</strong></li>
			</ol>
		</div>
	</div>
	<div class="raw">
	<div class="wrapper wrapper-content animated fadeInRight">
	
	<div class="col-lg-10 animated fadeInRight">
				<div class="col-lg-8">
					    <div class="raw">
            <div class="ibox float-e-margins">
                <div class="ibox-content text-center p-md">

                    <h2><span class="text-navy">Parking - Service</span>
                    is  Helps The Customer  <br/>For Getting Vehicle From Parking Area By Vehicle Number</h2>

                    <p>
                        Here have options you can turn on/off Parking Service From Service Screens   
                    </p>


                </div>
            </div>
        </div>
        </div>
		 	    	<div class="col-lg-4">
		<div class="ibox float-e-margins">

	         <div class="ibox-content text-center p-md">
	       <form:form  action="${pageContext.request.contextPath}/action/updateParkingStatus" method="post" modelAttribute="hotelServiceCategory">
	  <div class="form-group">
				
                            <input type="hidden" name="serviceCategoryName" value="PARKING">
                            <input type="hidden" name="hotelServicesCategoryId" value="3">
						<div class="col-sm-10">
							 <div class="col-sm-10">
			<form:checkbox id="checkbox1" path="categoryStatus" value="ENABLED"
						checked="checked" />
				<label for="checkbox1"> ENABLE </label>
			</div>
					</div>
					</div>
						<div class="form-group">
						 
							<button class="btn btn-primary" type="submit"> Update </button>
						</div></form:form>
					</div>
					
					
                      </div>
                      </div>
	  
	  
	</div>
	</div>
 
	</div>
	</div>
	</div>
</body>
</html>