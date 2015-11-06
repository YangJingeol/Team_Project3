<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="member/member.css" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	function login()
	{
		var f=document.loginFrm;
		if(f.email.value=="")
		{   alert("이메일을 입력해주세요.");
			f.id.focus();
			return;
		}
		
		if(f.pwd.value=="")
		{   alert("비밀번호를 입력해주세요.");
			f.pwd.focus();
			return;
		}
		f.submit();
	}

</script>
</head>

<body>
	<center>
	<div id="subCont" ><br><br>
	<!-- <h2>LOGIN<span class="fs_14">나들목(Nadeulmok)에서 다양한 문화를 경험해봐요!</span></h2>	<br><br><br>	
	</div> -->
	<!-- memberCover -->
	<div class="memberCover">
			<!-- loginWrap -->
			<table>
			<div class="loginWrap mgb50">
			    <div><img src="member/images/login.gif" alt="LOGIN" /></div>
				<div>
					<form name="loginFrm" method="post" action="login_check.do">
						<ul>
							<li><input type="text" name="email" id="email"  placeholder="아이디를 입력하세요" /></li>
							<li><input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요" /></li>
							<li class="loginBtn"><a href="#login" onclick="login()">LOGIN</a></li>
						</ul>							
					</form></div>
			</div><br>
			
			<!-- // loginWrap -->
			<div class="joinGo">
				<img src="member/images/bg_member.png"/>
				<p class="tcenter fs_18 fc_01 mgb15">아직 나들목 회원이 아니세요?</p>
		    	<p class="tcenter"><span class="btn_pack white"><a href="join.do">나들목 회원가입</a></span></p>
			</div><br><br><br><br><br><br><br><br>
		</div>
	<!-- // memberCover -->			
</div>
	
	
	<%-- 
		  <c:if test="${sessionScope.email==null }">
				   <form method=post action="login_check.do" id="login_frm">
				   Email:<input type=text name=email id="email" size=10>
				   &nbsp;
				   <br>
				   PW:<input type="password" name=pwd id=pwd size=10>
				   &nbsp;
				   <input type=button value="로그인" id="loginBtn">
				   </form>
				  </c:if>
				 <c:if test="${sessionScope.email!=null }">
				   ${sessionScope.name }(${sessionScope.admin == 'y'?"관리자":"일반" }) 님 로그인중입니다
				   <form method=post action="logout.do" id="logout_frm">
				   <input type=button value="로그아웃" id="logoutBtn">
				   </form>
				 </c:if> --%>
				 
</center>
</body>
</html>
