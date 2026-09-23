<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Conn.Db_Conn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ForgetPasswordActions Page</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pass1 = request.getParameter("password1");
	String pass2 = request.getParameter("password2");
	
	int i = 0;
	if(pass1.equals(pass2))
	{
		try 
		{
			Connection con = Db_Conn.getCon();
			String ins = "update course set password=? where id=?";
			PreparedStatement ps = con.prepareStatement(ins);
			
			ps.setString(1, pass1);
			ps.setString(2, id);
			i = ps.executeUpdate();
			
			if(i > 0) 
			{
				response.sendRedirect("Login.html");
			}
			else 
			{
				out.print("<center><h2>Password not matched</h2></center>");
				RequestDispatcher rd = request.getRequestDispatcher("ForgetPassowrd.jsp");
				rd.include(request, response);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	else 
	{
		out.print("<center><h2>Enter a valid password</h2></center>");
		RequestDispatcher rd = request.getRequestDispatcher("ForgetPassowrd.jsp");
		rd.include(request, response);
	}
%>
</body>
</html>