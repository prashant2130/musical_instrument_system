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
 * Servlet implementation class AddShops
 */
@WebServlet("/AddShops")
public class AddShops extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=DatabaseConnection.generateShopId();
		String sname=request.getParameter("sname");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");;
		String address=request.getParameter("address");
		HttpSession hs=request.getSession();
		
		try {
			int addCustomer=DatabaseConnection.insertUpdateFromSqlQuery("insert into shop_registration(shop_id,shop_name,contact,email,address)values('"+sid+"','"+sname+"','"+mobile+"','"+email+"','"+address+"')");
			if(addCustomer>0) {
				String message="Shop add successfully.";
				hs.setAttribute("shop-add", message);
				response.sendRedirect("add-shop.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
