<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<c:url value='/resources/css/login.css'/>" rel="stylesheet" />

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container">
		<h2 style="text-align: center">Vendor Dashboard</h2>
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Profile</a></li>
			<li><a data-toggle="tab" href="#menu1">List Product</a></li>
			<li><a data-toggle="tab" href="#menu2">Add Product</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<div class="row centered-form">
					<div
						class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Vendor Profile Information</strong>
								</h3>
							</div>
							<div class="panel-body">
								<form:form action="signup" method="post" modelAttribute="vendor">
									<div class="row">
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<input type="text" name="first_name" id="first_name"
													class="form-control input-sm" placeholder="First Name">
											</div>
										</div>
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<input type="text" name="last_name" id="last_name"
													class="form-control input-sm" placeholder="Last Name">
											</div>
										</div>
									</div>

									<div class="form-group">
										<input type="number" name="phone_number" id="phone_number"
											class="form-control input-sm" placeholder="Phone Number">
									</div>

									<div class="form-group">
										<input type="email" name="email" id="email"
											class="form-control input-sm" placeholder="Email Address">
									</div>

									<div class="row">
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<input type="password" name="user.password" id="password"
													class="form-control input-sm" placeholder="Password">
											</div>
										</div>
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<input type="password" name="password_confirmation"
													id="password_confirmation" class="form-control input-sm"
													placeholder="Confirm Password">
											</div>
										</div>
									</div>

									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 class="panel-title">
												<strong>Vendor Address: </strong>
											</h3>
										</div>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="text" name="address.street" id="street"
														class="form-control input-sm" placeholder="Street">
												</div>
											</div>
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="text" name="address.city" id="city"
														class="form-control input-sm" placeholder="City">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="number" name="address.zipCode" id="zipcode"
														class="form-control input-sm" placeholder="Zip Code">
												</div>
											</div>
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<input type="text" name="address.state" id="state"
														class="form-control input-sm" placeholder="State">
												</div>
											</div>
										</div>
										<div class="form-group">
											<input type="text" name="address.country" id="country"
												class="form-control input-sm" placeholder="Country">
										</div>

									</div>

									<input type="submit" value="Update"
										class="btn btn-info btn-block">

								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="menu1" class="tab-pane fade"></div>
			<div id="menu2" class="tab-pane fade">
				<div class="row centered-form">
					<div
						class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Vendor Add Product Form</strong>
								</h3>
							</div>
							<div class="panel-body">
								<form:form action="addProduct" method="post"
									modelAttribute="product">
									<div class="row">
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<input type="hidden" name="vendorId" id="vendor_id"
													class="form-control input-sm" placeholder="Vendor Id"
													value="<%=request.getParameter("vendorId")%>"> <input
													type="text" name="product_name" id="product_name"
													class="form-control input-sm" placeholder="Product Name">
											</div>
										</div>
										<div class="col-xs-6 col-sm-6 col-md-6">
											<div class="form-group">
												<select name="product_category" id="product_category"
													class="form-control input-sm"
													placeholder="Product category">
													<option value="electronics">Electronics</option>
													<option value="cars">Cars</option>
													<option value="clothing">Clothes</option>
													<option value="medicine">Medicines</option>
												</select>

											</div>
										</div>
									</div>

									<div class="form-group">
										<input type="text" name="product_description"
											id="product_description" class="form-control input-sm"
											placeholder="Product description">
									</div>

									<div class="form-group">
										<input type="file" name="product_image" id="product_image"
											class="form-control input-sm" placeholder="Product Image">
									</div>

									<input type="submit" value="Add Product"
										class="btn btn-info btn-block">

								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>