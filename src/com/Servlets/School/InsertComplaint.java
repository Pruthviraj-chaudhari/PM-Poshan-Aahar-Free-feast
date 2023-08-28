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
 * Servlet implementation class InsertComplaint
 */
public class InsertComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertComplaint() {
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
		
		

		String description = request.getParameter("description");

		String sql = "INSERT INTO complaint (school_id, description) VALUES (?, ?)";

		try {
		    Connection conn = DbConnection.connect();

		    PreparedStatement ps1 = conn.prepareStatement(sql);
		    ps1.setInt(1, School.getId());
		    ps1.setString(2, description);

		    int i = ps1.executeUpdate();

		    if (i > 0) {
		  
		        response.sendRedirect("schoolcomplaint.jsp?success=true");
		    } else {
		       
		        response.sendRedirect("schoolcomplaint.jsp?success=false");

		    }
		    
		   
		    ps1.close();
		    conn.close();

		} catch (SQLException e) {
		    e.printStackTrace();
		
		    response.sendRedirect("schoolcomplaint.jsp?success=false");
		}

		
		doGet(request, response);
	}

}
