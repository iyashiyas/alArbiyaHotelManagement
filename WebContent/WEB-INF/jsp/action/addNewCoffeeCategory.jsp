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
		<div class="modal-header">Add New Categories</div>
		<div class="modal-body">
		
		<div class="form-group">
				<label class="col-sm-4 control-label"> Choose Category Type</label>

				<div class="col-sm-6">
					
		<label><input type="radio"   value="main" id="optionsRadios1" name="optionsRadiosType">Main</label>
        <label><input type="radio"   value="sub" id="optionsRadios1" name="optionsRadiosType">Sub</label>
	
				</div>
			</div>
			
			
			<div class="form-group" id="choosecategory" style="display: none">
				<label class="col-sm-4 control-label">Select Sub </label>

				<div class="col-sm-6">
				
						<select class="form-control">
						<option>Select Main Category</option>
				        <option>Hot Drinks</option>
				        <option>Cold Drinks</option>
						</select>
		       
				</div>
			</div>
			 
				
			<div class="form-group">
				<label class="col-sm-4 control-label"> Name</label>

				<div class="col-sm-6">
					<input type="text" placeholder="Name" name="Name"
						class="form-control">
				</div>
			</div>

		</div>

		<div class="modal-footer">
			<button type="button" data-reload="yes" data-dismiss="modal"
				class="btn btn-default">Cancel</button>
			<button type="submit" class="btn btn-success success">Add
				New</button>
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
