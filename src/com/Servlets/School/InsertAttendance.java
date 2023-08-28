package com.Servlets.School;

import java.io.IOException;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DbConnection;
import com.mysql.jdbc.Statement;
import java.time.*;
/**
 * Servlet implementation class InsertAttendance
 */
public class InsertAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAttendance() {
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
	    // Get the current date
	    LocalDate currentDate = LocalDate.now();
	    int currentYear = currentDate.getYear();
	    Month currentMonth = currentDate.getMonth();
	    int currentMonthValue = currentDate.getMonthValue();
	    Month previousMonth = currentDate.minusMonths(1).getMonth();
	    Month nextMonth = currentDate.plusMonths(1).getMonth();
	    int nextMonthValue = currentDate.plusMonths(1).getMonthValue();

	    int studentId = Integer.parseInt(request.getParameter("studentId"));
	    String studentName = request.getParameter("studentName");
	    String month = request.getParameter("month");
	    int presentDays = Integer.parseInt(request.getParameter("presentDays"));

	    if (currentMonthValue > Integer.parseInt(month.substring(5))) {
	        // Attendance is of the previous month
	        response.sendRedirect("schoolattendance.jsp");
	        return;
	    }

	    if (currentYear != Integer.parseInt(month.substring(0, 4))) {
	        // Attendance is not of the current year
	        response.sendRedirect("schoolattendance.jsp");
	        return;
	    }

	    try {
	        Connection conn = DbConnection.connect();

	        // Check if the student's attendance is already present in the table
	        String checkSql = "SELECT * FROM attendance WHERE stud_id = ? AND school_id = ? AND month = ?";
	        PreparedStatement checkStmt = conn.prepareStatement(checkSql);
	        checkStmt.setInt(1, studentId);
	        checkStmt.setInt(2, School.getId());
	        checkStmt.setString(3, month);

	        ResultSet checkResult = checkStmt.executeQuery();

	        if (checkResult.next()) {
	            // Attendance already exists, update it
	            String updateSql = "UPDATE attendance SET present_days = ? WHERE stud_id = ? AND school_id = ? AND month = ?";
	            PreparedStatement updateStmt = conn.prepareStatement(updateSql);
	            updateStmt.setInt(1, presentDays);
	            updateStmt.setInt(2, studentId);
	            updateStmt.setInt(3, School.getId());
	            updateStmt.setString(4, month);

	            int i = updateStmt.executeUpdate();

	            if (i > 0) {
	                System.out.println("Attendance updated for student Id: " + studentId);
	            } else {
	                System.out.println("Attendance update failed!");
	            }

	            updateStmt.close();
	        } else {
	            // Attendance does not exist, insert a new record
	            String insertSql = "INSERT INTO attendance (stud_id, school_id, month, present_days) VALUES (?, ?, ?, ?)";
	            PreparedStatement insertStmt = conn.prepareStatement(insertSql);
	            insertStmt.setInt(1, studentId);
	            insertStmt.setInt(2, School.getId());
	            insertStmt.setString(3, month);
	            insertStmt.setInt(4, presentDays);

	            int i = insertStmt.executeUpdate();

	            if (i > 0) {
	                System.out.println("Attendance inserted for student Id: " + studentId);
	            } else {
	                System.out.println("Attendance insertion failed!");
	            }

	            insertStmt.close();
	        }

	     
	        checkStmt.close();
	        conn.close();

	        response.sendRedirect("schoolattendance.jsp");

	    } catch (SQLException e) {
	        e.printStackTrace();
	       
	    }
	}
}
