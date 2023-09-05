package com.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String prodId = request.getParameter("prodId");
		HttpSession hs=request.getSession();
		try {
			int deleteProduct = DatabaseConnection.insertUpdateFromSqlQuery("delete from product_details where prod_id='" + prodId + "'");
			if (deleteProduct > 0) {
				String message="Product deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("update-product.jsp");
			} else {
				response.sendRedirect("update-product.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
