<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>

</head>
<body>
<div class="offset-lg-3 col-lg-6 mt-3">
	 <div class="row">
    	 <div class="offset-lg-3 col-lg-6">
    		 <form action="ForgetPasswordAction.jsp" method="post">
    			 <div class="card">
    				 <div class="card-header">
    					<h2 class="text-center">Forget Password</h2>
    				 </div>
    				 <div class="card-body">
    				 <div class="form-group">
    					<label>ID <span class="errmsg">*</span></label>
    					<input class="form-control" type="number" name="id" placeholder="Id"/>
    				 </div>
    				 <div class="form-group">
    					<label>New Password <span class="errmsg">*</span></label>
    					<input class="form-control" type="password" name="password1" placeholder="New Password" />
    				 </div>
    				 <div class="form-group">
    					 <label>Confirm Password <span class="errmsg">*</span></label>
    					<input class="form-control" type="password" name="password2" placeholder="Cofirm Password" />
    				 </div>
    				 </div>
    				 <div class="card-footer">
				        <button type="submit" class="btn btn-primary">Forget</button>
				    	<a href="login.jsp" class="btn btn-primary" type="buttom">Login</a>
					</div>
    			</div>
    		</form>
    	</div>
 	</div>
</div>
</body>
</html>