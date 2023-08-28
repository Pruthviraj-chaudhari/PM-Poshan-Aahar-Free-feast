<%@ page import="com.DB.DbConnection" %>
<%@ page import="java.sql.*" %>
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
		String sql = "DELETE FROM school WHERE school_id = ?";
		Connection conn = DbConnection.connect();
		PreparedStatement st1 = conn.prepareStatement(sql);
		st1.setInt(1, id);
		int i = st1.executeUpdate();
		
		if(i>0){
			System.out.println("School deleted");
			response.sendRedirect("admindashboard.jsp");
		}else{
			System.out.println("School delete fail");
			response.sendRedirect("admindashboard.jsp");
		}
	%>
</body>
</html>