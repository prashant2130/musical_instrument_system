package com.sales;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CreateSales
 */
@WebServlet("/CreateSales")
public class CreateSales extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int productQuanity = 0;
		int updateProductQuantity = 0;
		int addSales = 0;
		String salesId = DatabaseConnection.generateSalesId();
		String custId = request.getParameter("custId");
		String prod_id = request.getParameter("prod_id");
		String pname = request.getParameter("pname");
		String prate = request.getParameter("prate");
		int pquantity = Integer.parseInt(request.getParameter("pquantity"));
		String totalAmount = request.getParameter("totalAmount");
		HttpSession hs = request.getSession();

		try {
			ResultSet resultset = DatabaseConnection
					.getResultFromSqlQuery("select prod_qty from product_details where prod_id='" + prod_id + "'");
			if (resultset.next()) {
				productQuanity = resultset.getInt("prod_qty");
			}
			if (productQuanity > pquantity) {
				addSales = DatabaseConnection.insertUpdateFromSqlQuery(
						"insert into sales(sale_id,cid,prod_id,prod_name,quantity,prod_rate,total_amt)values('"
								+ salesId + "','" + custId + "','" + prod_id + "','" + pname + "','" + pquantity + "','"
								+ prate + "','" + totalAmount + "')");
				updateProductQuantity = DatabaseConnection
						.insertUpdateFromSqlQuery("update product_details set prod_qty=prod_qty-'" + pquantity
								+ "' where prod_id='" + prod_id + "'");
				
				String message = "Sales data added";
				hs.setAttribute("sale", message);
				response.sendRedirect("sales.jsp");
			} else {
				String message = "Product quantity is not enough to purchase.";
				hs.setAttribute("quantity-short", message);
				response.sendRedirect("sales.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
