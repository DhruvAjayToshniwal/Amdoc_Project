<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String cid = request.getParameter("courseid");
String cname = request.getParameter("coursename");
String cdesc = request.getParameter("coursedesc");
String cresc = request.getParameter("courseresc");
String cfee = request.getParameter("coursefee");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st=conn.createStatement();
int i = st.executeUpdate("insert into course(course_id, cname, c_desp, c_fees, c_resource) values ('"+ cid+ "','" + cname + "','" + cdesc + "','" + cfee +"','" + cresc +"')");
if(i > 0){
	out.println("Courses choice succesfully submitted");
//session.setAttribute("username", user_id);
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("index.jsp");
}
%>