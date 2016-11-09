
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
			<h5>Add New Currencies</h5>
			<div class="ibox-tools">
				<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
				</a>
			</div>
		</div>
		<div class="ibox-content">
			<form id="addUnitForm" class="form-horizontal" method="POST">
				<p>Add New Currency Here</p>
 
				<div class="form-group">
					<label class="col-sm-2 control-label">Currency Code</label>
					<div class="col-sm-10">
						<input type="text" placeholder="Currency Code"
							name="currencyCode" class="form-control" value="" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Currency Name</label>
					<div class="col-sm-10">
						<input type="text" placeholder="Currency Name"
							name="currencyName" class="form-control" value="" />
					</div>
				</div>
				
				
					<div class="form-group">
					<label class="col-sm-2 control-label">Fraction</label>
					<div class="col-sm-10">
						<input type="text" placeholder="Fraction"
							name="Fraction" class="form-control" value="" />
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
					<label class="col-sm-2 control-label">Default Currency</label>
					<div class="col-sm-5">
						<input type="text" placeholder="SR"
							name="currencyCode" disabled="disabled" class="form-control" value="" />
					</div>
					<div class="col-sm-5">
						<a >Change Default Currency</a>
					</div>
				</div>
 
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-8">
						<button class="btn btn-primary" type="submit">Create new
								Currency</button>
					</div>
				</div>

			</form>
		</div>
	</div>

</body>
</html>