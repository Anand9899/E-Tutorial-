<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Student Record</title>
<%@include file="AdminNavbar.jsp" %><br>
<!-- Optional: If Bootstrap not included in AdminNavbar.jsp -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
	<h2>Welcome Admin</h2>
	<div class="container-fluid mt-5  "
		style="margin-left: 30px; width: 85%; float: right">
		<h5 class="text-center bg-success text-light py-4">Student</h5>
		<table class="table table-bordered table-hover">
			<thead class="bg-success  text-center">
				<tr>
					<th>ID:</th>
					<th>Name:</th>
					<th>Phone:</th>
					<th>Email:</th>
					<th>Branch:</th>
					<th>Course:</th>
					<th>Amount:</th>
					<th>Address:</th>
					<th>city:</th>
					<th>Country:</th>
					<th>Zipcode:</th>
				</tr>
			</thead>
			<tbody>
				<%
				Connection dbs = Db_Conn.getCon();
				String q = "Select * from registration";
				PreparedStatement ps = dbs.prepareStatement(q);
				ResultSet set = ps.executeQuery();

				while (set.next()) {
					String id = set.getString("id");
					String name = set.getString("name");
					String phone = set.getString("phone");
					String email = set.getString("email");
					String branch = set.getString("branch");
					String course = set.getString("course");
					String amount = set.getString("amount");
					String address = set.getString("address");
					String city = set.getString("city");
					String country = set.getString("country");
					String zipcode = set.getString("zipcode");
				%>
				<tr>
					<td><%=id%></td>
					<td><%=name%></td>
					<td><%=phone%></td>
					<td><%=email%></td>
					<td><%=branch%></td>
					<td><%=course%></td>
					<td><%=amount%></td>
					<td><%=address%></td>
					<td><%=city%></td>
					<td><%=country%></td>
					<td><%=zipcode%></td>


					<td><a type="button"
						href="update_res.jsp?id=<%=set.getString("id")%>"
						class="btn btn-warning btn-sm">Update</a> <a type="button"
						href="delete_res.jsp?id=<%=set.getString("id")%>"
						class="btn btn-danger btn-sm">Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>