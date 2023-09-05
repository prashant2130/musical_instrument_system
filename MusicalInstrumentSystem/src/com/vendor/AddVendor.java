package com.vendor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddVendor
 */
@WebServlet("/AddVendor")
public class AddVendor extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vid=DatabaseConnection.generateVendorId();
		String vname=request.getParameter("vname");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");;
		String address=request.getParameter("address");
		HttpSession hs=request.getSession();
		
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into vendor(vendor_id,vendor_name,contact,email,address)values('"+vid+"','"+vname+"','"+mobile+"','"+email+"','"+address+"')");
			if(addCustomer>0) {
				String message="Vendor add successfully.";
				hs.setAttribute("vendor-add", message);
				response.sendRedirect("add-vendor.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
