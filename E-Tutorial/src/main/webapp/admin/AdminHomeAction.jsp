<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Action</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String subject = request.getParameter("subject");
	String message = request.getParameter("message");
	
	int i=0;
	try 
	{
		Connection db = Db_Conn.getCon();
		String q = "insert into admin(name,email,subject,message)values(?,?,?,?)";
		PreparedStatement ps = db.prepareStatement(q);
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, subject);
		ps.setString(4, message);	
		
		i=ps.executeUpdate();
		if(i>0) {
			out.println("<script type='text/javascript'>");
		    out.println("alert('Your message has been sent. Thank you!');");
		    out.println("window.location.href = '../contact.jsp';");  // Redirect after alert
		    out.println("</script>");
		}
		else{
			out.print("<center><h2>Error inserting course</h2></center>");
	        RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
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