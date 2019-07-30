<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>

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

<title>Home</title>

<style type="text/css">

/* Page contents */
.page-contents {
	text-align: center;
}

.intro {
	text-align: center;
	border: 1px solid black;
	border-radius: 5px;
	margin-bottom: 20px;
	padding: 10px;
}
.do-test {
	background-color: #485A60;
	color: white;
	padding: 8px 32px;
	border-radius: 5px;
	box-shadow: 1px 2px 4px #87BE49;
	margin: 10px 0;
}
.page-view {
	margin-top: 100px;
	margin-bottom: 10px;
}

.page-content {
	border: 1px solid white;
	border-radius: 5px;
}

.ranking-name {
	background-color: #485A60;
	padding: 0.8em 0.5em;
}

.table-header, .table-info {
	border: 1px solid grey;
}

.table-header {
	background-color: #87BE49;
	padding-top: 10px;
	padding-bottom: 10px;
}

.table-info {
	background-color: white;
}


</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="components/header.jsp"></jsp:include>
	
	<!-- Page View -->
	<div class="page-view ">
		<div class="container">
			<div class="row justify-content-center">
			
				<!-- Content -->
				<jsp:include page="components/home-content.jsp"></jsp:include>
				
				<!-- Ranking -->
				<jsp:include page="components/ranking.jsp"></jsp:include>
				
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="components/footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		// Get all buttons with class="btn" inside the container
		let listNavLink = document.getElementsByClassName("nav-link");

		// Loop through the buttons and add the active class to the current/clicked button
		for (let i = 0; i < listNavLink.length; i++) {
			listNavLink[i].addEventListener("click", function() {
				let current = document.getElementsByClassName("active-link");

				// If there's no active class
				if (current.length > 0) {
					current[0].className = current[0].className.replace(
							" active-link", "");

				}

				// Add the active class to the current/clicked button
				this.className += " active-link";
			});
		}
	</script>
</body>
</html>