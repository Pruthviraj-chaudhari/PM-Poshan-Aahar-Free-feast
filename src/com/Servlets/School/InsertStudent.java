package com.Servlets.School;

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
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class InsertStudent
 */
public class InsertStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertStudent() {
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
	    int height = Integer.parseInt(request.getParameter("height"));
	    int weight = Integer.parseInt(request.getParameter("weight"));

	    String sql = "INSERT INTO student (school_id, name, height, weight) VALUES (?, ?, ?, ?)";

	    try {
	        Connection conn = DbConnection.connect();

	        PreparedStatement ps1 = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	        ps1.setInt(1, School.getId());
	        ps1.setString(2, name);
	        ps1.setInt(3, height);
	        ps1.setInt(4, weight);

	        int i = ps1.executeUpdate();

	        if (i > 0) {
	            ResultSet key1 = ps1.getGeneratedKeys();
	            if (key1.next()) {
	                School.studentId.add(key1.getInt(1));
	                School.studentNames.add(name);
	                School.studentHeight.add(height);
	                School.studentWeight.add(weight);
	                System.out.println("Student insert successful");
	            }
	        } else {
	            System.out.println("Student insert fail");
	        }

	      
	        ps1.close();
	        conn.close();

	        response.sendRedirect("schooldashboard.jsp");

	    } catch (SQLException e) {
	        e.printStackTrace();
	        
	    }
	    doGet(request, response);
	}
}	
