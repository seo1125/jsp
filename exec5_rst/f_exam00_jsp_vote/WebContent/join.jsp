<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/db_connect.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역구의원투표 프로그램</title>
<link rel="stylesheet" type="text/css" href="css/style.css?ver1.1.5">
<script type="text/javascript">
	function checkValue() {
		var cv = document.data;
		
		if(!cv.v_jumin.value){
			alert("주민번호가 입력되지 않았습니다!");
			cv.v_jumin.focus();
			return false;
		}
		if(!cv.v_name.value){
			alert("성명이 입력되지 않았습니다!");
			cv.v_name.focus();
			return false;
		}
		if(!cv.m_no.value){
			alert("후보번호 입력되지 않았습니다!");
			cv.m_no.focus();
			return false;
		}
		if(!cv.v_time.value){
			alert("투표시간이 입력되지 않았습니다!");
			cv.v_time.focus();
			return false;
		}
		if(!cv.v_area.value){
			alert("투표장소가 입력되지 않았습니다!");
			cv.v_area.focus();
			return false;
		}
		if(!cv.v_confirm.value){
			alert("유권자 확인 선택되지 않았습니다!");
			return false;
		}
}
</script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>

	<main id="section">
		<h2 class="title">투표하기</h2>
		<form name="data" action="join_a.jsp" method="post"
			onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th style="background-color: white;">주민번호</th>
					<td> <input type="text" name="v_jumin" autofocus>예)890101200021</td>
				</tr>
				<tr>
					<th style="background-color: white;">성명</th>
					<td> <input type="text" name="v_name" size=""></td>
				</tr>
				<tr>
					<th style="background-color: white;">후보번호</th>
					<td><select name="m_no">
							<option value="">후보번호</option>
							<option value="1">김후보</option>
							<option value="2">이후보</option>
							<option value="3" selected>박후보</option>
							<option value="4">조후보</option>
							<option value="5">최후보</option>
					</select></td>
				</tr>
				<tr>
					<th style="background-color: white;">투표시간</th>
					<td> <input type="text" name="v_time">예) 0930 (9시30분)</td>
				</tr>
				<tr>
					<th style="background-color: white;">투표장소</th>
					<td> <input type="text" name=v_area></td>
				</tr>
				<tr>
				<th style="background-color: white;">유권자확인</th>
				<td> 
					<input type = "radio" name= "v_confirm" value="Y">확인
					<input type = "radio" name= "v_confirm" value="N" checked>미확인
				</td>
				</tr>
				<tr>
				<td colspan="2" align="center">
					<input type = "submit" value = "투표하기">
					<input type = "button" value = "다시쓰기" onclick="">
				</td>
				</tr>
			</table>
		</form>
	</main>

	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>

</body>
</html>