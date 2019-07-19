<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<header class="fixed-top bg-light" style="height: auto;">
	<!-- Tách các phần header, footer, ranking ra thành các view riêng biệt -->
	<nav class="navbar navbar-expand-md shadow">
		<div class="container">
			<!-- Brand/logo -->
			<a class="navbar-brand logo" href="#"> <img alt="logo"
				src="/resources/logo.png" style="height: 40px;">
			</a>

			<div
				class="d-md-flex col-md-9 flex-md-row-reverse justify-content-md-end"
				style="padding: 0;">
				<div class="d-flex justify-content-between">
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
					data-toggle="collapse" data-target="#collapsibleNavbar" style="padding:0;">
					<span class="navbar-toggler-icon"></span>
				</button>
				</div>
				<!-- Navbar links -->
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav d-md-flex justify-content-md-around align-items-center">
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
	</nav>


</header>