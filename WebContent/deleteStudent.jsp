<%@ page import="com.DB.DbConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Servlets.School.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		int id = Integer.parseInt(request.getParameter("id"));

		String sql = "DELETE FROM student WHERE stud_id = ?";
		
		Connection conn = DbConnection.connect();
		PreparedStatement st1 = conn.prepareStatement(sql);
		st1.setInt(1, id);
		
		int i = st1.executeUpdate();
		
		if(i>0){
			
			int lastIndex = School.studentId.size() - 1;
	        School.studentId.remove(lastIndex);
	        School.studentNames.remove(lastIndex);
	        School.studentHeight.remove(lastIndex);
	        School.studentWeight.remove(lastIndex);
	        
			System.out.println("Student deleted");
			response.sendRedirect("schooldashboard.jsp");
		}else{
			System.out.println("Student delete fail");
			response.sendRedirect("schooldashboard.jsp");
		}
%>
</body>
</html>