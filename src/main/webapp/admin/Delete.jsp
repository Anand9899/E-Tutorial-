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
 int i =0;
 int z = 0;
 try{
	 Connection dbs = Db_Conn.getCon();
	 String del = "delete from course where id = ?";
	 PreparedStatement ps = dbs.prepareStatement(del);
	 ps.setString(1, id);
	 i = ps.executeUpdate();
 }
 catch( Exception e){
	 e.printStackTrace();
	 
 }
 if(i >0){
 	response.sendRedirect("C.jsp");
 }
 else{
 	 out.print("data not inserted");
	 RequestDispatcher rd = request.getRequestDispatcher("Delete.jsp");
	 rd.forward(request, response);
 }
 %>

</body>
</html>