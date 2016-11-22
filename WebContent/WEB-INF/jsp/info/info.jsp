<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

	<!-- Include Page Header-->
	<div id="wrapper">
		<jsp:include page="../header/header.jsp"></jsp:include>

		<div id="page-wrapper" class="gray-bg">
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-9">
					<h2>Hotel Information</h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/info/showInfo">Profile</a></li>
						<li class="active"><strong>Info</strong></li>
					</ol>
				</div>
			</div>

			<div class="wrapper wrapper-content">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12 animated fadeInRight">
							 <div class="ibox float-e-margins">
                      	<div class="ibox-tools">
									 <a  class="btn btn-primary" href="#editBuildingModal" data-toggle="modal"><i class="fa fa-pencil"> </i>Edit Information</a>
								</div>
						 
							  <div class="panel panel-primary row">
							  <div class="col-sm-8">
										<form class="form-horizontal">
											<c:forEach items="${hotelInfo}" var="hotelInfo">
												<div class="form-group">
													<label class="col-sm-4 control-label">Hotel Name :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelName} </label>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label">Address1 :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelAddress1} </label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-4 control-label">Address2 :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelAddress2} </label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-4 control-label">Head Branch
														Name :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelHeadOffice} </label>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label">Office Phone
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelPhone} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Office Fax :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelFax} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Office Email
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelEmail} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Office City :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelCity} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">State :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelState} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Nation :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelNation} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Total Branch
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelTotalBranch} </label>
													</div>
												</div>
											</c:forEach>
										</form>
 
									</div>
								  
									  <div class="col-lg-4">
                <div class="widget style1 navy-bg">
                    <div class="row">
                        <div class="col-xs-4">
                     	<img src="<c:url value="/resources/css/patterns/logonly.png"/>"  class="img-circle" alt="profile"> 
                        </div>
                        <div class="col-xs-8 text-right">
                      <input type="file"> 
                        </div>
                    </div>
                </div>
            </div>
									
									
									</div>
									</div>
									</div>

								</div>
							</div>


						</div>

					</div>
		 

				<div class="modal fade" id="editBuildingModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">Edit Hotel Information</div>
							<jsp:include page="../info/editInfo.jsp"></jsp:include>
						</div>
					</div>
				</div>
</body>
</html>
