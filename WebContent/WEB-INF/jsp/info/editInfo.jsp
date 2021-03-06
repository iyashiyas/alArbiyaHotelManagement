<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<form:form class="form-horizontal" modelAttribute="newInfo"
		id="newInfo"
		action="${pageContext.request.contextPath}/info/editHotelInfo"
		method="post">
		 <div class="modal-body">
			<c:forEach items="${hotelInfo}" var="hotelInfo">
			<input type="hidden" name="id" value="${hotelInfo.id}">
				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.HotelName" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelName}"
							name="hotelName" path="hotelName" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.Address1" /></label>

					<div class="col-sm-8">

						<form:input type="text" value="${hotelInfo.hotelAddress1}"
							name="hotelAddress1" path="hotelAddress1" class="form-control" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.Address2" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelAddress2}"
							name="hotelAddress2" path="hotelAddress2" class="form-control" />

					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.HeadBranch" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelHeadOffice}"
							name="hotelHeadOffice" path="hotelHeadOffice"
							class="form-control" />
					</div>

				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.OfficePhone" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelPhone}"
							name="hotelPhone" path="hotelPhone" class="form-control" />
					</div>

				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.officeFax" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelFax}"
							name="hotelFax" path="hotelFax" class="form-control" />

					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-4 control-label"><spring:message code="label.OfficeEmail" /></label>
					<div class="col-sm-8">
						<form:input type="text" value="${hotelInfo.hotelEmail}"
							name="hotelEmail" path="hotelEmail" class="form-control" />
					</div>
				</div>
	 

		<div class="form-group">
			<label class="col-sm-4 control-label"><spring:message code="label.OfficeCity" /></label>

			<div class="col-sm-8">

				<form:input type="text" value="${hotelInfo.hotelCity}"
					name="hotelCity" path="hotelCity" class="form-control" />

			</div>
		</div>
 
		<div class="form-group">
			<label class="col-sm-4 control-label"><spring:message code="label.State" /></label>

			<div class="col-sm-8">
				<form:input type="text" value="${hotelInfo.hotelState}"
					name="hotelState" path="hotelState" class="form-control" />
			</div>
		</div>
		 

		<div class="form-group">
			<label class="col-sm-4 control-label"><spring:message code="label.Nation" /></label>
             <div class="col-sm-8">
				<form:input type="text" value="${hotelInfo.hotelNation}"
					name="hotelNation" path="hotelNation" class="form-control" />

			</div>
		</div>

		<div class="form-group ">
			<label class="col-sm-4 control-label"><spring:message code="label.TotalBranch" /></label>
			<div class="col-sm-8">
				<form:input type="text" value="${hotelInfo.hotelTotalBranch}"
					name="hotelTotalBranch" path="hotelTotalBranch"
					class="form-control" />
			</div> 
		</div>
		
		</div>
		</c:forEach>
		</div>

		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.Cancel" /></button>
			<button type="submit" class="btn btn-success success"><spring:message code="label.Submit" /></button>
		</div>
	</form:form>
</body>
</html>

