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
 background: #A2AD9C;
  color: white;
  margin-left:38px;
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
  background-color: #A2AD9C;
  font-size: 20px;
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
  background-color: #A2AD9C;
  font-size: 20px;
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
  background-color: #A2AD9C;
  font-size: 20px;
  resize: none;
  color:white;
   margin: 4px 0;
}
.name:hover{
background-color: RED;
}
.email:hover{
background-color: RED;
}
.message:hover{
background-color:RED;
}
h1 {
  text-align: center;
  text-transform: uppercase;
  color: RED;
}
.button {
  background-color: #A2AD9C; /* Green */
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
  background-color: #A2AD9C; 
  color: black; 
  border: 2px solid #A9A9A9;
}

.button:hover {
  background-color: RED;
  color: white;
}
#section1 h1{
   font-size:50px;
   color:#A2AD9C;

}
#upload{
  background-color:#A2AD9C; /* Green */
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
  text-decoration:none;
   text-decoration: none;
}
#upload{
 background-color: #A2AD9C; 
  color: black; 
  border: 2px solid #A9A9A9;
}
#upload:hover{
 background-color: RED;
  color: white;
}
a{
  color:black;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: black;
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  color: white;
  background-color: transparent;
  text-decoration: none;
}
.navbar {
  overflow: hidden;
  background-color: #A2AD9C;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: RED;
  color: black;
}
#upload{
   background-color:#A2AD9C;
}
#upload:hover{

background-color:red;
}

.mes{
  color:white;
  font-size:20px;
}

::placeholder{
  color:white;
  opacity:4px;
}


</style>
</head>
<body>
<section>
<ul>
 <div class="navbar">
  <a href="first_page.html">Home</a>
  <a href="contact.html">Contact</a>
  <a href="offer.html">Offer</a>
</div>
</section>
<section id=section1><br>
    <h1 class="section1">Welcome:<span style="color:red">Java Message BoX</span></h1>
    
    

</section>


<section class=body>
		<%
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/hiber","root","root");
		String s="select * from javamessage1";
		
		PreparedStatement p=cn.prepareStatement(s);
		ResultSet r=p.executeQuery();
		while(r.next())
		{
			
			%>
			<section class="mes">
			<tr>
				<td><%=r.getString("name") %></td><br>
				<td><%=r.getString("email") %></td><br>
				<td><%=r.getString("message") %></td><br>
				<td><%=r.getString("image") %></td><br><br>
			</tr><hr></h4></section>
			<%
			
		}
		%>
		
	</table>
	</section>
	<br><br><center>
	<div>
	<form action="javamessage.jsp">
	<h1>Message Box</h1>
		<input type="text" class="name" name="name" placeholder="enter name"><br>
		<input type="text" class="email" name="email" placeholder="enter email"><br>
		 <input type="text" class="message" name="message" placeholder="enter message"><br>
		 <input type="file" class="image" name="image"><br>
		<input type="submit" class="button" value="Submit">
		<button id="upload"><a href="projectupload.jsp">projectupload</a></button>
	</form>
	</div>
	</center>
	
	
</body>
</html>