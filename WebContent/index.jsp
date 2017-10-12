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
<link href="css/style.css" rel="stylesheet">
</head>
<script>
	
</script>
<body id="page-top">

	<jsp:include page="head.jsp"></jsp:include>

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
								<option value="1">Phong Giuong Don</option>
								<option value="2">Phong Giuong Doi</option>
								<option value="3">Phong Giuong Don + Giuong Doi</option>
								<option value="5">Phong 2 Giuong Don</option>
								<option value="6">Phong 2 Giuong Doi</option>
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
						<img alt="#" src="img/info/buffet.jpg">
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
						<img alt="#" src="img/info/landry.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="wash" type="checkbox"> laundry
						</h5>
						<p class="text-muted">Dich vu giat ui</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/pool.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="pool" type="checkbox"> Pool
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/cafe.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="cafe" type="checkbox"> Cafe
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/massage.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="spa" type="checkbox"> Spa
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/gym.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="gym" type="checkbox"> Gym
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/tennis.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="tennis" type="checkbox"> Tennis
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/golf.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="golf" type="checkbox"> Golf
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/souvenir.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="souvenir" type="checkbox"> Souvenir
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/entertainment.jpg">
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
						<img alt="#" src="img/info/bookticket.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="bookticket" type="checkbox"> Book ticket
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/booktour.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="booktour" type="checkbox"> Book tour
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/park.jpg">
					</div>
					<div class="service-box">
						<h5>
							<input name="park" type="checkbox"> Park
						</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 ">
					<div class="service-img">
						<img alt="#" src="img/info/vehicle.jpg">
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
				<h2>Tim Kiem</h2>
				<input class="btn btn-default btn-xl sr-button" type="submit"
					value="Search">
			</div>
		</div>
	</form>
	</section>

	<jsp:include page="foot.jsp"></jsp:include>
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
