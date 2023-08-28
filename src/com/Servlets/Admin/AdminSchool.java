package com.Servlets.Admin;

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
 * Servlet implementation class AdminSchool
 */
public class AdminSchool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSchool() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("schoolName");
		String address = request.getParameter("schoolAddress");
		String contact = request.getParameter("schoolContact");
		String username = request.getParameter("schoolUsername");
		String password = request.getParameter("schoolPassword");

		
		String sql = "INSERT INTO school (name, address, contact, school_username, school_password) VALUES (?, ?, ?, ?, ?)";
		
		try {
			
			Connection conn = DbConnection.connect();
			
			PreparedStatement ps1 = conn.prepareStatement(sql);
			ps1.setString(1, name);
			ps1.setString(2, address);
			ps1.setString(3, contact);
			ps1.setString(4, username);
			ps1.setString(5, password);

			int i = ps1.executeUpdate();
			
			if(i>0){
				System.out.println("School insert successful");
			}else{
				System.out.println("School insert fail");
			}
			
			response.sendRedirect("admindashboard.jsp");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
