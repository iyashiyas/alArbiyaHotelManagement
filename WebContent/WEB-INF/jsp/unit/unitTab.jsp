<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SHMS-unitTab</title>
</head>
<body>
  
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Categories</h5>
				 
			</div> 
			<div class="ibox-content ">
                            <ul class="folder-list m-b-md nav metismenu" style="padding: 0">
                                <li ><a href="${pageContext.request.contextPath}/unit?categoryCode=GN">General</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=GN">Length</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=VC">Volume and Capacity</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=WT">Weight</a></li>
                                
                                
                                 </ul>
                             <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
        
             
       
             
</body>
</html>