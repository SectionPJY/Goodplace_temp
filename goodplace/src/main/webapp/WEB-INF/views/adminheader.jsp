<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function search() {
		const searchWord = document.getElementById("word").value;
		console.log(searchWord);

		$.ajax({
			type : "post",
			url : "http://localhost:8080/ex/searchPage",
			data : {
				searchWord : searchWord
			},
			success : function(data) {
				const url = "http://localhost:8080/ex/searchPage"
				console.log(url)
				location.replace(url)
			},
			error : function(data) {
				alert(data)
			}
		});
	}
</script>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<!-- Navbar Brand-->
	<a href="admin"> <img src="resources/assets/img/GoodplaceLogo.png"
		width="50" height="50" style="margin-left: 20px" />
	</a>
	<!-- Navbar Search-->
	<form
		class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
		<div class="input-group">
			<div class="menu-button">
				<button class="user" id="userregister" type="button"
					style="height: 50px" onclick="location.href='registration'">회원
					등록</button>
				<button class="equip" id="equipmentregistration" type="button"
					style="height: 50px" onclick="location.href='equip'">장비 등록</button>
				<button class="question" id="questionregister" type="button"
					style="height: 50px" onclick="location.href='campingreg'">캠핑장
					등록</button>
			</div>
		</div>
	</form>
</nav>
