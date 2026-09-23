<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String course = request.getParameter("course");
	String description = request.getParameter("description");
	String fees = request.getParameter("fees");
	String duration = request.getParameter("duration");
	String project = request.getParameter("project");
	
	
	
	
	int i=0;
	try 
	{
		Connection db = Db_Conn.getCon();
		String q = "insert into course(course,description,fees,duration,project)values(?,?,?,?,?)";
		PreparedStatement ps = db.prepareStatement(q);
		ps.setString(1, course);
		ps.setString(2, description);
		ps.setString(3, fees);
		ps.setString(4,duration);
		ps.setString(5, project);
		
		
		
		i=ps.executeUpdate();
		if(i>0) {
			response.sendRedirect("C.jsp");
		}
		else{
			out.print("<center><h2>Error inserting course</h2></center>");
	        RequestDispatcher rd = request.getRequestDispatcher("C.jsp");
	        rd.include(request, response);
		}
		
		
		
		
	} 
	catch (Exception e) 
	{
		e.printStackTrace();
	
	}
%>
</body>
</html>