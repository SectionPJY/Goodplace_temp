<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="naver-site-verification" content="" />
<meta name="description" content="">
<title>결제페이지</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/order.css" rel="stylesheet" />


<!--[if lt IE 9]>
		<script type="text/javascript" src="/js/ie/ie8-body.js"></script>
	<![endif]-->

<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp11048506");

	function changePrice(p_price) {
		const count = parseInt(document.getElementById("count_value").value);
		const price = parseInt(p_price);
		console.log(count);
		console.log(p_price);

		const result = count * price;
		console.log(result);
		document.getElementById("total1").innerHTML = count * price;
		document.getElementById("total2").innerHTML = count * price;

	}
</script>


</head>
<%@include file="header.jsp"%>
<hr style="height: 5px">
<br>
<div id="container">
	<div class="payWrap">
		<div class="payHeader">
			<h3 class="title">주문/결제</h3>
			<div class="nav">
				<ul>
					<li><span class="num on">1</span>주문/결제</li>
					<li class="last"><span class="num">2</span>주문완료</li>
				</ul>
			</div>
		</div>
		<c:forEach items="${dto }" var="EquipDTO">
			<c:forEach items="${userInfo }" var="UserInfo">
				<div class="payCont cf">
					<div class="payMethod">
						<div class="tblCartWrap">
							<h4 class="sTitle">주문하시는 상품</h4>
							<table class="tblCart" summary="상품명,기간,제공서비스,결제금액 항목으로 구성된 표입니다.">
								<caption>주문하실 상품 내역</caption>
								<colgroup>
									<col width="21%">
									<col width="16%">
									<col width="*">
									<col width="21%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">상품명</th>
										<th scope="col">개수</th>
										<th scope="col">결제금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${EquipDTO.p_name }</td>
										<td><select id="count_value"
											onchange="changePrice('${EquipDTO.p_price }')">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
										</select>개</td>
										<td class="price"><strong>${EquipDTO.p_price }</strong>원</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// 결제수단 선택 -->
					</div>
					<!--// payMethod -->
					<div class="payInfo">
						<div class="inner">
							<h4 class="sTitle">결제정보</h4>
							<div class="optWrap">
								<div class="optCont">
									<div class="totalPrice">
										<span class="tit">총 상품금액</span> <span class="con"><strong
											class="colorBlue" id="total1"></strong>원</span>
									</div>
								</div>
								<div class="optBottom">
									<div class="totalPayPrice">
										<span class="tit">최종 결제금액</span> <span class="con"><strong
											id="total2"></strong>원</span>
									</div>
									<p class="desc">
										<span>구매일자 + 372일(1년+1주일)</span> 전 연간상품 재 구매 시<br /> <span>5%할인</span>(이용권,
										가족상품, 명의도용 365 제외)
									</p>
								</div>
							</div>
							<br>
							<div class="btnPay">
								<a onclick="requestPay()">결제하기</a>
							</div>
							<script>
								function requestPay() {
									const u_id = "<%=(String)session.getAttribure('u_id')%>";
									const p_id = ${EquipDTO.p_id};
									const p_num = document.getElementById("count_value").value;
									const price = document.getElementById("total2").value;
									$
											.ajax({
												type : "post",
												url : "http://localhost:8080/ex/insertOrder",
												data : {
													o_uid : 
												},
												success : function() {
													alert("주문이 완료되었습니다.")

													location.href = "http://localhost:8080/ex/shopcart"
												},
												error : function() {
													alert("주문이 실패하였습니다.")

													return false;
												}
											})
								}
							</script>
						</div>
						<!--// inner -->
					</div>
					<!--// payInfo -->
				</div>
			</c:forEach>
		</c:forEach>
	</div>
	<!--// payWrap -->
</div>
<%@include file="footer.jsp"%>
</body>
</html>
