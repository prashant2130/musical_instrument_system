<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String pqty = request.getParameter("pquantity");
	String prate = request.getParameter("pprice");
	String vid = request.getParameter("vid");

	try {
		int updateProduct = DatabaseConnection
		.insertUpdateFromSqlQuery("update product_details set prod_name='" + pname + "',prod_qty='" + pqty
			+ "',prod_rate='" + prate + "',vendor_id='" + vid + "' where prod_id='" + pid + "'");
		if (updateProduct > 0) {
		String message="Product updated successfully.";
		session.setAttribute("success", message);
		response.sendRedirect("update-product.jsp");
		} else {
		response.sendRedirect("update-product.jsp");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
%>
