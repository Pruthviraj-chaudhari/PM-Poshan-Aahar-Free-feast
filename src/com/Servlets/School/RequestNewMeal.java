package com.Servlets.School;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DB.DbConnection;
import com.mysql.jdbc.Statement;

public class RequestNewMeal extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RequestNewMeal() {
        super();
    }

    private static int getItemIdFromDatabase(Connection connection, String itemName) throws SQLException {
        String sql = "SELECT item_id FROM mealitem WHERE name = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, itemName);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return resultSet.getInt("item_id");
                }
            }
        }
        // Return -1  itemName was not found in the database.
        return -1;
    }

    private static boolean isRequirementAlreadyPresent(Connection connection, int school_id, int itemId, String month)
            throws SQLException {
    String sql = "SELECT COUNT(*) FROM requirement WHERE school_id = ? AND item_id = ? AND month = ?";
    try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
        preparedStatement.setInt(1, school_id);
        preparedStatement.setInt(2, itemId);
        preparedStatement.setString(3, month);

        try (ResultSet resultSet = preparedStatement.executeQuery()) {
            if (resultSet.next()) {
                int count = resultSet.getInt(1);
                return count > 0;
            }
        }
    }
    return false;
}

private static int insertIntoRequirements(Connection connection, int school_id, int itemId, int newRequiredMeal,
            String month) throws SQLException {
    // Check if the requirement is already present
    if (isRequirementAlreadyPresent(connection, school_id, itemId, month)) {
        
        return -1; // requirement already exists
    }

    // If the requirement is not present
    String sql = "INSERT INTO requirement (school_id, item_id, quantity, month, status) VALUES (?, ?, ?, ?, ?)";
    try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
        preparedStatement.setInt(1, school_id);
        preparedStatement.setInt(2, itemId);
        preparedStatement.setInt(3, newRequiredMeal);
        preparedStatement.setString(4, month);
        preparedStatement.setString(5, "Pending");

       
        return preparedStatement.executeUpdate();
    }
}


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        LocalDate currentDate = LocalDate.now();
        int currentYear = currentDate.getYear();
        Month currentMonth = currentDate.getMonth();
        Month previousMonth = currentDate.minusMonths(1).getMonth();
        Month nextMonth = currentDate.plusMonths(1).getMonth();
        // Format the next month in "YYYY-MM" format
        String nextMonthFormatted = String.format("%d-%02d", currentYear + (nextMonth == Month.JANUARY ? 1 : 0), nextMonth.getValue());

        List<Map<String, Object>> mealList = MealData.getMealList();
        System.out.println(mealList);

        int schoolId = School.getId(); 
        boolean requirementPosted = false;

        try (Connection conn = DbConnection.connect()) {
            for (Map<String, Object> item : mealList) {
                String itemName = (String) item.get("itemName");
                int itemId = getItemIdFromDatabase(conn, itemName);
                System.out.println("Item id is " + itemId);

                int remainingMeal = (Integer) item.get("remainingMeal");
                int newRequiredMeal = (Integer) item.get("requiredMeal");
                int i = insertIntoRequirements(conn, schoolId, itemId, newRequiredMeal, nextMonthFormatted);

                if (i > 0) {
                    System.out.println("Requirement Posted Successfully");
                    requirementPosted = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            
            response.sendRedirect("error.jsp");
            return;
        }

        if (requirementPosted) {
            response.sendRedirect("schoolpreviousrequest.jsp");
        } else {
            response.sendRedirect("sendMealRequest.jsp");
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
