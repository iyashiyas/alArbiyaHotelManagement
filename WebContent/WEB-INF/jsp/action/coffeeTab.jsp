<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SHMS-CoffeeTab</title>
</head>
<body>

   <div class="col-lg-3">
                <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5><spring:message code="label.Categories" /> <sec:authorize access="hasAnyRole('ROLE_COFFEESHOP_NEWCATEGORY','ROLE_ADMIN')"> -  <a href="#addcoffeeShopCategory-Modal" data-toggle="modal" ><spring:message code="label.NewCategory" /></a></sec:authorize></h5>
			 </div> 
			<div class="ibox-content ">
                            <ul class="folder-list m-b-md nav metismenu" style="padding: 0">
                              <c:forEach items="${coffeeShopCategory}" var="coffeeShopCategory">
                                <li ><a href="${pageContext.request.contextPath}/action/showCoffeeShop?categoryCode=${coffeeShopCategory.id}&serviceCateogy=1" >${coffeeShopCategory.serviceItemCategoryName}</a></li> 
                           </c:forEach>
                                 </ul>
                             <div class="clearfix"></div>
                        </div>
                    </div>
                </div> 
        <div class="modal fade" id="addcoffeeShopCategory-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"> 
				<div class="modal-header">Add New Category</div>
				<div class="modal-body"> 
					 <jsp:include page="../action/addNewCoffeeCategory.jsp"></jsp:include> 
				</div>
			</div>
		</div>
	</div>
             
</body>
</html>