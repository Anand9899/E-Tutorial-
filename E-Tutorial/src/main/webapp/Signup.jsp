<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="offset-lg-3 col-lg-6 mt-3">
	<form class="container" action="Signup" method="post">
		<div class="card">
   			<div class="card-header">
   				<h3 class="text-center">Create a new account</h3>
   			</div>
   			<div class="card-body">
  	 			<div class="row">
   					<div class="col-lg-6">
     					<div class="form-group">
         					<label>User Name<span class="errmsg">*</span></label>
         					<input class="form-control" placeholder="Name" name="user"></input>
    	 				</div>
   					</div>
				   <div class="col-lg-6">
				  	<div class="form-group">
				       <label>Password <span class=errmsg></span>*</label>
				       <input type="password" class="form-control" name="password"></input>
				   	</div>   
				   </div>
   
	  		       <div class="col-lg-6">
					    <label>Full Name <span class=errmsg></span>*</label>
					    <input type="text" class="form-control" placeholder="Full Name" aria-label="First name" name="fname"></input>
			  		</div>
  
				   <div class="col-lg-6">
				    <label>Email <span class=errmsg></span>*</label>
				    <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="email"></input>
				  </div>
  
			      <div class="col-lg-6">
				    <label>Phone<span class=errmsg></span>*</label>
				    <input type="text" class="form-control" placeholder="Phone" name="phone"></input>
			  	  </div>
   
  				  <div class="col-lg-6">
   					<label>State<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select" name="state">
    					<option value="bihar" selected="selected">Chose State</option>
      					<option value="bihar">Bihar</option>
					    <option value="delhi">Delhi</option>
					    <option value="agra">Agra</option>
					    <option value="jaipur">Jaipur</option>
    				</select>
  				</div>
  
			    <div class="col-lg-12">
				   <label>Address<span class=errmsg></span>*</label>
				   <textarea class="form-control" name="address"></textarea>
			    </div>
  
                <div class="col-lg-6">
  					<div class="form-group">
    					<label class="errmsg">Gender<span>*</span></label>
    					<br>
					    <input class="app-check" type="radio" name="gender" value="male">
					    <label> Male</label>
						<input class="app-check" type="radio" name="gender" value="female">
						<label> Female</label>
						<input class="app-check" type="radio" name="gender" value="other">
						<label>Other</label>
					</div>
  				</div>
 			</div>
   		  </div>
		  <div class="card-footer">
		  	<button type="submit" class="btn btn-primary col-lg-2">Signup</button>
		  	<a href="login.jsp" class="btn btn-primary" type="buttom">Login</a>
  		  </div>
		</div>
	  </div>
    </form>
</div>
</body>
</html>