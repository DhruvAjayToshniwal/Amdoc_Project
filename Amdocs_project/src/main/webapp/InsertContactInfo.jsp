<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String con_id = request.getParameter("conid");
String con_name = request.getParameter("coname");
String con_mail = request.getParameter("conmail");
String con_num = request.getParameter("conumber");
String con_message = request.getParameter("conmessage");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st=conn.createStatement();
st.executeUpdate("insert into contact(user_id, name, Email, Phone_no, Message) values ("+ con_id+ ",'" + con_name + "','" + con_mail + "','" + con_num +"','" + con_message +"')");
out.println("Contact Details inserted<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<form method="post" action="Success.jsp">
		<input type="submit" value="Go back" />
	</form>
</body>
</html>
