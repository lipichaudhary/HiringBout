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
		<script src="assets/includes/js/modernizr-2.6.2.min.js" />"  ></script>	
		
		<!-- Include script.js in the head, before any other Javascript -->
		<script src="assets/includes/js/script.js" />"  ></script>
			
	</head>
	
	<body>

<!-- Navigation Top HTML Starts -->
			<div class="navbar navbar-top-fixed body-padding">
				
					<div class="container" id="forCollapsed">
					
						<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
						<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
			
						<a class="navbar-brand" href="/"><img src="assets/images/CODELOG.png"></a>
						
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

		<div class="row">
		<div class="panel panel-default panelstyle" id="panel">
	
			<div class="panel-heading" >
				<h4 class="panel-title text-center">Sign in</h4>
			</div><!-- Panel Title Ends -->
	
		
	
		<div id="loginErrors" class="alert alert-danger loginformvalidation" role="alert">Either the Username or Password is left empty. Please enter login Credentials.</div>
		<div id="authenticationFail" class="alert alert-danger" role="alert">${authenticationFailMessage}</div>
		
		<script language="javascript">
		var authenticationFail = "${authenticationFailMessage}";
		if(authenticationFail==""){
			document.getElementById('authenticationFail').style.display = "none";	
		}
		</script>
		<div class="panel-body">
						<div class="form-group">
								<form id="login-form" action="home" method="post" role="form" style="display: block;" onsubmit="return validateLoginForm()">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-12 col-sm-offset-3">
												<input type="submit" id="login-submit" tabindex="4" class="form-control btn btn-primary btn-lg btn-block btn-success active" value="Log In">
											</div>
										</div>
									</div> 
								</form>
						</div>
							
	</div> <!-- panel ends -->
	</div> <!-- div ends --> 	
	</div>	<!-- row ends -->
			
		 	
			</div> <!--  main container closed -->
		
			
	</body>
</html>