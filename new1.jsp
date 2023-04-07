<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>connected</title>
</head>
<body>


<%
    String redirectURL = "index.html";
    response.sendRedirect(redirectURL);
%>
<h1>Thank You for connecting with us</h1>

<li class="btn-cta"><a href="index.html"><span>Home</span></a></li>
<b>
<% String name=request.getParameter("fname");%>
<% String lastname=request.getParameter("lname");%>
<%
System.out.println(lastname);

System.out.println(name);%>
<% 
try{
	 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jadhav","root","");
    Statement s=con.createStatement();
    String qur="insert into ash(firstname,lastname) values(' "+name+"',' "+lastname+"') ";
    int c=s.executeUpdate(qur);
			if(c>0){
				System.out.println("insteredt");
			}
			else{
				System.out.println("not connect");
			}
	
	
}catch(Exception e){
	System.out.println(e);
}
%>
</b>
</body>
</html>