<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="navbar navbar-inverse set-radius-zero">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			
				<h1 style="text-shadow: 2px 2px 4px #000000;">Musical Instrument System</h1>
			

		</div>

		<div class="right-div">
			<a href="logout.jsp" class="btn btn-danger pull-right">LOG ME OUT</a>
		</div>
	</div>
</div>
<!-- LOGO HEADER END-->
<section class="menu-section">
	<div class="container">
		<div class="row ">
			<div class="col-md-12">
				<div class="navbar-collapse collapse ">
					<ul id="menu-top" class="nav navbar-nav navbar-right">
						<li><a href=after-admin-login.jsp>Dashboard</a></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Product <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="add-product.jsp">Add Product</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="update-product.jsp">Update Product</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Customer <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="add-customer.jsp">Add Customer</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="display-customer.jsp">Update Customer</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Shop <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="add-shop.jsp">Add Shops</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="view-shops.jsp">View Shops</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Purchase <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="purchase-product.jsp">Purchase Product</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="view-purchase-product.jsp">View Purchase Product</a></li>
							</ul></li>
						<li><a href="sales.jsp">Sales</a></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Vendor <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="add-vendor.jsp">Add Vendor</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="view-vendors.jsp">View Vendors</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle" id="ddlmenuItem"
							data-toggle="dropdown">Reports <i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="ddlmenuItem">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="daily-report.jsp">Sales Report</a></li>
							</ul></li>
						<li><a href=""><strong style="text-shadow: 2px 2px 4px #000000;"><%=session.getAttribute("uname") %></strong></a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</section>