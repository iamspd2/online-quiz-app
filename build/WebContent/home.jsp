<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Online Quiz</title>
</head>
<body>
	<div class="container">
		<div class="row" style="padding: 30px">
			<div class="col-lg-2">
				<a href='#'
					class="btn-lg btn-primary" role="button">Home</a>
			</div>
			<div class="col-lg-2">
				<a href="#" class="btn-lg btn-primary" role="button">About Us</a>
			</div>
			<div class="col-lg-2">
				<a href="#" class="btn-lg btn-primary" role="button">Quiz Now</a>
			</div>
			<div class="col-lg-2">
				<a href="#" class="btn-lg btn-primary" role="button">Other</a>
			</div>
			<div class="col-lg-2">
				<a href="#" class="btn-lg btn-primary" role="button">Feedback</a>
			</div>
			<div class="col-lg-2">
				<a href="#" class="btn-lg btn-primary" role="button">Contact Us</a>
			</div>
		</div>

		<div class="row" style="padding-top: 10px">
			<div class="col-sm-6" style="padding-left: 30px; padding-top: 15px">
				<img src="images/quiz.jpg" alt="test" class="img-responsive">
				<div class="carousel-caption active align-items-center"
					style="text-align: center; padding-right: 35px">
					
					<h1 style="color: #FEC642; letter-spacing: 1.5px; text-shadow: 2px 0 0 #000, -2px 0 0 #000, 0 2px 0 #000, 0 -2px 0 #000, 1px 1px #000, -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000;">
					QuizBook</h1>
					<br></br>
					<h1 style="color: #790071; text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;">
					New user? Register</h1>
					<h1 style="color: #790071; text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;">
					Play tech quizzes</h1>
					<h1 style="color: #790071; text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;">
					Score against time</h1>
					<h1 style="color: #790071; text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;">
					Learn and Improve</h1>
					<br></br>
				</div>

			</div>
			<div class="col-lg-6" style="padding: 65px">
				<div class="login-form">
					<form action="Login" method="post">
						<h2 class="text-center">Log In</h2>
						<div class="form-group">
							<input type="text" class="form-control" name="username" placeholder="Username"
								required="required">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password"
								placeholder="Password" required="required">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Log
								in</button>
						</div>
						<div class="clearfix">
							<label class="pull-left checkbox-inline"><input
								type="checkbox"> Remember me</label> <a href="#"
								class="pull-right">Forgot Password?</a>
						</div>
					</form>
					<p class="text-center">
						<a href="registration.jsp">Create an Account</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>