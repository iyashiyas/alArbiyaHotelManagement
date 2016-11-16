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
					<label class="col-sm-2 control-label"> Name</label>

					<div class="col-sm-10">
						<input type="text" placeholder="Name" name="Name"
							class="form-control">
					</div>
				</div>
		
		</div> 
		
			<div class="modal-footer">
											<button type="button" data-reload="yes" data-dismiss="modal" class="btn btn-default">Cancel</button>
											<button type="submit" class="btn btn-success success">Add New</button>
										</div> 
	</form>



</body>
</html>
