<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>회원등록</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="resources/css/admin.css" rel="stylesheet" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<style type="text/css">
form {
	margin-top: 100px;
	margin-left: 300px;
}
</style>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<%@include file="sidemenu.jsp"%>
	<form action="registrationCheck" method="post">
		<div class="info_member">

			<div>
				<p>이름</p>
				<input type="text" id="registName" name="u_name"
					placeholder="이름을 입력해주세요" required>
			</div>
			<div>
				<p>휴대폰</p>
				<div>
					<input type="text" id="registPhone" name="u_phone"
						placeholder="숫자만 입력해주세요" maxlength="11" required>
				</div>
			</div>
			<div>
				<p>주소</p>
				<input type="text" id="registAddress" name="u_address" required> <br>
				<span>배송지에 따라 상품 정보가 달라질 수 있습니다. </span>
			</div>
		</div>

		<br>
		<div class="consent">
			<input type="submit" value="등록하기">
		</div>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/assets/demo/chart-area-demo.js"></script>
	<script src="resources/assets/demo/chart-bar-demo.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/js/datatables-simple-demo.js"></script>
</body>
</html>