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
		String sql = "DELETE FROM supplier WHERE sup_id = ?";
		String sql2 = "Select status from requirement where sup_id = ?";
		
		Connection conn = DbConnection.connect();
		
		PreparedStatement st2 = conn.prepareStatement(sql2);
		st2.setInt(1, id);
		
		ResultSet rs = st2.executeQuery();
		
		String status = "Pending";
		if(rs.next()){
			status = rs.getString("status");
		}
		
		if(status.equals("Pending") || status == null){
		    
		    PreparedStatement st1 = conn.prepareStatement(sql);
		    st1.setInt(1, id);
		    int i = st1.executeUpdate();

		    if(i > 0){
		        System.out.println("Supplier deleted");
		        response.sendRedirect("adminsupplier.jsp");
		    }else{
		        System.out.println("Supplier delete fail");
		        response.sendRedirect("adminsupplier.jsp");
		    }
		}else{
		    System.out.println("Supplier has assigned requirements. Can't delete.");
		    response.sendRedirect("adminsupplier.jsp");
		}

		
	%>
</body>
</html>