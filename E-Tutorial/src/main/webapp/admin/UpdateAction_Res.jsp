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
<title>Insert title here</title>
</head>
<body>
    <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String branch = request.getParameter("branch");
    String course = request.getParameter("course");
    String amount = request.getParameter("amount");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String country = request.getParameter("country");
    String zipcode = request.getParameter("zipcode");
    int i = 0;
    try{
    	Connection db = Db_Conn.getCon();
    	String q = "update  registration set name=?,phone=?,email=?,branch=?, course=?,amount=?,address=?,city=?,country=?,zipcode=? where id = ?";
    	PreparedStatement ps = db.prepareStatement(q);
    
    	ps.setString(1,name);
    	ps.setString(2,phone);
    	ps.setString(3,email);
    	ps.setString(4,branch);
    	ps.setString(5,course);
    	ps.setString(6,amount);
    	ps.setString(7,address);
    	ps.setString(8,city);
    	ps.setString(9,country);
    	ps.setString(10,zipcode);
    	ps.setString(11,id);
    	
    	i = ps.executeUpdate();
    	if(i>0) {
			response.sendRedirect("RegistrationStudent.jsp");
		}
		else 
		{
		    out.print("Enter valid input");
			RequestDispatcher rd = request.getRequestDispatcher("C.jsp");
			rd.include(request, response);
		}
    	
    }
    catch(Exception e){
    	e.printStackTrace();
    }
    %>
</body>
</html>