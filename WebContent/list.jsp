<%@page import="model.dao.Room"%>
<%@page import="java.util.ArrayList"%>
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

	<jsp:include page="head.jsp"></jsp:include>
	<%
		ArrayList<Room> rooms = (ArrayList<Room>) request.getAttribute("rooms");
	%>

	<div class="container">
		<table class="table table-hover table-bordered table-striped">
			<tr>
				<th>Name</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Image</th>
				<th>Detail</th>
				<th>Price</th>
			</tr>
			<%
				for (Room room : rooms) {
			%>
			<tr>
				<td><%=room.hotel.name%></td>
				<td><%=room.hotel.address%></td>
				<td><%=room.hotel.phone%></td>
				<%
					if (!room.hotel.id.substring(0, 2).toUpperCase().equals("KS") && room.hotel.id.charAt(0) == 'K') {
				%>
				<td><img class="sizex2"
					src="img/Hotel/<%=room.hotel.id.toLowerCase()%>-0.jpg"> <img
					class="sizex2"
					src="img/Hotel/<%=room.hotel.id.toLowerCase()%>-1.jpg"> <img
					class="sizex2"
					src="img/Hotel/<%=room.hotel.id.toLowerCase()%>-2.jpg"></td>
				<%
					} else if (room.hotel.id.startsWith("R")) {
				%>
				<td><img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>_0.jpg"> <img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>_1.jpg"> <img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>_2.jpg"></td>
				<%
					} else {
				%>
				<td><img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>-0.jpg"> <img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>-1.jpg"> <img class="sizex2"
					src="img/Hotel/<%=room.hotel.id%>-2.jpg"></td>
				<%
					}
				%>
				<%
					String gia = String.valueOf(room.gia);
						if (gia.lastIndexOf('.') > 0) {
							gia = gia.substring(0, gia.lastIndexOf('.'));
						}
				%>
				<td>
				<% if (room.hotel.buffet){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> buffet </h5>
				<%} %>
				<% if (room.hotel.wash){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i>laundry</h5>
				<%} %>
				<% if (room.hotel.pool){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> pool </h5>
				<%} %>
				<% if (room.hotel.cafe){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> cafe </h5>
				<%} %>
				<% if (room.hotel.spa){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> spa </h5>
				<%} %>
				<% if (room.hotel.gym){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> gym </h5>
				<%} %>
				<% if (room.hotel.tennis){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> tennis </h5>
				<%} %>
				<% if (room.hotel.golf){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> golf </h5>
				<%} %>
				<% if (room.hotel.souvenir){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> souvenir </h5>
				<%} %>
				<% if (room.hotel.entertainment){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> entertainment </h5>
				<%} %>
				<% if (room.hotel.bookticket){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> book ticket </h5>
				<%} %>
				<% if (room.hotel.booktour){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> book tour </h5>
				<%} %>
				<% if (room.hotel.park){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> park </h5>
				<%} %>
				<% if (room.hotel.vehicle){ %>
				<h5> <i class="fa fa-check text-primary sr-icons" aria-hidden="true"></i> vehicle </h5>
				<%} %>
				</td>
				<td><p class="money">
						<%=gia%>.000 VND
					</p></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
	<div class="call-to-action bg-dark">
		<div class="container text-center">
			<h2>Tiep Tuc Tim Kiem</h2>
			<a class="btn btn-default btn-xl sr-button" href="index.jsp"> Tim
				Kiem </a>
		</div>
	</div>


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
