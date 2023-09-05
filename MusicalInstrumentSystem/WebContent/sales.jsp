<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/table.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:48:28 GMT -->
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
<!-- DATATABLE STYLE  -->
<link href="assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
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
					<h4 class="header-line">Sales Data</h4>
				</div>
			</div>
			<%
				String quantity = (String) session.getAttribute("quantity-short");
				if (quantity != null) {
				session.removeAttribute("quantity-short");
			%>
			<div class="alert alert-danger" id="danger">Product quantity is not enough to sales.</div>
			<%
				}
			%>
			
			<%
				String success = (String) session.getAttribute("sale");
				if (success != null) {
				session.removeAttribute("sale");
			%>
			<div class="alert alert-info" id="info">Sales data added
				successfully.</div>
			<%
				}
			%>
			
			<form action="sales-data.jsp" method="post">
				<div class="form-row">
					<div class="form-group col-md-3"></div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12">
						<!--   Basic Table  -->
						<div class="panel panel-default">
							<div class="panel-heading">Sales</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Select Customer Id</th>
												<th>Product Name</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><select class="form-control" name="custId"
													style="width: 200px">
														<option>Select Customer Id</option>
														<%
															ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from customer");
														while (resultset.next()) {
														%>
														<option><%=resultset.getString("c_id")%></option>
														<%
															}
														%>
												</select></td>
												<td><select class="form-control" name="pname"
													style="width: 200px">
														<option>Select Product Name</option>
														<%
															ResultSet resultProduct = DatabaseConnection.getResultFromSqlQuery("select * from product_details");
														while (resultProduct.next()) {
														%>
														<option><%=resultProduct.getString("prod_name")%></option>
														<%
															}
														%>
												</select></td>
												<td><input type="submit" value="Search"
													class="btn btn-info"></td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- End  Basic Table  -->
					</div>
				</div>
			</form>
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
	<!-- DATATABLE SCRIPTS  -->
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
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
<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/table.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:48:34 GMT -->
</html>
