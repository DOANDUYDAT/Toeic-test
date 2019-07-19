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

<title>Register</title>

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
/* Register */
.register {
	padding-top: 8rem;
	padding-bottom: 2rem;
}

.register-box {
	margin: auto;
	background-color: white;
	height: auto;
	padding: 2rem 0 0 0;
}

.register-header {
	text-align: center;
}

.register-content {
	margin-left: 6rem;
	margin-right: 6rem;
	padding: 2rem 0;
}

.register-content input {
	width: 100%;
	border-top: none; border-right : none; border-left : none;
	border-bottom: 1px black dotted;
	border-right: none;
	border-left: none;
}

.register-content input:focus {
	border-top: none;
	border-right: none;
	border-left: none;
	border-bottom: 1px blue solid;
}

.register-content button {
	margin-top: 2rem;
	width: 100%;
}

.register-box-bottom {
	width: 100%;
	background-color: #e9ecef;
	text-align: center;
	padding: 2rem 0;
}

.register-box-bottom button {
	background: white;
	padding: 0.5rem 1.2rem;
	margin: 0 1.2rem;
	border: none;
}
</style>

</head>
<body>

	<div class="background">
		<!-- Register -->
		<div class="container register">

			<div class="col-md-8 register-box">
				<div class="register-header">
					<h2>Create An Account</h2>
					<p class="text-muted">Welcome! Register for an account</p>
				</div>
				<form class="register-content">
					<label for="username">Your username</label>
					<br> 
					<input type="text" name="username" id="username" /> 
					<br> 
					<br>
					<label for="email">Your email</label> 
					<br> 
					<input type="email" name="email" id="email" /> 
					<br>
					<br> 
					<label for="password">Password</label>
					<br> 
					<input type="password" name="password" id="password" />
					<br>
					<br> 
					<label for="confirm-password">Confirm Password</label> 
					<br>
					<input type="password" name="confirm-password" id="confirm-password" /> 
					<br>
					<button class="btn btn-primary">REGISTER</button>
				</form>
				<div class="register-box-bottom">
					<span class="text-muted">Already a member?</span>
					<button>SIGN IN</button>
				</div>
			</div>

		</div>
	</div>

</body>
</html>