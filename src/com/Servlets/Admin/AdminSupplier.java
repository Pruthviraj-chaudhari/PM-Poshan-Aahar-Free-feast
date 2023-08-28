package com.Servlets.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DbConnection;

/**
 * Servlet implementation class AdminSupplier
 */
public class AdminSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSupplier() {
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
		
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String username = request.getParameter("supplierUsername");
		String password = request.getParameter("supplierPassword");
		
		String sql = "INSERT INTO supplier (name, contact, sup_username, sup_password) VALUES (?, ?, ?, ?)";
		
		try {
			
			Connection conn = DbConnection.connect();
			
			PreparedStatement ps1 = conn.prepareStatement(sql);
			ps1.setString(1, name);
			ps1.setString(2, contact);
			ps1.setString(3, username);
			ps1.setString(4, password);

			int i = ps1.executeUpdate();
			
			if(i>0){
				System.out.println("Supplier insert successful");
			}else{
				System.out.println("Supplier insert fail");
			}
			
			response.sendRedirect("adminsupplier.jsp");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
