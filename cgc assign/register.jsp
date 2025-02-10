

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String college=request.getParameter("college");
		String course=request.getParameter("course");
		String phone=request.getParameter("phone");
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/hiber","root","root");
		String s="insert into register1 values(?,?,?,?,?,?)";
		PreparedStatement p=cn.prepareStatement(s);
		p.setString(1,name);
		p.setString(2,email);
		p.setString(3,password);
		p.setString(4,college);
		p.setString(5,course);
		p.setString(6,phone);
		
		int i=p.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("login.html");
		}
		else
		{
			response.sendRedirect("register.html");
		}
	%>



</body>
</html>