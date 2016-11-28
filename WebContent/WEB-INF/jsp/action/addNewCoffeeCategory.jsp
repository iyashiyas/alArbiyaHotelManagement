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
	<form class="form-horizontal" id="confirm-EditForm" method="POST">
		<div class="modal-header"><spring:message code="label.AddNewCategories" /></div>
		<div class="modal-body">
		
		<div class="form-group">
				<label class="col-sm-4 control-label"><spring:message code="label.ChooseCategoryType" /></label>

				<div class="col-sm-6">
					
		<label><input type="radio"   value="main" id="optionsRadios1" name="optionsRadiosType"><spring:message code="label.Main" /></label>
        <label><input type="radio"   value="sub" id="optionsRadios1" name="optionsRadiosType"><spring:message code="label.Sub" /></label>
	
				</div>
			</div>
			
			
			<div class="form-group" id="choosecategory" style="display: none">
				<label class="col-sm-4 control-label"><spring:message code="label.SelectSub" /> </label>

				<div class="col-sm-6">
				
						<select class="form-control">
						<option><spring:message code="label.SelectMainCategory" /></option>
				        <option>Hot Drinks</option>
				        <option>Cold Drinks</option>
						</select>
		       
				</div>
			</div>
			 
				
			<div class="form-group">
				<label class="col-sm-4 control-label"> <spring:message code="label.Name" /></label>

				<div class="col-sm-6">
					<input type="text" required="required" placeholder="<spring:message code="label.Name" />" name="Name"
						class="form-control">
				</div>
			</div>

		</div>

		<div class="modal-footer">
			<button type="button" data-reload="yes" data-dismiss="modal"
				class="btn btn-default"><spring:message code="label.Cancel" /></button>
			<button type="submit" class="btn btn-success success"><spring:message code="label.Add" /></button>
		</div>
	</form>

<script type="text/javascript">
$(function() {
    $('input[name="optionsRadiosType"]').on('click', function() {
        if ($(this).val() == 'sub') {
            $('#choosecategory').show();
        }
        else {
            $('#choosecategory').hide();
        }
    });
});
</script>

</body>
</html>
