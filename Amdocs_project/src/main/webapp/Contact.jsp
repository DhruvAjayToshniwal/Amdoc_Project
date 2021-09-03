<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset-UTF-8">
<title>Contact Form</title>
</head>
<body>
	<form method="post" action="InsertContactInfo.jsp">
		<table border="1" width="30%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">Please fill in the Contact Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User ID</td>
					<td><input type="number" name="conid" value="" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="coname" value="" /></td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><input type="text" name="conmail" value="" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><input type="number" name="conumber" value="" /></td>
				</tr>
				<tr>
					<td>Message</td>
					<td><input type="text" name="conmessage" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit Details" /></td>
				</tr>
				<tr>
					<td colspan="2"><a href="Success.jsp">Go back</a></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>