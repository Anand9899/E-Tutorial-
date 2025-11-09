<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="offset-lg-3 col-lg-6 mt-3">
    		<div class="row">
    			<div class="offset-lg-3 col-lg-6">
    				<form action="LoginAction" method="post">
    					<div class="card">
    						<div class="card-header">
    							<h2 class="text-center">User Login</h2>
    						</div>
    						<div class="card-body">
    							<div class="form-group">
    								<label>Email <span class="errmsg">*</span></label>
    								<input class="form-control" type="email" name="email" placeholder="Email" />
    							</div>
    							<div class="form-group">
    								<label>Password <span class="errmsg">*</span></label>
    								<input class="form-control" type="password" name="password" placeholder="Password" />
    							</div>
    						</div>
    						 <div class="card-footer">
				             	<button type="submit" class="btn btn-primary">Login</button>
				             	<a href="ForgetPassword.jsp" class="btn btn-primary" type="buttom">Forget_Password</a>
				          	</div>
    					</div>
    				</form>
    			</div>
    		</div>
    </div>
</html>