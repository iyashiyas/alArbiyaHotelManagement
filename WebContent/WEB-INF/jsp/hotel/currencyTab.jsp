<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SHMS-unitTab</title>
</head>
<body>
  
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Currency</h5>
				 
			</div> 
			<div class="ibox-content ">
                            <ul class="folder-list m-b-md nav metismenu" style="padding: 0">
                                <li ><a href="${pageContext.request.contextPath}/hotel/showCurrency">Add New Currency</a></li>
                                <li><a href="${pageContext.request.contextPath}/hotel/showCurrencyRates">Add Currency rates</a></li>
                       
                                 </ul>
                             <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
         
</body>
</html>