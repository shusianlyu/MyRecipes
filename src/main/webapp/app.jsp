<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>MyRecipes</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<link href="css/search-form.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">MyRecipes</a>
			
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="groups">Group</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Donate_Recipes">Donate Recipes</a></li>	
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="signout">Log Out</a></li>				
					<form class="search-form" action="search_recipes">
  					<input type="text" placeholder="Search Recipes.." name="search">
			  		<button type="submit"><i class="fa fa-search"></i></button>
					</form>
				</ul>
			</div>
		</div>
	</nav>
<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/cooking.png"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To MyRecipes</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Find the Best Dishes for a Special Day</p>
		</div>
	</header>
	<!-- Menu Section-->
	<section class="page-section menu" id="menu">
		<div class="container">
			<!-- Menu Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Menu</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Menu Grid Items-->
			<div class="row justify-content-center">
				<!-- Menu Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal1">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/chef.png"
							alt="..." />
					</div>
				</div>
				<!-- Menu Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal2">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/search.png"
							alt="..." />
					</div>
				</div>
				<!-- Menu Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal3">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/favorite.png"
							alt="..." />
					</div>
				</div>
				<!-- Menu Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal4">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/friends.png"
							alt="..." />
					</div>
				</div>
				<!-- Menu Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal5">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/shopping.png"
							alt="..." />
					</div>
				</div>
				<!-- Menu Item 6-->
				<div class="col-md-6 col-lg-4">
					<div class="menu-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#menuModal6">
						<div
							class="menu-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="menu-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/menu/profile.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About Us</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">MyRecipes is a web-based service that provides a 
					collaborative ingredients list and recipe suggestions based on 
					the ingredients each individual has or a collaborative ingredients 
					list within a defined group that make cooking for an individual or 
					a group simple. Unlike wading through a bunch of recipe suggestions, 
					myRecipes handles your and your families' preferences without wasting 
					time deciding what to cook.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">MyRecipes will do the planning stage for you by finding 
					the best meal, which will be the perfect match for everyone’s preference, 
					different serving size,and limited ingredients. All you have to do is to 
					cook the meal and be ready to be served. This application will be accessible 
					through a home computer via browser.</p>
                </div>
			</div>
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Us</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								</div>
						</div>
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						1 Washington Square <br />SanJose, CA 95192
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Follow Us</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Menu Modals-->
	<!-- Menu Modal 1-->
	<div class="menu-modal modal fade" id="menuModal1"
		tabindex="-1" aria-labelledby="menuModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="menu-modal-title text-secondary text-uppercase mb-0">Adding Recipe</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/chef.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">Add your own recipe here! It requires that the title, category,
								 introduction, individual ingredients, procedures and special notes be entered 
								 separately. You can make it public to share with everyone or keep it for your own 
								 record.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Start Adding
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Menu Modal 2-->
	<div class="menu-modal modal fade" id="menuModal2"
		tabindex="-1" aria-labelledby="menuModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="menu-modal-title text-secondary text-uppercase mb-0">Searching Recipe</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/search.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">Find your favorite recipe today! You can search a recipe by their 
								ingredient, title, category, or method. By ingredient which you already have, you 
								can find the suitable recipe for it.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Start Finding
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Menu Modal 3-->
	<div class="menu-modal modal fade" id="menuModal3"
		tabindex="-1" aria-labelledby="menuModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="menu-modal-title text-secondary text-uppercase mb-0">Favorite Recipe</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/favorite.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Add Favor Recipe
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Menu Modal 4-->
	<div class="menu-modal modal fade" id="menuModal4"
		tabindex="-1" aria-labelledby="menuModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Friends</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/friends.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Friendds list
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Menu Modal 5-->
	<div class="menu-modal modal fade" id="menuModal5"
		tabindex="-1" aria-labelledby="menuModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="menu-modal-title text-secondary text-uppercase mb-0">Shopping list</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/shopping.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Open Shopping List
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Menu Modal 6-->
	<div class="menu-modal modal fade" id="menuModal6"
		tabindex="-1" aria-labelledby="menuModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Menu Modal - Title-->
								<h2
									class="menu-modal-title text-secondary text-uppercase mb-0">Profile</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Menu Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/menu/profile.png" alt="..." />
								<!-- Menu Modal - Text-->
								<p class="mb-4">.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Open Profile
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
