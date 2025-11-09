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
<title>Android Programming</title>
<%@include file="AdminNavbar.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="offset-lg-3 col-lg-6 mt-2" style="margin-top:100px"><br><br>
       <form class="container" action="cAction.jsp" method="post">
          <div class="card">
   			<div class="card-header">
   				<h3 class="text-center">Android Programming Language</h3>
   			</div>
   			<div class="card-body">
  	 			<div class="row">
   					<div class="col-lg-6">
     					<div class="form-group">
         					<label>Course Name<span class="errmsg">*</span></label>
         					<input class="form-control" placeholder="Enter Course Name" name="course" value="Android" readonly="readonly"></input>
    	 				</div>
   					</div>
				   <div class="col-lg-6">
   					<label>Duration<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="duration">
    					<option value="duration" selected="selected">Duration</option>
      					<option value="1 months">2 Months</option>
					    <option value="3 months">3 Months</option>
					    <option value="4 months">4 Months</option>
					    <option value="6 months">6 Months</option>
    				</select>
  				</div>
  				  <div class="col-lg-6">
   					<label>Fees<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="fees">
    					<option value="select fess" selected="selected">Select Fees</option>
      					<option value="6000">6000</option>
					    <option value="12000">12000</option>
					    <option value="18000">18000</option>
					    <option value="25000">25000</option>
    				</select>
  				</div>
  				<div class="col-lg-6">
   					<label>Project<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="project">
    					<option value="project" selected="selected">Project</option>
      					<option value="mini">Mini Projects</option>
					    <option value="major">Major Projects</option>
    				</select>
  				</div>
                <div class="col-lg-12">
				  	<div class="form-group">
				       <label>Description <span class=errmsg></span>*</label>
				       <textarea class="form-control" placeholder="Enter Description" name="description"></textarea>
				   	</div>   
				   </div>
 			</div>
   		  </div>
		  <div class="card-footer">
		  	<button type="submit" class="btn btn-primary col-lg-2">Submit</button>
  		  </div>
		</div>
	  </div>   
     </form>
</div>
 <%   // -------------------Ubdate-------------------------------%>
<div class="container-fluid mt-5" style="margin-lef:80px; width:90%; float: right;">
<h5 class="text-center bg-success text-light py-4">Student</h5>
<table class="table table-bordered table-hover">
<thead class="bg-success  text-center">
	<tr>
		<th>ID</th>
		<th>Course</th>
		<th>Description</th>
		<th>Fees</th>
		<th>Duration</th>
		<th>project</th>
		<th>Action</th>
	</tr>
</thead>
<tbody>
<%
	Connection dbs = Db_Conn.getCon();
	String q = "Select * from course";
	PreparedStatement ps = dbs.prepareStatement(q);
	ResultSet set = ps.executeQuery();
	
	while(set.next()){
		String id = set.getString("id");
		String course = set.getString("course");
		String description = set.getString("description");
		String fees = set.getString("fees");
		String duration = set.getString("duration");
		String project = set.getString("project");
		
		
		if(course.equals("Android")){
		%>
			<tr>
				<td><%= id %></td>
				<td><%= course %></td>
				<td><%= description %></td>
				<td><%= fees %></td>
				<td><%= duration %></td>
				<td><%= project %></td>
				
				<td><a  type="button" href="Update.jsp?id=<%=set.getString("id") %>" class="btn btn-warning btn-sm">Update</a>
				<a  type="button" href="Delete.jsp?id=<%=set.getString("id") %>" class="btn btn-danger btn-sm">Delete</a></td>
			</tr>
		<% 
		} 
	}
%>
</tbody>
</table>
<center><a href='Signup.jsp'>Add_data</a></center>
</div>
</body>
</html>