<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
	String sid = request.getParameter("sid");
String sname = request.getParameter("sname");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String address = request.getParameter("address");

try {
	int updateProduct = DatabaseConnection.insertUpdateFromSqlQuery("update shop_registration set shop_name='" + sname
	+ "',contact='" + mobile + "',email='" + email + "',address='" + address + "' where shop_id='" + sid + "'");
	if (updateProduct > 0) {
		String message = "Shop updated successfully.";
		session.setAttribute("success", message);
		response.sendRedirect("view-shops.jsp");
	} else {
		response.sendRedirect("view-shops.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
