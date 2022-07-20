<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by MyRecipes</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css (to be edit!)-->
<!-- <link rel="stylesheet" href="css/style.css"> -->
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="Registration" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account-circle"></i></label> <input
									type="text" name="username" id="username" placeholder="Your username" required maxlength="10"/>
							</div>
							<div class="form-group">
								<label for="first_name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="first_name" id="first_name" placeholder="Your First Name" required maxlength="40"/>
							</div>
							<div class="form-group">
								<label for="last_name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="last_name" id="last_name" placeholder="Your Last Name " required maxlength="40" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required maxlength="50"/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/sign-up-image.png" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Already had an account?</a>
					</div>
				</div>
			</div>
		</section>
	<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("pass").value;
        var confirmPassword = document.getElementById("re_pass").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats", "Account Created Successfully", "success");
	}
</script>

</body>
</html>