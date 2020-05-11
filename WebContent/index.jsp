<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%request.getContextPath() %>/css/common.css">
<link rel="stylesheet" href="<%request.getContextPath() %>/css/index.css">
</head>
<body>
<div id="wrap">
	<header>
		<a href="/test/index.jsp" class="logo">
			<b>data</b>
		</a>
		<nav>
			<ul class="nav-items">
				<li><a href="/test/login/login.jsp">로그인</a></li>
				<li> | </li>
				<li><a href="/test/join/join.jsp">회원가입</a></li>
				<li> | </li>
				<li><a href="/test/board/list.jsp">게시판</a></li>
			</ul>
		</nav>
	</header>
	<div id="content-wrap">
		<%
			int pageNum=0;pageList=5;
			if(request.getParameter("page")==null){
				pageNum=1;
			}else{
				pageNum=Integer.parseInt(request.getParameter("page"));
			}
			BoardDao dao = BoardDao.getInstance();
			ArrayList<BoardDto> boards = dao.getBoardAll(pageNum, pageList);
			int count = dao.getCount();
			int pageCount = (int)Math.ceil((double)count/pageList);
			
			
		%>
		<div id="board-wrap">
			Total :  / Page: /
			<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="5">
					
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<a href="<%=request.getContextPath()%>/board/write.jsp" class="btn">글쓰기</a>
						<a href="<%=request.getContextPath()%>/board/fwrite.jsp" class="btn">파일업로드</a>
					</td>
				</tr>
			</table>
		</div>
		
	</div>
	<footer>
		<div>
			<ul class="footer">
				<li>이용약관 | 개인정보취급방침</li>
				<li>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호) | t. 02-2082-1688 | F.  031-000-0000</li>
				<li>Copyright TheJOEUN ACADEMY Corp.. All Rights Reserved.</li>
			</ul>
		</div>
	</footer>
</div>
</body>
</html>