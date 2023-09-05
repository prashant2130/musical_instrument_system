package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class DeleteCustomer
 */
@WebServlet("/DeleteCustomer")
public class DeleteCustomer extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid = request.getParameter("cid");
		HttpSession hs=request.getSession();
		try {
			int deleteCustomer = DatabaseConnection.insertUpdateFromSqlQuery("delete from customer where c_id='" + cid + "'");
			if (deleteCustomer > 0) {
				String message="Customer deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("display-customer.jsp");
			} else {
				response.sendRedirect("display-customer.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
