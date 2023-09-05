<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<%
String cid = request.getParameter("cid");
String cname = request.getParameter("cname");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String address = request.getParameter("address");

try {
	int updateProduct = DatabaseConnection
	.insertUpdateFromSqlQuery("update customer set c_name='" + cname + "',c_contact='" + mobile + "',c_email='"
			+ email + "',c_address='" + address + "' where c_id='" + cid + "'");
	if (updateProduct > 0) {
		String message = "Customer updated successfully.";
		session.setAttribute("success", message);
		response.sendRedirect("display-customer.jsp");
	} else {
		response.sendRedirect("display-customer.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
