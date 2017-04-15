<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>CodingBout</title>
	<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
		<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="assets/includes/css/styles.css" rel="stylesheet">
		
		
    <!-- Include Modernizr in the head, before any other Javascript -->
    <script src="assets/includes/js/modernizr-2.6.2.min.js" />"  > </script>
    
    <!-- Include script.js in the head, before any other Javascript -->
		<script src="assets/includes/js/script.js" />"  ></script>
    		
    </head>

<body>
	<div class="container" id="main">
	<div class="row">
	<div class="panel panel-default panelstyle" id="panel">
	
	<div class="panel-heading" >
    <h4 class="panel-title text-center">Register In</h4>
   </div><!-- Panel Title Ends -->
	
	<div id="registrationError" class="alert alert-danger Registrationformvalidation" role="alert">Please enter all the fields</div>
	
	<div class="panel-body">
      <div class="form-group">
        <form id="Registration-form" action="registrationsuccess" method="post" role="form" style="display: block;" onsubmit="return ValidateRegistrationForm()">
         <div class="form-group">
          <input type="text" name="name" id="fistname" tabindex="1" class="form-control" placeholder="First and Last Name">
         </div>
		  <div class="form-group">
          <input type="text" name="emailaddress" id="emailaddress" tabindex="2" class="form-control" placeholder="Email Address">
		  </div>
          <div class="form-group">
          <input type="text" name="accusername" id="accusername" tabindex="3" class="form-control" placeholder="Your Account Username">
		  </div>
          <div class="form-group">
          <input type="text" name="accpassword" id="accpassword" tabindex="4" class="form-control" placeholder="Your Account Password">
		  </div>
         <div class="form-group">
          <div class="row">
           <div class="col-sm-12 col-sm-offset-3">
            <input type="submit" id="register-submit" tabindex="4" class="form-control btn btn-primary btn-lg btn-block btn-success active" value="Create An Account">
           </div>
          </div>
         </div> 
        </form>
      </div>
	  </div><!-- panel ends -->	
	  
	  </div>
	  </div>
	  </div>
	  
	</body>
</html>