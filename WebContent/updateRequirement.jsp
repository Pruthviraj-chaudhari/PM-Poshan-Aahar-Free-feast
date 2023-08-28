
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
	int req_id = Integer.parseInt(request.getParameter("req_id"));
	int sup_id = Integer.parseInt(request.getParameter("sup_id"));
	System.out.println("Req_id: "+ req_id +" sup_id: "+sup_id);
	
	String sql = "UPDATE requirement SET sup_id = ?, status = ? WHERE req_id = ?";
	
	Connection conn = DbConnection.connect();
	PreparedStatement st1 = conn.prepareStatement(sql);
	st1.setInt(1, sup_id);
	st1.setString(2, "Approved");
	st1.setInt(3, req_id);

	int i = st1.executeUpdate();
	
	if(i>0){
		System.out.println("Supplier " + sup_id + " Assigned for Requirement Id: " + req_id);
		response.sendRedirect("adminrequirement.jsp");
	}else{
		System.out.println("Supplier Assignment fail");
		response.sendRedirect("adminrequirement.jsp");
	}

%>
</body>
</html>