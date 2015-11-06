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
</head>
<body> 
<Center>
<div class="mypage_meeting">
<div class="col-md-12">
<br><br><br><br>
	<h2>마이페이지<span>MY PAGE</span></h2>
  	<!-- ============================================================================================ -->
  	<table border=0 width=940>
  	<div class="communityCover" >
		<ul class="menu_list type02">
		    <li><a href="meeting.do" style="background:#2281c0; color:#fff;">내모임보기</a></li>
			<li><a href="wish.do">위시리스트</a></li>
			<li><a href="modify.do">회원정보수정</a></li>				
		</ul>
      </div>
</table>
<!-- 	<table border=0 width=940>
	          <form method=post action="qna_search.jsp"  name=frm>
				  <tr border=1 bordercolor=gray>	
					<td width=60% align=left><b>&nbsp;&nbsp;&nbsp;&nbsp;<font size=5>Q&A</font></b>&nbsp;&nbsp;&nbsp;문의 및 불편사항에 대해 답변드립니다.</td>
					<td width=40% align=right>
					<input type="text" name="q_search" placeholder="검색어를 입력하세요" />
			        <input type="image" src="image/icon/search02.png" alt="검색" onclick="search()"/>&nbsp;&nbsp;&nbsp;&nbsp;
			        </td>
			       </tr>
			  </form>			  
			</table> -->
		<table border=1 bordercolor="#c2c2be" width=940 height=60>
			<tr height=40>
			    <th width=5%>번호</th>
				<th width=*%>모임제목</th>							
				<th width=20%>모임일자</th>
			    <th width=20%>상태</th>
				<th width=10%>비고</th>
			</tr>
	            <tbody>
					<tr><td colspan="5">모임 내역이 없습니다.</td></tr>						
				</tbody>

			</table>
		</div>
	</center>

			</table>	
			
	</div> 
	</div>
</center>

</body>
</html>
