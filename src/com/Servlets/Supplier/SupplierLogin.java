package com.Servlets.Supplier;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DbConnection;

/**
 * Servlet implementation class SupplierLogin
 */
public class SupplierLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");

	    String sql = "SELECT * FROM supplier WHERE sup_username = ? AND sup_password = ?";

	    try {
	        Connection conn = DbConnection.connect();

	        PreparedStatement ps1 = conn.prepareStatement(sql);
	        ps1.setString(1, username);
	        ps1.setString(2, password);

	        ResultSet rs1 = ps1.executeQuery();

	        if (rs1.next()) {
	         
	            // properties of the Supplier object
	            Supplier.setSup_id(rs1.getInt("sup_id"));
	            Supplier.setName(rs1.getString("name"));
	            Supplier.setContact(rs1.getString("contact"));
	            Supplier.setUsername(rs1.getString("sup_username"));
	            Supplier.setPassword(rs1.getString("sup_password"));

	           
	            response.sendRedirect("supplierDashboard.jsp");
	        } else {
	           
	            response.sendRedirect("index.jsp");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    doGet(request, response);
	}
}
