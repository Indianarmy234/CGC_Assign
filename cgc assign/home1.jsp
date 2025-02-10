<%@page import="java.sql.*"%>
<%@page import="beans.you"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<style>/**/
.body{
 background: #4CAF50;
  color: white;
  margin-left:8px;
  margin-right:8px;
  padding: 12px;
  width: 90%;
  height: 600px;
  overflow: scroll;
  border: 1px solid #696969;
 
  overflow-x: hidden;
    
}
.message {
  width: 40%;
  height: 110px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 3px solid #696969;
  border-radius: 4px;
  background-color: #A9A9A9;
  font-size: 16px;
  resize: none;
  color:white;
   margin: 4px 0;
}
.name{
  width: 40%;
  height: 40px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 3px solid #696969;
  border-radius: 4px;
  background-color: #A9A9A9;
  font-size: 16px;
  resize: none;
  color:white;
   margin: 4px 0;
}
.email{
  width: 40%;
  height: 40px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 3px solid #696969;
  border-radius: 4px;
  background-color: #A9A9A9;
  font-size: 16px;
  resize: none;
  color:white;
   margin: 4px 0;
}
.name:hover{
background-color: #4CAF50;
}
.email:hover{
background-color: #4CAF50;
}
.message:hover{
background-color: #4CAF50;
}
h1 {
  text-align: center;
  text-transform: uppercase;
  color: #4CAF50;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 44px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button {
  background-color: #696969; 
  color: black; 
  border: 2px solid #A9A9A9;
}

.button:hover {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<section class=body>
		
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/hiber","root","root");
		String s="select * from project3";
		PreparedStatement p=cn.prepareStatement(s);
		
		ResultSet r=p.executeQuery();
		while(r.next())
		{
			
			%>
			<h4>
			<tr>
				<td><%=r.getString("name") %></td><br>
				<td><%=r.getString("email") %></td><br>
				<td><%=r.getString("message") %></td><br>				
				<td><%=r.getString("image") %></td><br><br>
				
			</tr><hr></h4>
			<%
		}
		%>
		
	</table>
	</section>
	<br><br><center>
	<div>
	<form action="mydata1.jsp">
	<h1>Message Box</h1>
		<input type="text" class="name" name="name" placeholder="enter name"><br>
		<input type="text" class="email" name="email" placeholder="enter email"><br>
		 <input type="text" class="message" name="message" placeholder="enter message"><br>
		 <input type="image" class="image" name="image"><br> 
		<input type="submit" class="button" value="Submit">
	</form>
	</div>
	</center>

</body>
</html>