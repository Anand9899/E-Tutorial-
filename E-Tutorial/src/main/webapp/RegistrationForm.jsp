<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      .logo-section{
      background: linear-gradient(to bottom right, #dceeff, #8ec6ff);
      padding:40px;
      text-align:ceter;
      height: 600px
      }
          .
    </style>
    
</head>
<body>
<%@include file = "Navbar.jsp" %>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-10 bg-light rounded shadow p-4">
            <div class="row">
                <div class="col-md-5 text-center mb-2 mt-4">
                  <div class="logo-section d-flex align-items-center justify-content-center">
           			 <div>
		                <h1 class="text-primary fw-bold">E-Tutorial</h1>
		                <p class="fs-5 text-dark">The IT Training School</p>
           		 	</div>
        		</div>   
      		</div>

                <!-- Right side form -->
                <div class="col-md-7">
                    <h4 class="mb-3 text-primary">Online Registration Form</h4>
                    <p class="mb-4 text-muted">Register online today and take the first step towards success!</p>

                    <form action="admin/RegistrationAction.jsp" method="post">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" required>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="text" name="phone" class="form-control" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>
                            <div class="col-md-6">
                                <label for="branch" class="form-label">Branch</label>
                                <select name="branch" class="form-select" required>
                                    <option value="">Select Branch</option>
                                    <option>Noida</option>
                                    <option>Gurgaon</option>
                                    <option>Ghaziabad</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="course" class="form-label">Course</label>
                                <select name="course" class="form-select" required>
                                    <option value="">Select Course</option>
                                    <option>Java</option>
                                    <option>Python</option>
                                    <option>Web Development</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="amount" class="form-label">Amount</label>
                                <input type="number" name="amount" class="form-control" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <textarea name="address" class="form-control" rows="2" required></textarea>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="city" class="form-label">City</label>
                                <input type="text" name="city" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label for="country" class="form-label">Country</label>
                                <input type="text" name="country" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label for="zipcode" class="form-label">Zipcode</label>
                                <input type="text" name="zipcode" class="form-control" required>
                            </div>
                        </div>

                        <div class="text-end">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
