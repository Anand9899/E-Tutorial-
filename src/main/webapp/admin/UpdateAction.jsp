<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
<% 
String id = request.getParameter("id");
String course = request.getParameter("course");
String description = request.getParameter("description");
String fees = request.getParameter("fees");
String duration = request.getParameter("duration");
String project = request.getParameter("project");

;
 int i = 0;
  
 try{
	 Connection dbs = Db_Conn.getCon();
	 String up = "UPDATE course SET course=?,description=?,fees=?,duration=?,project=? where id = ? ";
	 PreparedStatement ps = dbs.prepareStatement(up);
	 ps.setString(1, course);
	 ps.setString(2, description);
	 ps.setString(3, fees);
	 ps.setString(4, duration);
	 ps.setString(5, project );
	 ps.setString(6, id); 
	 
	 i = ps.executeUpdate();
	 
	 
	 
 }
 catch(Exception e ){
	 e.printStackTrace();
 }
    if(i >0){
    	response.sendRedirect("C.jsp");
    }
    else{
    	 out.print("data not inserted");
    	 RequestDispatcher rd = request.getRequestDispatcher("Update.jsp");
    	 rd.forward(request, response);
    }
%>
</body>
</html>