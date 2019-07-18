<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- <link href="/resources/bootstrap/css/bootstrap.min.css" type="text/css"
	rel="stylesheet">
<script type="text/javascript"
	src="/resources/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="/resources/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/resources/popper/popper.min.map.js"></script> -->

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


<title>Home</title>
<style type="text/css">

footer {
	width: 100%;
	background-color: #232B40;
}
/* Header */
.navbar-nav {
	width: 100%;
}

.nav-link {
	color: grey;
}

.active-link {
	color: #87BE49;
	border-bottom: 3px #87BE49 solid;
}

.nav-link:hover {
	color: #87BE49;
	border-bottom: 3px #87BE49 solid;
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

@media screen and (max-width: 576px) {
	.logo {
		display: none;
	}
}

@media screen and (min-width: 576px) {
	.logo {
		display: none;
	}
}

@media screen and (min-width: 768px) {
	.logo {
		display: inline-block;
	}
}
/* Page contents */
.page-contents {
	text-align: center;
}
.intro {
	text-align: center;
	border: 1px solid black;
	border-radius: 5px;
}
</style>
</head>
<body>
	<header class="container">

		<nav
			class="navbar navbar-expand-md bg-light fixed-top row shadow justify-content-center">

			<!-- Brand/logo -->
			<a class="navbar-brand logo col-md-2" href="#"> <img alt="logo"
				src="/resources/logo.png" style="height: 40px;">
			</a>
			<div
				class="navi row flex-md-row-reverse col-md-8  justify-content-between justify-content-sm-between">
				<!-- Dropdown -->
				<div class="dropdown text-center">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"> <img
						alt="avatar" src="/resources/avatar.png" style="width: 40px;"
						class="rounded-circle">
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div>
				</div>
				<!-- Toggler/collapsibe Button -->
				<button class="navbar-toggler navbar-light" type="button"
					data-toggle="collapse" data-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar links -->
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav d-flex justify-content-around">
						<li class="nav-item"><a class="nav-link text-uppercase"
							href="#">LUYỆN ĐỀ</a></li>
						<li class="nav-item"><a class="nav-link text-uppercase"
							href="#">ÔN TẬP</a></li>

						<!-- Dropdown -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-uppercase" href="#"
							id="navbardrop" data-toggle="dropdown"> TIP &amp TRICK </a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Link 1</a> <a
									class="dropdown-item" href="#">Link 2</a> <a
									class="dropdown-item" href="#">Link 3</a>
							</div></li>
						<li class="nav-item"><a class="nav-link text-uppercase"
							href="#">TẢI APP</a></li>
						<li class="nav-item"><a class="nav-link text-uppercase"
							href="#">BLOG</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="page-view container">
		<div class="row justify-content-center">
			<div class="page-content col-xl-9 shadow"
				style="margin-bottom: 20px;">
				<div class="intro">
					<h2>Cấu trúc đề thi TOEIC</h2>
					<h2>FORMAT MỚI</h2>
					<h4>200 câu: 120 phút</h4>
					<div class="dropdown-divider"></div>
					<button>LÀM BÀI THI</button>
					<p>
						<b>TOEIC Test Free</b> có <b>100+ đề thi TOEIC</b> theo format
						chuẩn 2019, bạn sẽ dc làm lần lượt các đề trong ngân hàng. Chúng
						tôi sẽ lưu lại kết quả thi của bạn trong từng đề để bạn có thể
						đánh giá sự tiến bộ của mình vì vậy bạn hãy vui lòng <a href="#">đăng
							nhập </a>hoặc <a href="#">đăng kí tài khoản </a>trước khi làm bài thi
						TOEIC.
					</p>
				</div>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
				<h1>Toeic test</h1>
			</div>
			<div class="ranking col-xl-3" style="margin-bottom: 20px;">
				<div class="ranking-name d-flex flex-wrap align-items-center">
					<h6 class="text-white">BẢNG XẾP HẠNG</h6>
				</div>
				<div class="ranking-header">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="#">Tuần</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Tháng</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Tất cả</a></li>

					</ul>
				</div>
				<div class="dropdown-divider"></div>
				<div class="ranking-content">
					<ul class="container">
						<li class="row" style="height: auto;">
							<p class="col-1 ">1</p> <img alt="avatar-ranking"
							src="/resources/avatar.png" class="rounded-circle"
							style="height: 50px;">
							<div class="col">
								<a>Uzumaki Naruto</a>
								<p>900 điểm</p>
							</div>
						</li>
						<li class="row" style="height: auto;">
							<p class="col-1 ">2</p> <img alt="avatar-ranking"
							src="/resources/avatar.png" class="rounded-circle"
							style="height: 50px;">
							<div class="col">
								<a>Uzumaki Naruto</a>
								<p>900 điểm</p>
							</div>
						</li>
						<li class="row" style="height: auto;">
							<p class="col-1 ">3</p> <img alt="avatar-ranking"
							src="/resources/avatar.png" class="rounded-circle"
							style="height: 50px;">
							<div class="col">
								<a>Uzumaki Naruto</a>
								<p>900 điểm</p>
							</div>
						</li>
						<li class="row" style="height: auto;">
							<p class="col-1 ">4</p> <img alt="avatar-ranking"
							src="/resources/avatar.png" class="rounded-circle"
							style="height: 50px;">
							<div class="col">
								<a>Uzumaki Naruto</a>
								<p>900 điểm</p>
							</div>
						</li>
						<li class="row" style="height: auto;">
							<p class="col-1 ">5</p> <img alt="avatar-ranking"
							src="/resources/avatar.png" class="rounded-circle"
							style="height: 50px;">
							<div class="col">
								<a>Uzumaki Naruto</a>
								<p>900 điểm</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div
			style="height: 10px; width: 100%; background-color: #87BE49; margin-bottom: 10px;"></div>
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-sm-4 flex-column d-flex">
					<a class="text-uppercase text-success">VỀ CHÚNG TÔI</a> <a
						class="text-white">Trụ sở chính:</a> <a class="text-white">Email:</a>
					<a class="text-white">SĐT:</a>
				</div>
				<div class="col-sm-4">
					<a class="text-uppercase text-success">CHÍNH SÁCH</a>
				</div>
				<div class="col-sm-4">
					<a class="text-uppercase text-success">LIÊN KẾT</a>
				</div>
			</div>
		</div>
	</footer>
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