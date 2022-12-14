<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Good Place</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/GoodplaceLogo.png" />
<!-- Bootstrap icons-->
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css?after" rel="stylesheet" />
<link href="resources/css/multislide.css" rel="stylesheet">
<link href="resources/css/slider.css?after" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

</head>
<body>
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<hr>
	<br>
	<br>
	<!-- 위에꺼 슬라이드 -->
	<div class="box-wrap">
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="resources/js/slider.js"></script>
		<div class="box-list">
			<div class="box active">
				<img src="resources/assets/img/advertise1.jpg" alt="이미지">
			</div>
			<div class="box ">
				<img src="resources/assets/img/advertise2.jpg" alt="이미지">
			</div>
			<div class="box ">
				<img src="resources/assets/img/advertise3.jpg" alt="이미지">
			</div>
			<div class="box ">
				<img src="resources/assets/img/advertise4.jpg" alt="이미지">
			</div>
			<div class="box ">
				<img src="resources/assets/img/advertise5.jpg" alt="이미지">
			</div>

		</div>
	</div>

	<br>
	<br>
	<br>
	<!-- 포토존 -->
	<div style="text-align: center">
		<h1>포토존</h1>
	</div>
	<br>
	<div class="scene">
		<label class="card-wrap"> <input type="checkbox"
			class="flipcard">
			<div class="card">
				<div class="front card-face">
					<img src="resources/assets/img/fire.jpg" alt="" class="card-photo">
				</div>
				<div class="back card-face">
					<img src="resources/assets/img/marshmallow.jpg" alt=""
						class="card-photo">
				</div>
			</div>
		</label> <label class="card-wrap"> <input type="checkbox"
			class="flipcard">
			<div class="card">
				<div class="front card-face">
					<img src="resources/assets/img/camping.jpg" alt=""
						class="card-photo">
				</div>
				<div class="back card-face">
					<img src="resources/assets/img/camping3.jpg" alt=""
						class="card-photo">
				</div>
			</div>
		</label> <label class="card-wrap"> <input type="checkbox"
			class="flipcard">
			<div class="card">
				<div class="front card-face">
					<img src="resources/assets/img/meal.jpg" alt="" class="card-photo">
				</div>
				<div class="back card-face">
					<img src="resources/assets/img/barbecue2.jpg" alt=""
						class="card-photo">
				</div>
			</div>
		</label> <label class="card-wrap"> <input type="checkbox"
			class="flipcard">
			<div class="card">
				<div class="front card-face">
					<img src="resources/assets/img/camping2.jpg" alt=""
						class="card-photo">
				</div>
				<div class="back card-face">
					<img src="resources/assets/img/tent.jpg" alt="" class="card-photo">
				</div>
			</div>
		</label>
	</div>
	<br>
	<br>
	<!-- Footer-->
	<%@ include file="footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>