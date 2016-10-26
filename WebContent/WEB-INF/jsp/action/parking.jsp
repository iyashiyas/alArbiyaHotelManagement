<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	         <form action="#">
	  <div class="form-group">
					 

						<div class="col-sm-10">
							 <input type="radio" id="radio" name="status">
                                    <label for="radio">
                                        Disable
                                    </label>
                                     
                                    
							 <input type="radio" id="radio" name="status">
                                    <label for="radio">
                                        Enable
                                    </label>
                                    
					</div>
					</div>
						<div class="form-group">
						 
							<button class="btn btn-primary" type="button"> Update </button>
						</div></form>
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