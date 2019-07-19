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
	<header class="fixed-top bg-light" style="height: auto;"> <!-- Tách các phần header, footer, ranking ra thành các view riêng biệt yyy xxx -->
		<nav class="navbar navbar-expand-md shadow">
			<div class="container">
				<!-- <div class="row justify-content-md-between" style="width: 100%;"> -->
				<!-- Brand/logo -->
				<a class="navbar-brand logo" href="#"> <img alt="logo"
					src="/resources/logo.png" style="height: 40px;">
				</a>

				<div
					class="d-flex col-md-9 flex-md-row-reverse justify-content-between justify-content-md-end"
					style="padding: 0;">

					<!-- Dropdown -->
					<div class="dropdown">
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
			</div>
			<!-- </div> -->

		</nav>


	</header>
	<div class="page-view ">
		<div class="container">
			<div class="row justify-content-center">
				<div class="page-content col-xl-9 shadow"
					style="margin-bottom: 20px;">
					<div class="intro">
						<h2>Cấu trúc đề thi TOEIC</h2>
						<h2 style="color: #87BE49;">FORMAT MỚI</h2>
						<h4>200 câu: 120 phút</h4>
						<div class="dropdown-divider"></div>
						<button class="do-test">LÀM BÀI THI</button>
						<div style="text-align: start;">
							<p>
							<b>TOEIC Test Free</b> có <b>100+ đề thi TOEIC</b> theo format
							chuẩn 2019, bạn sẽ dc làm lần lượt các đề trong ngân hàng. Chúng
							tôi sẽ lưu lại kết quả thi của bạn trong từng đề để bạn có thể
							đánh giá sự tiến bộ của mình vì vậy bạn hãy vui lòng <a href="#">đăng
								nhập </a>hoặc <a href="#">đăng kí tài khoản </a>trước khi làm bài
							thi TOEIC.
						</p>
						</div>
					</div>
					<p>Tháng 6.2019 IIG chính thức thay đổi cấu trúc đề thi TOEIC,
						cấu trúc mới khác với cấu trúc cũ như thế nào? Cùng TOEIC Test
						Free tìm hiểu ngay cấu trúc TOEIC mới nhé.</p>
					<br>
					<p>Hướng dẫn này dành cho những bạn nào đã, đang và có dự định
						thi TOEIC từ 1/6/2019, nhưng chưa định hình được cấu trúc bài thi
						TOEIC Listening Format mới 2019, bạn có thể đọc nội dung bài viết
						hoặc xem video này để có cái nhìn trực quan hơn:</p>
					<h4>1. Cấu trúc đề thi TOEIC Listening Part 1</h4>
					<p>Part 1 trong đề thi TOEIC (Photographs - Mô tả tranh) là nội
						dung nhìn tranh nghe đoạn miêu tả và chọn đáp án mô tả chính xác
						nhất.</p>
					<br>
					<p>Tương ứng với mỗi bức tranh trong đề thi TOEIC Part 1, bạn
						sẽ được nghe 04 câu mô tả về nó. Nhiệm vụ của bạn là phải chọn câu
						mô tả đúng nhất cho bức ảnh.</p>
					<br>
					<p>Giọng đọc tại Part 1 khá đa dạng bao gồm nhiều giọng đọc từ
						các quốc gia, nên nếu không ôn luyện kỹ bạn sẽ dễ bối rối khi nghe
						thấy các giọng đọc lạ.</p>
					<h4>So sánh với format đề cũ:</h4>
					<br>
					<div class="container" style="margin-bottom: 20px;">
						<div class="row">
							<div class="col-2 table-header">Đề cũ</div>
							<div class="col-2 table-header">Đề mới</div>
							<div class="col-8 table-header">Nhận xét</div>
						</div>
						<div class="row">
							<div class="col-2 table-info"></div>
							<div class="col-2 table-info">6 câu hỏi tương ứng với 6
								hình ảnh</div>
							<div class="col-8 table-info">
								Với đề cũ, đáp án có thể tìm ra được dễ dàng khi nghe được đầy
								đủ các phương án nên part 1 được đánh giá là khá dễ ăn điểm và
								mang yếu tố "cứu điểm" cho các bạn. <br> <br> Tuy
								nhiên, theo đề mới hiện nay thì phần này được đánh giá là phần
								khá khó khăn với các hình ảnh và đoạn mô tả với nhiều yếu tố
								"lừa" khiến các thí sinh bị mắc bẫy.
								<br><br><br>
							</div>
						</div>
					</div>
					<h4>Cách phân chia hình ảnh trong Part 1:</h4>
					<br>
					<div class="container" style="margin-bottom: 40px;">
						<div class="row">
							<div class="col-2 table-header">Loại tranh</div>
							<div class="col-2 table-header">Đề mới</div>
							<div class="col-8 table-header">Nhận xét</div>
						</div>
						<div class="row">
							<div class="col-2 table-info"></div>
							<div class="col-2 table-info">6 câu hỏi tương ứng với 6
								hình ảnh <br><br><br></div>
							<div class="col-8 table-info"></div>
						</div>
					</div>
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
				<h2>adasd</h2>
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