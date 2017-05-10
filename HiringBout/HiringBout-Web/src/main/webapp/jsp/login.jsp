<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<script src="assets/includes/js/modernizr-2.6.2.min.js"></script>	
			
	</head>
	
	<body style = "background-image: url(assets/images/coding_img.jpg)">

<!-- Navigation Top HTML Starts -->
			<div class="navbar navbar-top-fixed body-padding">
				
					<div class="container" id="forCollapsed">
					
						<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
						<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
			
						<a class="navbar-brand" href="/"><img src="assets/images/CBLOGO.jpg"></a>
						
						<div class="nav-collapse collapse navbar-responsive-collapse" id="collapsedNav">
						
						<div>
							<h4 class="nav navbar-nav pull-right">New to codingBout? <a href="/HiringBout-Web/registrationform" class="btn btn-large btn-link">Register</a> </h4>
						</div>
						</div> <!-- CollapseNav closed -->
									
					</div> <!-- forCollapsed container closed-->
				
				</div> <!-- top nav closed -->
<!-- Navigation Top HTML ends -->
			
<!-- Main Body HTML starts -->				
		<div class="container" id="main">   <!-- main body container. Top nav and footer is kept outside it. -->

		 <div class="fContStyle">
	
		<div class="form-group">
			<form id="login-form" action="home" method="post" role="form" style="display: block;">
				<h4 class="pcL">Sign in</h4>
	
		
	
		<div id="loginErrors" class="alert alert-danger loginformvalidation" role="alert">Either the Username or Password is left empty. Please enter login Credentials.</div>
		<div id="authenticationFail" class="alert alert-danger" role="alert">${authenticationFailMessage}</div>
		
		<script language="javascript">
		//Hide the div with id="authenticationFailMessage" if authentication dose not fails. 
		var authenticationFail = "${authenticationFailMessage}";
		if(authenticationFail==""){
			document.getElementById('authenticationFail').style.display = "none";	
		}
		</script>
		
	        <div class="form-group">
          <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" style="width: 350px; margin:0 auto;"/>
                </div>
                <div class="form-group">
          <input type="text" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" style="width: 350px; margin:0 auto;"/>
		        </div>
				<div class="form-group">
						<div class="" style="width: 350px; margin:0 auto;">
								<input type="submit" id="login-submit" tabindex="4" class="form-control btn btn-primary btn-lg btn-block btn-success active" value="Log In"  >
						</div>
				</div> 
			</form>
		</div>
	</div>
</div> <!--  main body container closed -->

<!-- footer starts -->	
<footer>
    <div id="foot">
	      <div class = "foot-content">
		       <a class="foot-content footer-link" href="" >About Us </a>
		  </div>
		  <div class = "foot-content">
		       <a class="foot-content footer-link" href="" >Contact Us </a>
		  </div>
		  <div class = "foot-content">
		       <a class="foot-content footer-link" href="" >Wiki </a>
		  </div>
	</div>
</footer>	
		 	
			</div> <!--  main container closed -->
			
	<!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="assets/includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="assets/includes/js/script.js"></script>		
			
	</body>
</html>
