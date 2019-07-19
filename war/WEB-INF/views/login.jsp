<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style for components -->
<link rel="stylesheet" type="text/css"
	href="/resources/style/header.css">
<link rel="stylesheet" type="text/css"
	href="/resources/style/footer.css">

<title>Login</title>

<style type="text/css">
body, html {
	height: 100%;
	margin: 0;
}
/* Background */
.background {
	background-image: url("/resources/background.jpg");
	/* Full height */
	height: auto;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
/* login */
.login {
	padding-top: 5rem;
	padding-bottom: 1.5rem;
}

.login-box {
	margin: auto;
	background-color: white;
	height: auto;
	padding: 1.5rem 0 0 0;
}

.login-header {
	text-align: center;
}

.login-content {
	margin-left: 6rem;
	margin-right: 6rem;
	padding-top: 1.5rem;
}

.login-content input {
	width: 100%;
	border-top: none;
	border-right: none;
	border-left: none;
	border-bottom: 1px black dotted;
	border-right: none;
	border-left: none;
}

.login-content input:focus {
	border-top: none;
	border-right: none;
	border-left: none;
	border-bottom: 1px blue solid;
}

.login-content button {
	margin-top: 1.5rem;
	width: 100%;
}

.login-box-bottom {
	width: 100%;
	background-color: #e9ecef;
	text-align: center;
	padding: 1.5rem 0;
}

.login-box-bottom button {
	background: white;
	padding: 0.4rem 1.2rem;
	margin-top: 1.2rem;
	border: none;
}
.forgot-password {
	text-align: center;
	padding-top: 0.6rem;
	padding-bottom: 1.2rem;
}

/* Style for checkbox */

/* Customize the label (the container) */
.remember-account {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
/* Hide the browser's default checkbox */
.remember-account {
	margin-top: 2rem;
}
.remember-account input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}
/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}
/* On mouse-over, add a grey background color */
.remember-account:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.remember-account input:checked ~ .checkmark {
  background-color: #2196F3;
}
/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.remember-account input:checked ~ .checkmark:after {
  display: block;
}
/* Style the checkmark/indicator */
.remember-account .checkmark:after {
  left: 9px;
  top: 3px;
  width: 8px;
  height: 15px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>

</head>
<body>


	<div class="background">
		<!-- Login -->
		<div class="container login">

			<div class=" col-10 col-md-8 col-lg-5 login-box">
				<div class="login-header">
					<h2>Log In</h2>
					<p class="text-muted">Become a part of our community!</p>
				</div>
				<form class="login-content">
					<label for="username">Username</label> 
					<br> 
					<input type="text" name="username" id="username" /> 
					<br>
					<br> 
					<label for="password">Password</label> 
					<br>
					<input type="password" name="password" id="password" />
					<br>
					<label class="remember-account">Remember Me
  						<input type="checkbox" id="remember-account" name="remember-account">
  						<span class="checkmark"></span>
					</label>
					
					<button class="btn btn-primary">LOGIN</button>
				</form>
				<div class="forgot-password">
					<p>Forgot your password? <a href="#">Get help</a></p>
				</div>
				<div class="login-box-bottom">
					<span class="text-muted">Not a member?</span>
					<button>SIGN UP</button>
				</div>
			</div>

		</div>
	</div>


</body>
</html>