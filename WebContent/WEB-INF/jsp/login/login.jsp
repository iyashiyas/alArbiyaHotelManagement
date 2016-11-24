<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.css" />" 	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link id="loadBefore" href="<c:url value="/resources/css/common.css" />" rel="stylesheet">
 
<title>SHMS-Header</title>
</head>
<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">SHMS</h1>

            </div>
            <h3>Welcome to SHMS 1.0</h3>
            <p>The Complete Hotel Management Solution And Screen Control
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>Login in. To see it in action.</p>
            <form class="m-t" role="form" action="index.html">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="required">
                </div>
                <a class="btn btn-primary block full-width m-b" href="${pageContext.request.contextPath}/">Login</a>

                <a href="#"><small>Forgot password?</small></a>
              
            </form>
            <p class="m-t"> <small>Al Arabiya Depth For Advanced Project Ltd  &copy; 2016</small> </p>
        </div>
    </div>


<script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
			<script
				src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js" />"></script>
				
			<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
		
</body>
</html>
