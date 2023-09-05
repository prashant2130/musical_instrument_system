package com.admin;

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
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");

		HttpSession hs=request.getSession();
		try {
			ResultSet resultset=DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='"+uname+"' and password='"+upass+"'");
			if(resultset.next()) {
				hs.setAttribute("uname", resultset.getString("uname"));
				response.sendRedirect("after-admin-login.jsp");
			}else {
				String message="Invalid credential, Please try again.";
				hs.setAttribute("fail", message);
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
