<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/form.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:48:27 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Musical Instrument System</title>
<!-- BOOTSTRAP CORE STYLE  -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME STYLE  -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLE  -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- MENU SECTION END-->
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Purchase Product</h4>
				</div>
			</div>
			<%
				String success = (String) session.getAttribute("purchase");
				if (success != null) {
				session.removeAttribute("purchase");
			%>
			<div class="alert alert-info" id="info">Purchase Product
				successfully.</div>
			<%
				}
			%>
			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-info">
						<div class="panel-heading">Purchase Product</div>
						<div class="panel-body">
							<form role="form" action="PurchaseProduct" method="post">
								<div class="form-group">
									<label>Vendor Id</label> <select class="form-control"
										name="vendorId">
										<option>Select Vendor Id</option>
										<%
											ResultSet resultVendorId = DatabaseConnection.getResultFromSqlQuery("select * from vendor");
											while (resultVendorId.next()) {
										%>
										<option><%=resultVendorId.getString("vendor_id")%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Product Id</label> <select class="form-control"
										name="productId">
										<option>Select Product Id</option>
										<%
											ResultSet resultProductId = DatabaseConnection.getResultFromSqlQuery("select * from product_details");
										while (resultProductId.next()) {
										%>
										<option><%=resultProductId.getString("prod_id")%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Enter Order Quantity</label> <input class="form-control"
										type="text" name="orderQuantity" />
								</div>
								<button type="submit" class="btn btn-info">Add Purchase
								</button>
								<button type="reset" class="btn btn-danger">Reset</button>

							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
			</div>
			<!--/.ROW-->
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- FOOTER SECTION END-->
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})
				(
						window,
						document,
						'script',
						'../../../../../../www.google-analytics.com/analytics.js',
						'ga');

		ga('create', 'UA-58127580-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#info').delay(1500).show().fadeOut('slow');
	});
</script>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(1500).show().fadeOut('slow');
	});
</script>
<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</html>
