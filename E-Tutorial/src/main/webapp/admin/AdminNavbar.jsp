<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Navbar</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
<style type="text/css">
	.sidenav 
	{
		height: 100%;
		width: 160px;
		position: fixed;
		z-index: 1;
		top: 0;
		left: 0;
		background-color: #111;
		overflow-x: hidden;
		padding: 5px;
	}
	/*The navigation menu links*/
	.sidenav a 
	{
		padding: 6px 8px 6px 16px;
		text-decoration: none;
		font-size: 20px;
		color: #818181;
		display: block
	}
	/* When you mouse over the navigation links, change their color */
	.sidenav a:hover 
	{
		color: #f1f11;
	}
	/* Style page content */
	.main 
	{
		margin-left: 200px; /* Same as the width of the sidebar */
		padding: 0px 10px;
	}
	/* On smaller screens, where height is less than 450px, change the style of the sidebar (less padding and a smaller font size) */

	@medie screen and (max-height: 450px) 
	{
		.sidenav (padding-top: 15px;)
		.sidenav a {font-size: 18px)
	}
</style>
</head>
<body>
<div class="sidenav"><br><br>
	<a href="C.jsp">C Language</a><br>
	<a href="C++.jsp">C++</a><br>
	<a href="Asp.jsp">Asp.net</a><br>
	<a href="php.jsp">PHP</a><br>
	<a href="CSharp.jsp">CSharp</a><br>
	<a href="java.jsp">Java</a><br>
	<a href="android.jsp">Android</a><br>
	<a href="hadoop.jsp">Hadoop</a><br>
	<a href="node.jsp">Node Js</a><br>
	<a href="python.jsp">Pythan</a><br>
</div>
<div class="main">
	<div class="navbar navbar-expand-sm navbar-dark bg-info fixed-top">
    <div class="container">
        <div class="collapse navbar-collapse" id="navbarid">
            <ul class="navbar-nav ms-auto">
             <li class="nav-item">
                    <a class="nav-link text-dark" href="AdminHome.jsp">AdminHome</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="RegistrationStudent.jsp">Registration</a>
                </li>
               <!--  <li class="nav-item">
                    <a class="nav-link text-dark" href="Student.jsp">Student</a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link text-dark" href="Logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>