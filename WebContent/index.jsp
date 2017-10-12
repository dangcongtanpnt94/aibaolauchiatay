<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Creative - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/creative.min.css" rel="stylesheet">

</head>
<script>
	
</script>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">Bao Lau
			Chia Tay </a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#about">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#services">Services</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#portfolio">Help</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#contact">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<header class="masthead">
	<div class="header-content">
		<div class="header-content-inner">
			<h1 id="homeHeading">DA NANG - Thanh Pho Dang Song</h1>
			<hr>
			<p>Thanh Pho Do Thi Loai 1 - Thanh Pho Dang Song - Thanh Pho blah
				blah blah</p>
			<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Tim
				Hieu</a>
		</div>
	</div>
	</header>

	<section class="bg-primary" id="about">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<h2 class="section-heading text-white">Tu Van Chon Khach San Du
					Lich Da Nang</h2>
				<hr class="light">
				<p class="text-faded">Chung toi mang den cho ban giai phap tien
					loi, nhanh chong va huu ich trong mua du lich tai TP.Da Nang.</p>
				<a class="btn btn-default btn-xl js-scroll-trigger" href="#services">Get
					Started!</a>
			</div>
		</div>
	</div>
	</section>

	<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Lua Chon Thong Tin Dat Phong</h2>
				<hr class="primary">
			</div>
		</div>
	</div>
	<form action="TuVanController">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
						<h4>Loai Phong:</h4>
						<h4>
							<select name="loaiphong">
								<option value="1">Phong Giuong Doi</option>
								<option value="2">Phong Giuong Don</option>
								<option value="3">Phong 2 Giuong Don</option>
								<option value="4">Phong Gia Dinh</option>
							</select>
						</h4>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-money text-primary sr-icons"></i>
						<h4>Gia Tien (1 ngay dem):</h4>
						<h4>
							<input type="number" name="price">.000 VND
						</h4>
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Lua Chon Thong Tin Dich Vu</h2>
					<hr class="primary">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="buffet" type="checkbox"> Buffet
						</h5>
						<p class="text-muted">Phuc vu buffet sang/trua/toi</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="wash" type="checkbox"> Giat ui
						</h5>
						<p class="text-muted">Dich vu giat ui</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="pool" type="checkbox"> Pool
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="cafe" type="checkbox"> Cafe
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="spa" type="checkbox"> Spa
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="gym" type="checkbox"> Gym
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="tennis" type="checkbox"> Tennis
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="golf" type="checkbox"> Golf
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="souvenir" type="checkbox"> Souvenir
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="entertainment" type="checkbox">
							Entertainment
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="bookticket" type="checkbox"> Book ticket
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="booktour" type="checkbox"> Book tour
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="park" type="checkbox"> Park
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/service/1.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="vehicle" type="checkbox"> Vehicle
						</h5>
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		<div class="call-to-action bg-dark">
			<div class="container text-center">
				<h2>BOOK PHONG!</h2>
				<input class="btn btn-default btn-xl sr-button" type="submit"
					value="OK">
			</div>
		</div>
	</form>
	</section>

	<section class="p-0" id="portfolio">
	<div class="container-fluid">
		<div class="row no-gutter popup-gallery">
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/1.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/1.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/2.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/2.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/3.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/3.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/4.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/4.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/5.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/5.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" href="img/portfolio/fullsize/6.jpg"> <img
					class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	</section>

	<div class="call-to-action bg-dark">
		<div class="container text-center">
			<h2>Free Download at Start Bootstrap!</h2>
			<a class="btn btn-default btn-xl sr-button"
				href="http://startbootstrap.com/template-overviews/creative/">Download
				Now!</a>
		</div>
	</div>

	<section id="contact">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<h2 class="section-heading">Let's Get In Touch!</h2>
				<hr class="primary">
				<p>Ready to start your next project with us? That's great! Give
					us a call or send us an email and we will get back to you as soon
					as possible!</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 ml-auto text-center">
				<i class="fa fa-phone fa-3x sr-contact"></i>
				<p>123-456-6789</p>
			</div>
			<div class="col-lg-4 mr-auto text-center">
				<i class="fa fa-envelope-o fa-3x sr-contact"></i>
				<p>
					<a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
				</p>
			</div>
		</div>
	</div>
	</section>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper/popper.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/creative.min.js"></script>

</body>

</html>
