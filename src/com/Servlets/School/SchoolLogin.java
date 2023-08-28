package com.Servlets.School;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DbConnection;

/**
 * Servlet implementation class SchoolLogin
 */
public class SchoolLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchoolLogin() {
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
		
		String sql = "SELECT * FROM school WHERE school_username = ? AND school_password = ?";
		
		try {
			
			Connection conn = DbConnection.connect();
			
			PreparedStatement ps1 = conn.prepareStatement(sql);
			ps1.setString(1, username);
			ps1.setString(2, password);

			ResultSet rs1 = ps1.executeQuery();
			
			if(rs1.next()){
				School.setId(rs1.getInt(1));
				School.setName(rs1.getString(2));
				School.setUsername(rs1.getString(5));
				
				String sql2 = "SELECT * FROM student WHERE school_id = ?";
				PreparedStatement ps2 = conn.prepareStatement(sql2);
				ps2.setInt(1, rs1.getInt(1));
			
				ResultSet rs2 = ps2.executeQuery();
				
				ArrayList<Integer> studentId1 = new ArrayList<>();
				ArrayList<String> studentNames1 = new ArrayList<>();
				ArrayList<Integer> studentWeight1 = new ArrayList<>();
				ArrayList<Integer> studentHeight1 = new ArrayList<>();
				
				while(rs2.next())
				{
					studentId1.add(rs2.getInt("stud_id"));
					studentNames1.add(rs2.getString("name"));
					studentWeight1.add(rs2.getInt("weight"));
					studentHeight1.add(rs2.getInt("height"));
				}
				
				String sql3 = "SELECT * FROM attendance WHERE school_id = ?";
				PreparedStatement ps3 = conn.prepareStatement(sql3);
				
				ps3.setInt(1, rs1.getInt(1));
				
				ResultSet rs3 = ps3.executeQuery();
				
				ArrayList<Integer> studentAttendance1 = new ArrayList<>();
				
				while(rs3.next())
				{
					studentAttendance1.add(rs3.getInt("present_days"));
				}
				
				
				School.setStudentId(studentId1);
				School.setStudentNames(studentNames1);
				School.setStudentWeight(studentWeight1);
				School.setStudentHeight(studentHeight1);
				School.setStudentAttendance(studentAttendance1);
				
				response.sendRedirect("schooldashboard.jsp");
			}else{
				response.sendRedirect("index.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
