<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ page import="java.sql.*"%>
 <%@page import="javax.sql.*" %>
 <% 
  
  String uname=request.getParameter("username");
  String pass=request.getParameter("password");
  Class.forName("com.mysql.jdbc.Driver");
  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
  Statement st=con.createStatement();
  ResultSet rs;
  int i=st.executeUpdate("insert into user values('"+uname+"','"+pass+"')");
 
	response.sendRedirect("welcome.jsp");
 %>
</body>
</html>