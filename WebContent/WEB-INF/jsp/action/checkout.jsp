<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHMS-CheckoutService</title>
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
				<li class="active"><strong><spring:message code="label.Checkout" /></strong></li>
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

                    <h2><span class="text-navy"><spring:message code="label.Checkout" /> - <spring:message code="label.Service" /></span>
                    <spring:message code="label.IsHelpsTheCustomer" />  <br/><spring:message code="label.ForCheck-outRoomsFromServiceScreens" /></h2>
                     <p>
                      <spring:message code="label.Herehaveoptionsyoucanturnon/offCheck-outServiceFromServiceScreens" />
                         
                     </p>


                </div>
            </div>
        </div>
        </div>
		 	    	<sec:authorize access="hasAnyRole('ROLE_CHECKOUT_EDIT','ROLE_ADMIN')"><div class="col-lg-4">
		<div class="ibox float-e-margins">

	         <div class="ibox-content text-center p-md">
	         <form:form  action="${pageContext.request.contextPath}/action/updateCheckOutStatus" method="post" modelAttribute="hotelServiceCategory">
	  <div class="form-group">
				
                            <input type="hidden" name="serviceCategoryName" value="CHECKOUT">
                            <input type="hidden" name="hotelServicesCategoryId" value="2">
						<div class="col-sm-10">
							 <div class="col-sm-10">
			<form:checkbox id="checkbox1" path="categoryStatus" value="ENABLED"
						checked="checked" />
				<label for="checkbox1"> <spring:message code="label.Enable" /> </label>
			</div>
					</div>
					</div>
						<div class="form-group">
						 
							<button class="btn btn-primary" type="submit"> <spring:message code="label.Update" /> </button>
						</div></form:form>
					</div>
					
					
                      </div>
                      </div></sec:authorize>
	  
	  
	</div>
	</div>
 
	</div>
	</div>
	</div>
</body>
</html>