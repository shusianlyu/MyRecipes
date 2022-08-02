<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Recipe Book</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: green">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Recipe Book </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Recipe</a></li>
				<li><a href="<%=request.getContextPath()%>/login.jsp"
					class="nav-link">Sign in</a></li>
				<li><a href="<%=request.getContextPath()%>/registration.jsp"
					class="nav-link">Sign up</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Recipe</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/donate_recipes.jsp" class="btn btn-success">Add
					New Recipe</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Ingredients</th>
						<th>Description</th>
						<th>Method</th>
						<th>Type</th>
						<th>Serving Size</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="recipe" items="${listRecipe}">

						<tr>
							<td><c:out value="${recipe.id}" /></td>
							<td><c:out value="${recipe.name}" /></td>
							<td><c:out value="${recipe.ingredients}" /></td>
							<td><c:out value="${recipe.description}" /></td>
							<td><c:out value="${recipe.method}" /></td>
							<td><c:out value="${recipe.type}" /></td>
							<td><c:out value="${recipe.serveSize}" /></td>
							<td><a href="edit?id=<c:out value='${recipe.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${recipe.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
