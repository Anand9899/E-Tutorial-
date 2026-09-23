<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><br><br>
<%@include file="AdminNavbar.jsp" %>
<div class="offset-lg-3 col-lg-6 mt-3">
	<form class="container" action="Signup" method="post">
		<div class="card">
   			<div class="card-header">
   				<h3 class="text-center">CSharp Programming Language</h3>
   			</div>
   			<div class="card-body">
  	 			<div class="row">
   					<div class="col-lg-6">
     					<div class="form-group">
         					<label>Course Name<span class="errmsg">*</span></label>
         					<input class="form-control" placeholder="Enter Course Name" name="course"></input>
    	 				</div>
   					</div>
				   <div class="col-lg-6">
				  	<div class="form-group">
				       <label>Description <span class=errmsg></span>*</label>
				       <textarea class="form-control" placeholder="Enter Description" name="description"></textarea>
				   	</div>   
				   </div>
  				  <div class="col-lg-6">
   					<label>Fees<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="fess">
    					<option value="select fess" selected="selected">Select Fees</option>
      					<option value="6000">6000</option>
					    <option value="12000">12000</option>
					    <option value="18000">18000</option>
					    <option value="25000">25000</option>
    				</select>
  				</div>
  				<div class="col-lg-6">
   					<label>Duration<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="duration">
    					<option value="duration" selected="selected">Duration</option>
      					<option value="1 months">1 Months</option>
					    <option value="3 months">3 Months</option>
					    <option value="4 months">4 Months</option>
					    <option value="6 months">6 Months</option>
    				</select>
  				</div>
  				<div class="col-lg-6">
   					<label>Project<span class=errmsg>*</span></label>
    				<select id="inputState" class="form-control form-select"  name="duration">
    					<option value="project" selected="selected">Project</option>
      					<option value="mini">Mini Projects</option>
					    <option value="major">Major Projects</option>
    				</select>
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
  		  </div>
		</div>
	  </div>
    </form>
</div>
</body>
</html>