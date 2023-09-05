package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatabaseConnection {

	public static Connection connection;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/musical_instruments?useSSL=false", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (connection);
	}

	public static void CloseConnection() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
		ResultSet rs = null;
		try {
			if (connection == null) {
				getConnection();
			}
			rs = connection.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int insertUpdateFromSqlQuery(String SqlQueryString) {
		int i = 2;
		try {
			if (connection == null) {
				getConnection();
			}
			i = connection.createStatement().executeUpdate(SqlQueryString);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return i;
	}
	
	public static String generateProductId() {
		String pid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		pid = sdf.format(new Date());
		pid = "P" + pid;
		System.out.println("Product Id " + pid);
		return pid;
	}
	
	public static String generateCustomerId() {
		String cid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		cid = sdf.format(new Date());
		cid = "C" + cid;
		System.out.println("Customer Id " + cid);
		return cid;
	}
	
	public static String generateVendorId() {
		String vid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		vid = sdf.format(new Date());
		vid = "V" + vid;
		System.out.println("Vendor Id " + vid);
		return vid;
	}
	
	public static String generateShopId() {
		String sid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		sid = sdf.format(new Date());
		sid = "S" + sid;
		System.out.println("Shop Id " + sid);
		return sid;
	}
	
	public static String generatePurchaseId() {
		String pid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		pid = sdf.format(new Date());
		pid = "PER" + pid;
		System.out.println("Purchase Id " + pid);
		return pid;
	}
	
	public static String generateSalesId() {
		String sid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		sid = sdf.format(new Date());
		sid = "SEL" + sid;
		System.out.println("Sales Id " + sid);
		return sid;
	}
}
