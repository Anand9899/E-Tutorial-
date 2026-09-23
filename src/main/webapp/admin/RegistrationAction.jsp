<%@page import="java.sql.PreparedStatement"%>
<%@page import="Conn.Db_Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Action</title>
</head>
<body>
	<%
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
	try {
		Connection dbs = Db_Conn.getCon();
		String ins = "insert into registration(name,phone,email,branch,course,amount,address, city, country,zipcode)values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = dbs.prepareStatement(ins);
		ps.setString(1, name);
		ps.setString(2, phone);
		ps.setString(3, email);
		ps.setString(4, branch);
		ps.setString(5, course);
		ps.setString(6, amount);
		ps.setString(7, address);
		ps.setString(8, city);
		ps.setString(9, country);
		ps.setString(10, zipcode);
		i = ps.executeUpdate();
		if (i > 0) {

			out.println("<script type='text/javascript'>");
			out.println("alert('Your message has been sent. Thank you!');");
			out.println("window.location.href = '../RegistrationForm.jsp';"); // Redirect after alert
			out.println("</script>");

		} else {
			out.print("Enter valid input");
			RequestDispatcher rd = request.getRequestDispatcher("../RegistrationForm.jsp");
			rd.include(request, response);
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

</body>
</html>