<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	padding-top: 5rem;
	padding-bottom: 1.5rem;
}

.register-box {
	margin: auto;
	background-color: white;
	height: auto;
	padding: 1.5rem 0 0 0;
}

.register-header {
	text-align: center;
}

.register-content {
	margin-left: 6rem;
	margin-right: 6rem;
	padding: 1.5rem 0;
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
	margin-top: 1.5rem;
	width: 100%;
}

.register-box-bottom {
	width: 100%;
	background-color: #e9ecef;
	text-align: center;
	padding: 1.5rem 0;
}

.register-box-bottom button {
	background: white;
	padding: 0.4rem 1.2rem;
	margin: 0 1.2rem;
	border: none;
}
</style>

</head>
<body>

	<div class="background">
		<!-- Register -->
		<div class="container register">

			<div class="col-10 col-md-8 col-lg-5 register-box">
				<div class="register-header">
					<h2>Create An Account</h2>
					<p class="text-muted">Welcome! Register for an account</p>
					<p class="text-danger">${message}</p>
				</div>
				<form:form class="register-content" action="/registerProcess" method="POST" modelAttribute="user">
					<form:label path="name">Your username</form:label>
					<br> 
					<form:input path="name" pattern="[A-Za-z]{3,}" title="At least letter country code"/> 
					<br> 
					<br>
					<form:label path="email">Your email</form:label> 
					<br> 
					<form:input path="email" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="characters@characters.domain 
					(characters followed by an @ sign, followed by more characters, and then a '.'
					After the '.' sign, add at least 2 letters from a to z:"/> 
					<br>
					<br> 
					<form:label path="password" >Password</form:label>
					<br> 
					<form:input path="password" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at 
					least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
					<br>
					<br> 
					<form:label path="verifyPassword" >Confirm Password</form:label> 
					<br>
					<form:input path="verifyPassword" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at 
					least one number and one uppercase and lowercase letter, and at least 8 or more characters" /> 
					<br>
					<form:button class="btn btn-primary">REGISTER</form:button>
				</form:form>
				<div class="register-box-bottom">
					<span class="text-muted">Already a member?</span>
					<button>SIGN IN</button>
				</div>
			</div>

		</div>
	</div>

</body>
</html>