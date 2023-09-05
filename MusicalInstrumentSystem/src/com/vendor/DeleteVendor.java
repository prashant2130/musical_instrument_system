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
 * Servlet implementation class DeleteVendor
 */
@WebServlet("/DeleteVendor")
public class DeleteVendor extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vid = request.getParameter("vid");
		HttpSession hs=request.getSession();
		try {
			int deleteVendor = DatabaseConnection.insertUpdateFromSqlQuery("delete from vendor where vendor_id='" + vid + "'");
			if (deleteVendor > 0) {
				String message="Vendor deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("view-vendors.jsp");
			} else {
				response.sendRedirect("view-vendors.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
