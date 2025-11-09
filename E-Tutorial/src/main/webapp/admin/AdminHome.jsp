
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
<title>Admin Home</title>
</head>
<body>
<%@include file="AdminNavbar.jsp" %><br>
<div class="container-fluid mt-5" style="margin-lef:80px; width:90%; float: right;">
<h5 class="text-center bg-success text-light py-4">Admin</h5>
<table class="table table-bordered table-hover">
<thead class="bg-success  text-center">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Subject</th>
		<th>Message</th>
		<th>Action</th>
	</tr>
</thead>
<tbody>
<%-- <%
	String email = (String)session.getAttribute("email").toString();
	out.print(email);
%> --%>

<%
	Connection dbs = Db_Conn.getCon();
	String q = "Select * from admin";
	PreparedStatement ps = dbs.prepareStatement(q);
	ResultSet set = ps.executeQuery();
	
	while(set.next()){
		String id = set.getString("id");
		String name = set.getString("name");
		String email = set.getString("email");
		String subject = set.getString("subject");
		String message = set.getString("message");

		%>
			<tr>
				<td><%= id %></td>
				<td><%= name %></td>
				<td><%= email %></td>
				<td><%= subject %></td>
				<td><%= message %></td>

				<td><a  type="button" href="Delete.jsp?id=<%=set.getString("id") %>" class="btn btn-danger btn-sm">Delete</a></td>
			</tr>
		<% 
	}
%>
</body>
</html>