<%@page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "d:/new");  
out.print("successfully uploaded");  
  
%>  
</body>
</html>