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
 * Servlet implementation class AdminAddNewMeal
 */
public class AdminAddNewMeal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddNewMeal() {
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
		// TODO Auto-generated method stub
		String itemName = request.getParameter("itemName");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String unit = request.getParameter("unit");
		
		String sql = "INSERT INTO mealitem (name, quantity, units) VALUES (?,?,?)";
		
		try {
			
			Connection conn = DbConnection.connect();
			
			PreparedStatement ps1 = conn.prepareStatement(sql);
			ps1.setString(1, itemName);
			ps1.setInt(2, quantity);
			ps1.setString(3, unit);
			
			int i = ps1.executeUpdate();
			
			if(i>0){
				System.out.println("Item insert successful");
			}else{
				System.out.println("Item insert fail");
			}
			
			response.sendRedirect("adminAddNewMealItem.jsp");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
