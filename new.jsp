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
<h1>Thank You for connecting with us</h1>
<b>
<% String name=request.getParameter("fname");%>
<% String lastname=request.getParameter("lname");%>
<%String email=request.getParameter("email");%>
<%String subject=request.getParameter("subject");%>
<% String message=request.getParameter("message");%>
<%
System.out.println(lastname);
System.out.println(email);
System.out.println(subject);
System.out.println(name);%>
<% 
try{
	 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
    Statement s=con.createStatement();
    String qur="insert into conta(firstname,lastname,email,subject,message) values(' "+name+"',' "+lastname+"',' "+email+"',' "+subject+"',' "+message+"') ";
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