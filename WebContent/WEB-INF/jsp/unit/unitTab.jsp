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
				<h5><spring:message code="label.Categories" /> - <a href="#addUnitCategory-Modal" data-toggle="modal" ><spring:message code="label.NewCategory" /></a></h5>
				 
			</div> 
			<div class="ibox-content ">
                            <ul class="folder-list m-b-md nav metismenu" style="padding: 0">
                                <li ><a href="${pageContext.request.contextPath}/unit?categoryCode=GRL">General</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=LNT">Length</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=VAC">Volume and Capacity</a></li>
                                <li><a href="${pageContext.request.contextPath}/unit?categoryCode=WGT">Weight</a></li>
                                 
                                 </ul>
                             <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
        
             
             <div class="modal fade" id="addUnitCategory-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">Add New Category</div>
				<div class="modal-body">

					<%-- <jsp:include page="../ingredient/addUnitCategory.jsp"></jsp:include>
 --%>

				</div>
			</div>
		</div>
	</div>
       
             
</body>
</html>