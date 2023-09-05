package com.purchase;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import com.connection.DatabaseConnection;

/**
 * Servlet implementation class PurchaseProduct
 */
@WebServlet("/PurchaseProduct")
public class PurchaseProduct extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int productQuanity = 0;
		int purchaseProduct = 0;
		int updateProductQuantity = 0;
		String purchaseId = DatabaseConnection.generatePurchaseId();
		String vendorId = request.getParameter("vendorId");
		String productId = request.getParameter("productId");
		int quantity = Integer.parseInt(request.getParameter("orderQuantity"));
		HttpSession hs = request.getSession();

		try {
			purchaseProduct = DatabaseConnection
					.insertUpdateFromSqlQuery("insert into purchase(purchase_id,vendor_id,prod_id,order_qty)values('"
							+ purchaseId + "','" + vendorId + "','" + productId + "','" + quantity + "')");
			updateProductQuantity = DatabaseConnection
					.insertUpdateFromSqlQuery("update product_details set prod_qty=prod_qty + '" + quantity
							+ "' where prod_id='" + productId + "'");
			if (purchaseProduct > 0) {
				String message = "Purchase product succesfully.";
				hs.setAttribute("purchase", message);
				response.sendRedirect("purchase-product.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
