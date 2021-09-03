<%@ page import="java.sql.*"%>
<%
String usersid = request.getParameter("userid");
String passwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from admin where admin_id='" + usersid + "' and password='" + passwd + "'");
if (rs.next()) {
	session.setAttribute("userid", usersid);
	response.sendRedirect("AdminSuccess.jsp");
} else {
	out.println("Invalid Credentials<br><a href='index.jsp'>Click to Go back to Login Page</a>");
}
%>