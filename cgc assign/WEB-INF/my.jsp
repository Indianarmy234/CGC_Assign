<%@page import="java.sql.*"%>
<%@page import="beans.you4"%>

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

Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/hiber","root","root");
String s="select * from dataenter";

PreparedStatement p=cn.prepareStatement(s);
ResultSet r=p.executeQuery();
while(r.next())
{
	%>
	<h4>
	<tr>
		<td><%=r.getString("name") %></td><br>
	</tr><hr></h4>
	<%
}
%>
	%>



</body>
</html>