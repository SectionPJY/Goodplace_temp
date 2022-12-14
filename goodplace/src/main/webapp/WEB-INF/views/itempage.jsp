<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/itempage.css">
<link href="resources/css/styles.css?after" rel="stylesheet" />
<script src="resources/js/itempage.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<hr>
	<br>
	<div class="shCMSshop">
		<div class="shopView">
			<c:forEach items="${dto }" var="EquipDTO">
				<div class="viewHeader">
					<!-- 상품이미지 -->
					<div class="productImg">
						<div class="mainImg">
							<img src="${EquipDTO.p_imagePath }" width="500px" height="500px"
								alt="">
						</div>
					</div>
					<!-- 상품 설명 -->
					<div class="productInfo">
						<h3>${EquipDTO.p_name }</h3>
						<div class="price">${EquipDTO.p_price }원</div>
						<div class="all-price">
							총 상품금액 <span>${EquipDTO.p_price }</span>원
						</div>
						<div class="btn">
							<button onclick="sendValue('${EquipDTO.p_id}')">대여하기</button>
						</div>
					</div>
				</div>
			</c:forEach>
			<script>
				function sendValue(p_id) {
					window.location = "/ex/order?p_id=" + p_id;
				}
			</script>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>