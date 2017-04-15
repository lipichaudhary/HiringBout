	function validateLoginForm(){
		var accusername = document.forms["login-form"]["username"].value;
		var accpassword = document.forms["login-form"]["password"].value;
		if(accusername=="" || accpassword==""){
			document.getElementById('loginErrors').style.display = 'block';
		     return false;
		}
	}
	
	function ValidateRegistrationForm(){
		var emailaddress = document.forms["Registration-form"]["emailaddress"].value;
		var accpassword = document.forms["Registration-form"]["accpassword"].value;
		var accusername = document.forms["Registration-form"]["accusername"].value;
		if(accusername=="" || accpassword=="" || emailaddress==""){
			document.getElementById('registrationError').style.display = "block";
			return false;
		}
		
	}
