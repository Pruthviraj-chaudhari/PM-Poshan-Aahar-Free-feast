<%@ page import="com.Servlets.School.*"%>
<%@ page import="com.DB.DbConnection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.Servlets.School.*"%>
<%@ page import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>PM Poshan-Aahar</title>
    <script>
        function redirectToPage() {
            window.location.href = "sendMealRequest.jsp";
        }

        function checkAttendance() {
            // Make an AJAX call to check if attendance is updated
            var xhttp = new XMLHttpRequest();
            
            xhttp.onreadystatechange = function() {
            	
                if (this.readyState == 4 && this.status == 200) {
                	
                    var isUpdated = parseInt(this.responseText);
                    if (isUpdated === 0) {
                        console.log("Please update your attendance of the current month");
                        redirectToPage();
                    } else {
                        redirectToPage();
                    }
                }
            };
            
            xhttp.open("GET", "checkAttendance.jsp", true);
            xhttp.send();
        }

        // Call the checkAttendance function when the page is loaded
        window.onload = checkAttendance;
    </script>
</head>
<body>
    <%
        Connection conn = DbConnection.connect();

        String sql = "SELECT * FROM mealitem";

        PreparedStatement st = conn.prepareStatement(sql);
        ResultSet rs = st.executeQuery();

        List<Map<String, Object>> mealList = new ArrayList<Map<String, Object>>(); // Create a list to store items

        boolean attendanceUpdated = true; // Flag to check if attendance is updated

        while (rs.next()) {

            int itemId = rs.getInt("item_id");
            int quantity = rs.getInt("quantity");
            String itemName = rs.getString("name");
            String unit = rs.getString("units");

            String sql1 = "SELECT CAST(COUNT(*) = SUM(CASE WHEN month = CONCAT(YEAR(CURRENT_DATE()), '-', LPAD(MONTH(CURRENT_DATE()), 2, '0')) THEN 1 ELSE 0 END) AS SIGNED) AS all_current_month FROM attendance";
            PreparedStatement st1 = conn.prepareStatement(sql1);
            ResultSet rs1 = st1.executeQuery();

            int isUpdated = 0;
            int totalPresentSum = 0;
            int totalStudents = 0;

            if (rs1.next()) {
                isUpdated = rs1.getInt("all_current_month");
            }

            if (isUpdated == 0) {
                System.out.println("Please update your attendance of the current month");
                attendanceUpdated = false; // Set the flag to false if attendance is not updated
                break; // Exit the loop since there's no need to check further
            } else {

                String sql2 = "SELECT CAST(SUM(present_days) AS SIGNED) AS total_present_days, CAST(COUNT(*) AS SIGNED) AS total_attendance_count FROM attendance WHERE school_id = ?";
                PreparedStatement st2 = conn.prepareStatement(sql2);
                st2.setInt(1, School.getId());
                ResultSet rs2 = st2.executeQuery();

                if (rs2.next()) {
                    totalPresentSum = rs2.getInt("total_present_days");
                    totalStudents = rs2.getInt("total_attendance_count");
                }

                int remainingGrain = (quantity * 30 * totalStudents) - (totalPresentSum * quantity);
                int requiredGrain = (quantity * 30 * totalStudents) - remainingGrain;

                // Create a map to store item details
                Map<String, Object> item = new HashMap<String, Object>();
                item.put("itemName", itemName);
                item.put("remainingMeal", remainingGrain);
                item.put("requiredMeal", requiredGrain);

                // Add the map to the mealList
                mealList.add(item);
            }
        }

        MealData.mealList = mealList;

        if (attendanceUpdated) {
            response.sendRedirect("sendMealRequest.jsp");
        }
    %>
</body>
</html>
