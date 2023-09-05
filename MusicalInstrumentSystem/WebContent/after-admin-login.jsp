<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:46:41 GMT -->
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
					<h4 class="header-line">ADMIN DASHBOARD</h4>

				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-info back-widget-set text-center">
						<i class="fa fa-history fa-5x"></i>
						<%
							int products=0;
							ResultSet resultsetProduct=DatabaseConnection.getResultFromSqlQuery("select count(*) from product_details");
							while(resultsetProduct.next()){
								products=resultsetProduct.getInt(1);
							}
						%>
						<h3>
							<%=products %>
						</h3>
						Total Products
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-success back-widget-set text-center">
						<i class="fa fa-bars fa-5x"></i>
						<%
							int customer=0;
							ResultSet resultsetCustomer=DatabaseConnection.getResultFromSqlQuery("select count(*) from customer");
							while(resultsetCustomer.next()){
								customer=resultsetCustomer.getInt(1);
							}
						%>
						<h3><%=customer %></h3>
						Total Customers
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-warning back-widget-set text-center">
						<i class="fa fa-recycle fa-5x"></i>
						<%
							int vendor=0;
							ResultSet resultsetVendor=DatabaseConnection.getResultFromSqlQuery("select count(*) from vendor");
							while(resultsetVendor.next()){
								vendor=resultsetVendor.getInt(1);
							}
						%>
						<h3><%=vendor %></h3>
						Total Vendors
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-danger back-widget-set text-center">
						<i class="fa fa-briefcase fa-5x"></i>
						<%
							int shops=0;
							ResultSet resultsetShops=DatabaseConnection.getResultFromSqlQuery("select count(*) from shop_registration");
							while(resultsetShops.next()){
								shops=resultsetShops.getInt(1);
							}
						%>
						<h3><%=shops %></h3>
						Total Shops
					</div>
				</div>
			</div>
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
<%
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:47:41 GMT -->
</html>
