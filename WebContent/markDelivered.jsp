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
	int reqId = Integer.parseInt(request.getParameter("reqid"));

	String sql = "UPDATE requirement SET status = 'Delivered' WHERE req_id = ?";
	
	Connection conn = DbConnection.connect();
	PreparedStatement preparedStatement = conn.prepareStatement(sql);
	
	preparedStatement.setInt(1, reqId);
	
	    int i = preparedStatement.executeUpdate();
	
	    if (i > 0) {
	        response.sendRedirect("supplierDashboard.jsp");
	    } else {
	    	response.sendRedirect("supplierDashboard.jsp");
	    }
	
%>

</body>
</html>