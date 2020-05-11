<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/test/css/common.css">
<link rel="stylesheet" href="/test/css/login.css">
</head>
<body>
<div id="wrap">
	<header>
	
	</header>
	<div id="content-wrap">
		<h1 class="content-title">Login</h1>
		<div id="login=wrap">
			<div class="center">
				<form action="<%=request.getContextPath() %>/login/loginOk.jsp" method="post">
					ID : <input type="text" name="id" id="uid" value="" placeholder="아이디(필수)"><br>
					PW : <input type="text" name="pw" id="upw" placeholder="비밀번호(필수)"><br>
					<div class="btn" id="procBtn">로그인</div>
				</form>
				<hr>
				<a class="btn" href="/test/join/join.jsp">회원가입</a>
			</div>
		</div>
		<script src="<%=request.getContextPath()%>/js/login.js"></script>
	</div>
	<footer>
		<div>
     		<ul class="footer">
         		<li>이용약관  |  개인정보취급방침</li>
         		<li>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</li>
         		<li>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</li>
     		</ul>
		</div>
	</footer>
</div>
</body>
</html>