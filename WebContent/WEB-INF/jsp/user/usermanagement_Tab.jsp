<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SHMS-usersTab</title>
</head>
<body>
 
<jsp:include page="../header/header.jsp"></jsp:include>

<div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2>User Management</h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/user">User Management</a></li>
				<li class="active"><strong>Users</strong></li>
			</ol>
		</div> 
	</div>
	
	   <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>User Management</h5>
			 	</div> 
			<div class="ibox-content ">
                            <ul class="folder-list m-b-md nav metismenu" style="padding: 0">
                                    <li><a href="#"><span class="label label-success">1</span> Users</a></li>
                                <li ><a href="#"> <span class="label label-success">2</span> Role </a></li>
                           </ul>
                             <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
        
             
       
             
</body>
</html>