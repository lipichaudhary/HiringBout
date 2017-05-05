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
		<link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="../assets/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="../assets/includes/css/styles.css" rel="stylesheet">
		
		<!-- Include Modernizr in the head, before any other Javascript -->
		<script src="../assets/includes/js/modernizr-2.6.2.min.js" />"  ></script>	
		
		<!-- Include script.js in the head, before any other Javascript -->
		<script src="../assets/includes/js/script.js" />"  ></script>

</head>
<body>
	<div class="navbar navbar-top-fixed body-padding">
				
		<div class="container" id="forCollapsed">
					
		<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
		<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	
		<a class="navbar-brand" href="/"><img src="assets/images/logo.png" alt="Your Logo"></a>
		
		<div class="nav-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav nav-pills">
				<li class="active">
					<a href="#">Dashboard</a>
				</li>
				
				<li>
					<a href="#">Contests</a>
				</li>
				
				<li>
					<a href="#">Jobs</a>
				</li>
				
				<li>
					<a href="#">Blog</a>
				</li>
				
			<!-- 	<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <strong class="caret"></strong></a>
					
					<ul class="dropdown-menu">
						<li>
							<a href="#">Web Design</a>
						</li>
						
						<li>
							<a href="#">Web Development</a>
						</li>
						
						<li>
							<a href="#">SEO</a>
						</li>
						
						<li class="divider"></li>
						
						<li class="dropdown-header">More Services</li>
						
						<li>
							<a href="#">Content Creation</a>
						</li>
						
						<li>
							<a href="#">Social Media Marketing</a>
						</li>
					</ul>end dropdown-menu
				</li> -->
			</ul>
			
			<form class="navbar-form pull-left">
				<input type="text" class="form-control styleForSearchInput" placeholder="Search this site..." id="searchInput" >
				<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
			</form>  <!-- end navbar-form -->

	
			<ul class="nav navbar-nav pull-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> My Account <strong class="caret"></strong></a>
					
					<ul class="dropdown-menu">
						<li>
							<a href="#"><span class="glyphicon glyphicon-wrench"></span> Settings</a>
						</li>
						
						<li>
							<a href="#"><span class="glyphicon glyphicon-refresh"></span> Update Profile</a>
						</li>
						
						<li>
							<a href="#"><span class="glyphicon glyphicon-briefcase"></span> Feedback</a>
						</li>
						
						<li class="divider"></li>
						
						<li>
							<a href="/HiringBout-Web/login"><span class="glyphicon glyphicon-off"></span> Sign out</a>
						</li>
					</ul>
				</li>
			</ul><!-- end nav pull-right -->
		</div><!-- end nav-collapse -->
	
									
					</div> <!-- forCollapsed container closed-->
				
				</div> <!-- top nav closed -->
<!-- Navigation Top HTML ends -->

 	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<div class="row">
					<div class="col-sm-12">	
					<a href="#"><image src="../assets/images/profilePlaceholder.png" alt="placeholder" height="200" weight="200" class="imageBorder"></a>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8">
					<input type"button" class="btn btn-primary pull-left default-row-spacer" value="Change Avatar"></input>
					</div>
				</div>
			</div>
			
			<!-- below empty div is used to make space between profile pic and profile details form distance. 
			Becuase, bootstrap offset was not working -->
			<div class="col-sm-1">
			</div>
			
			<div class="col-sm-6 col-sm-offset-4">
			<div class="panel-body ">
		      <div class="form-group">
		        <form id="Registration-form" action="registrationsuccess" method="post" role="form" style="display: block;" onsubmit="return ValidateRegistrationForm()">
		         <div class="form-group">
		          <input type="text" name="name" id="fistname" tabindex="1" class="form-control" placeholder="First and Last Name">
		         </div>
				 <div class="form-group">
		          <input type="text" name="location" id="location" tabindex="2" class="form-control" placeholder="Your current location">
		         </div>
		          <div class="form-group">
		          <input type="text" name="highestducation" id="highestducation" tabindex="3" class="form-control" placeholder="Highest Education">
		         </div>
		          <div class="form-group">
		          <input type="text" name="school" id="school" tabindex="4" class="form-control" placeholder="School of Highest Education">
		         </div>
		         <div class="form-group">
		          <input type="text" name="company" id="company" tabindex="5" class="form-control" placeholder="Current or Last Company">
		         </div>
		         <div class="form-group">
		          <input type="text" name="language" id="language" tabindex="6" class="form-control" placeholder="Language Known">
		         </div>
		         <div class="form-group">
		          <input type="text" name="certification" id="certification" tabindex="7" class="form-control" placeholder="Certification Ex: Java Certification">
		         </div>
		         <div class="form-group">
		          <input type="text" name="internship" id="internship" tabindex="8" class="form-control" placeholder="Internship Details in Breif">
		         </div>
		         <div class="form-group">
		          <input type="text" name="contactnumber" id="contactnumber" tabindex="9" class="form-control" placeholder="Contact Number">
		         </div>
		         <div class="form-group">
		          <input type="text" name="website" id="website" tabindex="10" class="form-control" placeholder="Your Website Link">
		         </div>
		         <div class="form-group">
		          <textarea name="bio" id="bio" tabindex="11" class="form-control" rows="4" placeholder="Write your Bio to let people know you better"></textarea>
		         </div>
		         <div class="form-group">
		          <div class="row">
		           <div class="col-sm-12">
		            <input type="submit" id="register-submit" tabindex="4" class="form-control btn btn-primary btn-lg btn-block btn-success active" value="Update Profile">
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