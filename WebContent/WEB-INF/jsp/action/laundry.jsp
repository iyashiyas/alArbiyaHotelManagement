<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/touchspin/jquery.bootstrap-touchspin.min.css"/>">
<title>SHMS-RestaurantService</title>

</head>
<body>

	<!-- Include Page Header-->
   <div id="wrapper">
   <jsp:include page="../header/header.jsp"></jsp:include>
	
	<div id="page-wrapper" class="gray-bg">
	
		 <div class="row wrapper border-bottom white-bg page-heading">
		<div class="col-lg-9">
			<h2><spring:message code="label.Services" /></h2>
			<ol class="breadcrumb">
				<li><a
					href="${pageContext.request.contextPath}/action"><spring:message code="label.Services" /></a></li>
				<li class="active"><strong><spring:message code="label.Laundry" /></strong></li>
			</ol>
		</div>
	 
	</div>
	<!-- Page Contents -->
	<!-- Page Heading -->
	
	 
	 <div class="wrapper wrapper-content">
        <div class="row">
        <jsp:include page="../action/laundryTab.jsp"></jsp:include>
	
	<div class="col-lg-8 animated fadeInRight">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5><spring:message code="label.AddNewItems" /></h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
			 
			 <jsp:include page="../action/addLaundryItems.jsp"></jsp:include>
				
			</div>
		</div>
	    <div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5><spring:message code="label.ItemsTable" /></h5>
				<div class="ibox-tools">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a>
               </div>
			</div>
			<div class="ibox-content">
			 
			</div>
			<div class="mail-box">
              <table class="table table-hover table-mail">
                     <thead>
                    <tr>
                    <th class="check-mail"><spring:message code="label.ItemID" /></th>
                      <th><spring:message code="label.ItemName" /></th>
                        <th><spring:message code="label.Description" /></th>
                          <th><spring:message code="label.Edit" /></th>
                        
                    </tr>
                    </thead>
                    
					<tbody>
                        <tr class="read">
                            <td class="check-mail">1 </td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
						   <td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>
                              </tr>

							<tr class="read">
                            <td class="check-mail">2</td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>
							<tr class="read">
                            <td class="check-mail">3 </td>
							<td class="mail-ontact "> Item
									Name </td>
							<td class="mail-subject"> Item
									Description </td>
							 
							<td class=""><i class="fa fa-pencil"><a href="#" data-toggle="modal" data-target="#confirm-Edit">Edit</a></i></td>
							<td class="text-right mail-date"><input type="button"
								class="btn btn-block btn-primary " name="btn"
								value="Remove Items" id="submitBtn" data-toggle="modal"
								data-target="#confirm-submit"></td>


						</tr>


					</tbody>
				</table> 
 </div>
			</div>
		</div>
			<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">Confirm Delete</div>
				<div class="modal-body">Are you sure you want to delete this
					item</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a href="#" id="submit" class="btn btn-success success">Delete</a>
				</div>
			</div>
		</div>
	</div>
	
	
		<div class="modal fade" id="confirm-Edit" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			  <form class="form-horizontal" action="" method="post">
					<p>Add Laundry items Here</p>

					<div class="form-group">
						<label class="col-sm-2 control-label">Categories</label>

						<div class="col-sm-10">
							<select class="form-control m-b" name="laun_Item_Category">
								<option>Indian</option>
								<option>Chinese</option>
								 
							  </select>
						</div>
					</div>
  


					<div class="form-group">
						<label class="col-sm-2 control-label">Item Name</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Item Name" name="laun_Item_Name"
								class="form-control">
						</div>
						</div>
						
						
						<div class="form-group">
					<label class="col-sm-2 control-label">Other Languages</label>
				     	  <div class="col-sm-10">
					  <div class="controls"> 
                
                    <div class="entry input-group ">	
                      <select class="form-control m-b" id="language_dropdown"><option>Arabic</option><option>English</option></select> 
                        <input class="form-control"  type="text" name="other_language_lundry" placeholder="Enter Name" />
                        <span class="input-group-btn">
                         <button class="btn btn-primary btn-add" type="button">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                          </span> 
                             </div>
                    </div>
                    </div>
                    </div>
						 
					 	<div class="form-group">
						<label class="col-sm-2 control-label"> Price</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Price" name="Price"
								class="form-control">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label"> Normal Time To FInish</label>

						<div class="col-sm-10">
							 <input class="touchspin1" type="text" value="" name="time_finish">

						</div>
					</div>
						 
					<div class="form-group">
						<label class="col-sm-2 control-label"> Description</label>

						<div class="col-sm-10">
							<input type="text" placeholder="Description" name="Description"
								class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Status </label>

						<div class="col-sm-10">
							 <input type="checkbox" id="checkbox1">
                                    <label for="checkbox1">
                                        Disable
                                    </label>
                                    </div>
					</div>

					  	<div class="form-group">
						<div class="col-lg-offset-2 col-lg-8">
							<button class="btn btn-primary" type="submit">Create new
								Items</button>
						</div>
					</div>
					</form>
			</div>
			</div>
		</div>
	</div>
 
</div>
</div>
</div> 

 <script type="text/javascript" src="<c:url value="/resources/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value="/resources/js/action/laundry.js"/>"></script>
 <script type="text/javascript">
 
 $("input[name='laundryItemTimeFinish']").TouchSpin({
     min: 1,
     max: 60,
     step: 1,
    boostat: 5,
     maxboostedstep: 10,
      
 });
</script>
 
</body>
</html>