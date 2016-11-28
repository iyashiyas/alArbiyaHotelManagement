<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>SHMS-Currencies</title>

</head>
<body>

	<div class="ibox float-e-margins">

		<div class="ibox-title">
			<h5>Add Currency rates</h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
		<div class="ibox-content">
			<form id="addUnitForm" class="form-horizontal" method="POST">
				<p>Add New Currency Here</p>
 
				<div class="form-group">
					<label class="col-sm-2 control-label">Currency</label>
					<div class="col-sm-10">
						 <select class="form-control"><option>Us Dollor</option>
						 <option>Chinees</option></select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Currency Rate For</label>
					<div class="col-sm-10">
						<input type="text" placeholder="Rate For 1 SR"
							name="defaultCurrency" disabled="disabled" class="form-control" value="" />
					</div>
				</div> 
				
				
				
			 <div class="form-group">
					<label class="col-sm-2 control-label">Dater</label>
					<div class="col-sm-10">
														<div class='input-group date' id='datetimepicker1'>
															<input type='text' class="form-control" /> <span
																class="input-group-addon"> <span
																class="glyphicon glyphicon-calendar"></span>
															</span>
														</div>
													</div>
													</div>
				 
					<div class="form-group">
					<label class="col-sm-2 control-label">Current Rate</label>
					<div class="col-sm-10">
						<input type="text" placeholder="Current Rate"
							name="cSurrentRate" class="form-control" value="" />
					</div>
				</div> 

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<button class="btn btn-primary" type="submit">Add Currency Rate
								 </button>
					</div>
				</div>

			</form>
		</div>
	</div>

</body>
</html>