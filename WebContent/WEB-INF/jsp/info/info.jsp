<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
					<h2>  <spring:message code="label.HotelInformation" /></h2>
					<ol class="breadcrumb">
						<li><a
							href="${pageContext.request.contextPath}/info/showInfo"><spring:message code="label.Profile" /></a></li>
						<li class="active"><strong><spring:message code="label.Info" /></strong></li>
					</ol>
				</div>
			</div> 
			<div class="wrapper wrapper-content">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12 animated fadeInRight">
							 <div class="ibox float-e-margins">
                      	<div class="ibox-tools">
									 <a  class="btn btn-primary" href="#editBuildingModal" data-toggle="modal"><i class="fa fa-pencil"> </i><spring:message code="label.EditInformation" /></a>
								</div>
						 <c:forEach items="${hotelInfo}" var="hotelInfo">
							  <div class="panel panel-primary row">
							  <div class="col-sm-8">
										<form class="form-horizontal">
											
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.HotelName" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelName} </label>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.Address1" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelAddress1} </label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.Address2" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelAddress2} </label>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.HeadBranch" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelHeadOffice} </label>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.OfficePhone" />
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelPhone} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.officeFax" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelFax} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.OfficeEmail" />
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelEmail} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.OfficeCity" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelCity} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.State" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelState} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.Nation" /> :</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelNation} </label>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"><spring:message code="label.TotalBranch" />
														:</label>

													<div class="">
														<label class="control-label">
															${hotelInfo.hotelTotalBranch} </label>
													</div>
												</div>
										 
										</form> 
									</div> 
									  <div class="col-lg-4">
                <div class="widget style1 navy-bg">
                    <div class="row">
                        <div class="col-xs-4">
                     	<img src="<c:out value='${hotelInfo.hotelLogoUrl}' />"  class="img-circle" alt="profile"> 
                        </div>
                        		
                        <form:form action="${pageContext.request.contextPath}/info/uploadLogo?${_csrf.parameterName}=${_csrf.token}" method="post" modelAttribute="newInfo" enctype="multipart/form-data">
                        <div class="col-xs-8 text-right">
                      <div class="col-sm-10">
                      <form:input type="hidden" name="id" value="${hotelInfo.id}" path="id" />
						<form:input type="file" placeholder="Image" name="multipartFile" path="multipartFile" class="form-control" />
					   </div> 
                        </div>
                        <div>
                        <button type="submit" class="btn btn-success" ><spring:message code="label.UploadNewLogo" /></button>
                        </div>
                        </form:form> 
                    </div>
                </div>
            </div> 
							    </c:forEach>		
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
							<div class="modal-header"><spring:message code="label.EditHotelInformation" /></div>
							<jsp:include page="../info/editInfo.jsp"></jsp:include>
						</div>
					</div>
				</div>
</body>
</html>
