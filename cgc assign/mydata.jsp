<%@page import="java.sql.*"%>

<%@page import="beans.you3"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>


</style>
</head>
<body>
	<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		String image=request.getParameter("image");
		
		you3 m=new you3();
		m.setName(name);
		m.setEmail(email);
		m.setMessage(message);
		
		session.setAttribute("data",m);
		
		String id=request.getParameter("id");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/hiber","root","root");
		String s="insert into project3 values(?,?,?,?)";
		
		PreparedStatement p=cn.prepareStatement(s);
		p.setString(1,name);
		p.setString(2,email);
		p.setString(3,message);
		p.setString(4,image);
		
		
		int i=p.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("home.jsp");
		}
	%>
</body>
</html>







