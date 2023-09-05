<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
	String vid = request.getParameter("vid");
String vname = request.getParameter("vname");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String address = request.getParameter("address");

try {
	int updateProduct = DatabaseConnection
	.insertUpdateFromSqlQuery("update vendor set vendor_name='" + vname + "',contact='" + mobile + "',email='"
			+ email + "',address='" + address + "' where vendor_id='" + vid + "'");
	if (updateProduct > 0) {
		String message = "Vendor updated successfully.";
		session.setAttribute("success", message);
		response.sendRedirect("view-vendors.jsp");
	} else {
		response.sendRedirect("view-vendors.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
