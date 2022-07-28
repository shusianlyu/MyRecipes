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
<style>
img {
  max-width: 50%;
  height: auto;
}
</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
	<div class="main">

		<!-- donate recipes form -->
		<section class="donate-recipes">
			<div class="container">
				<div class="donate-recipes-content">
					<div class="donate-form">
						<h2 class="form-title">Donate Recipes</h2>
					
						<form method="post" action="Donate_Recipes" class="donate-form"
							id="donate-form">
							<div class="form-group">
								<p><label for="title">Recipe title:</label></p><input
									type="text" name="title" id="title" placeholder="Recipe title" required maxlength="45"/>
							</div>
							<div class="form-group">
								<p><label for="ingredients">Ingredients:</label></p>
								<textarea id="ingredients" name="ingredients" rows="2" cols="50"></textarea>
							</div>
							<div class="form-group">
								<p><label for="description">Description:</label></p>
								<textarea id="description" name="description" rows="4" cols="50"></textarea>
							</div>
							<div class="form-group">
								<p><label for="method">Method:</label></p>
								<textarea id="method" name="method" rows="3" cols="50"></textarea>
							</div>
							<div class="form-group">
								<p><label for="type">Type:</label></p><input
									type="text" name="type" id="type" placeholder="Recipe type" required maxlength="20"/>
							</div>
							<div class="form-group">
								<p><label for="serving_size">Serving Size:</label></p><input
									type="number" name="serving_size" id="serving_size" required/>
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="donate" id="donate"
									class="form-submit" value="Submit" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup.jpg" alt="sing up image">
						</figure>
					</div>
					<a href="app.jsp" class="back-link">Go back to main page?</a>
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
		swal("Congrats", "Recipes added successfully", "success");
	}
	</script>

</body>
</html>