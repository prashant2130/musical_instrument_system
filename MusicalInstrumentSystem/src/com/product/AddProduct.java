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
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=DatabaseConnection.generateProductId();
		String pname=request.getParameter("pname");
		String vid=request.getParameter("vid");
		String pquantity=request.getParameter("pquantity");
		String pprice=request.getParameter("pprice");
		HttpSession hs=request.getSession();
		
		try {
			int addProduct=DatabaseConnection.insertUpdateFromSqlQuery("insert into product_details(prod_id,prod_name,prod_qty,prod_rate,vendor_id)values('"+pid+"','"+pname+"','"+pquantity+"','"+pprice+"','"+vid+"')");
			if(addProduct>0) {
				String message="Product Added Successfully.";
				hs.setAttribute("add-product", message);
				response.sendRedirect("add-product.jsp");	
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
