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
<title>Update Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
  
 
  <%
  String id = request.getParameter("id");
  Connection dbs = Db_Conn.getCon();
  String q = "select * from course where id= ?";
  PreparedStatement ps = dbs.prepareStatement(q);
  ps.setString(1,id );
  ResultSet set = ps.executeQuery();
  while(set.next()){
	  %>
	    <div class="offset-lg-3 col-lg-6 mt-3">
                  <form  class="container" action="UpdateAction.jsp" method="post">
		          <div class="card">
		          <div class="card-header ">
		             <h2 class="text-center"> Update data</h2>
		             </div>
		             <div class="card-body" >
		               <div class="row">
		               	     <div class="col-lg-6">
			                 <div class="form-grop">
			                   <label> ID<span class="errmsg">*</span></label> 
			                   <input class="form-control" type="number"  name="id" 
			                   value="<%= set.getString("id")%>" readonly="readonly" >
			                 </div>
			               </div>
			                   <div class="col-md-6 ">
                           <div class="form-group">
         					<label>Course Name<span class="errmsg">*</span></label>
         					<input class="form-control" placeholder="Enter Course Name" name="course"></input>
    	 				</div>
                       </div>
                       <div class="col-md-6 ">
                           <label>Duration<span class=errmsg>*</span></label>
		    				<select id="inputState" class="form-control form-select"  name="duration">
		    					<option value="duration" selected="selected">Duration</option>
		      					<option value="1 months">2 Months</option>
							    <option value="3 months">3 Months</option>
							    <option value="4 months">4 Months</option>
							    <option value="6 months">6 Months</option>
		    				</select>
                       </div>
                     <div class="col-md-6">
                         <div class="form-group">
                           <label>Fees<span class=errmsg>*</span></label>
		    				<select id="inputState" class="form-control form-select"  name="fees">
		    					<option value="select fess" selected="selected">Select Fees</option>
		      					<option value="6000">6000</option>
							    <option value="12000">12000</option>
							    <option value="18000">18000</option>
							    <option value="25000">25000</option>
		    				</select>
                         </div>
                      </div>
                      <div class="col-md-6">
                         <div class="form-group">
                           <label>Project<span class=errmsg>*</span></label>
		    				<select id="inputState" class="form-control form-select"  name="project">
		    					<option value="project" selected="selected">Project</option>
		      					<option value="mini">Mini Projects</option>
							    <option value="major">Major Projects</option>
		    				</select>
                       </div>
                    </div>
                    <div class="col-lg-6">
				  	<div class="form-group">
				       <label>Description <span class=errmsg></span>*</label>
				       <textarea class="form-control" placeholder="Enter Description" name="description"></textarea>
				   	</div>   
				   </div>
		               <div class="card-footer">
		               <button type="submit" class="btn btn-primary">Update</button>
		               </div>
		             </div>
		          
	          </form>
                  
         </div>
	  <% 
  }
  %>
</body>
</html>