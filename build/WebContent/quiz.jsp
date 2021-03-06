<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<meta charset="utf-8" />
<title>Quiz Now</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">QuizApp</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Profile</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" style="text-align: center;">
		<form>

			<div class="row" style="padding-bottom: 10px">
				<input
					style="width: 200px; padding: 30px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: red; color: black; border-radius: 10px; border: 1px solid #999; font-size: 150%;"
					type="button" value="Java"
					onclick="window.location.href='test.jsp'" />
			</div>

			<div class="row" style="padding: 10px">
				<input
					style="width: 200px; padding: 30px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;"
					type="button" value="C"
					onclick="window.location.href='http://www.hyperlinkcode.com/button-links.php'" />
			</div>

			<div class="row" style="padding: 10px">
				<input
					style="width: 200px; padding: 30px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: green; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;"
					type="button" value="Python"
					onclick="window.location.href='http://www.hyperlinkcode.com/button-links.php'" />
			</div>

			<div class="row" style="padding: 10px">
				<input
					style="width: 200px; padding: 30px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: blue; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;"
					type="button" value="SQL"
					onclick="window.location.href='http://www.hyperlinkcode.com/button-links.php'" />
			</div>

			<div class="row" style="padding: 10px">
				<input
					style="width: 200px; padding: 30px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: ruby; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;"
					type="button" value="Algorithms"
					onclick="window.location.href='http://www.hyperlinkcode.com/button-links.php'" />
			</div>

		</form>
	</div>
</body>
</html>