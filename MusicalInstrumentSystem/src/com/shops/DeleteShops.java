package com.shops;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class DeleteShops
 */
@WebServlet("/DeleteShops")
public class DeleteShops extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		HttpSession hs=request.getSession();
		try {
			int deleteShop = DatabaseConnection.insertUpdateFromSqlQuery("delete from shop_registration where shop_id='" + sid + "'");
			if (deleteShop > 0) {
				String message="Shop deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("view-shops.jsp");
			} else {
				response.sendRedirect("view-shops.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



}
