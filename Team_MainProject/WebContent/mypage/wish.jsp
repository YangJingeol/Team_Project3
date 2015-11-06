<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="mypage/mypage.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script src="../js/toucheffects.js"></script>
		<link rel="stylesheet" type="text/css" href="default.css" />
		<link rel="stylesheet" type="text/css" href="component.css" />
		<script src="../js/modernizr.custom.js"></script>
</head>
<body> 
<Center>
<div class="col-md-12">
<br><br><br><br>
	<h2>마이페이지<span>MY PAGE</span></h2>
  <!-- ============================================================================================ -->
  	<table border=0 width=940>
  	<div class="communityCover" >
		<ul class="menu_list type02">
		    <li><a href="meeting.do">내모임보기</a></li>
			<li><a href="wish.do" style="background:#2281c0; color:#fff;">위시리스트</a></li>
			<li><a href="modify.do">회원정보수정</a></li>					
		</ul>
      </div>
</table>
 <table border=0 width=940>
   	<div id="content">
		<%	for(int i=0;i<4;i++){%>
		<div class="col">
                <ul class="grid cs-style-3">
				<li>
					
						<img src="mypage/images/4.png" alt="img04" width=250 height=250>
					
							<h3>쿨하게 생존하라 워크샵</h3>
							<span>2015/05/08</span>
							<a href="#">상세보기</a>
					
				</li>
			</ul>
			</div>
			<%}%>
	</div> 
</table> 
</div>
</center>
</body>
</html>
<%--   
     	<div id="content">
		<%
				for(int i=0;i<4;i++)
				{
			%>
           		 <div class="box">
				<p><a href=""><img src="../images/back.jpg" alt="썸네일" width=300 height=306 /></a></p>
				<a href="" class="titleCover">
					<span class="title">쿨하게 생존하라 워크샵</span>
					<span class="lang">한국어 ↔ 영어</span>
					<span class="place">서울파트너스 하우스(추후약도제공)</span>
					<span class="date">2015-10-31 ~ 2015-10-31</span>
				</a>
				<ul>
					<li>접수마감 : <span>2015-10-31</span></li>
					<li>모집인원 : <span>20</span>명</li>
				</ul>
			</div>
			<%
				}
			%>
	</div>  --%>
	
	
