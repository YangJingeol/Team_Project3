<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="meeting/div.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/jquery.shop.menu.js"></script>
	
	<style>
      body {
        margin: 0px;
        padding: 0px;
      }
      .jbTitle {
        text-align: center;
      }
      .jbContent {
        height: 2000px;
      }
      .jbFixed {
        position: fixed;
        top: 1px;
      }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
      $( document ).ready( function() {
        var jbOffset = $( '.sanchor_fixed' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() >= jbOffset.top ) {
            $( '.sanchor_fixed' ).addClass( 'jbFixed' );
            
          }
          else {
            $( '.sanchor_fixed' ).removeClass( 'jbFixed' );
          }
        });
        $('#sanchor a').click(function() {
          	var onTab = $(this).find('li').attr('id');
          	$('.sanchor a li').removeClass('on');
          	$( '#' + onTab ).addClass("on");
          });
      });
    </script>
<style>
.on {
	border: 2px solid blue !important;
	border-bottom: 1px solid white !important;
	background: white;
}
</style>

<style>
/* 초기화 */
html {overflow-y:scroll}
body {margin:0;padding:0;font-size:0.75em;font-family:'Nanum Gothic', '나눔 고딕', 'Malgun Gothic', '맑은 고딕', dotum, Arial}
html, h1, h2, h3, h4, h5, h6, form, fieldset, img {margin:0;padding:0;border:0}
h1, h2, h3, h4, h5, h6 {font-size:1em;font-family:'Nanum Gothic', '나눔 고딕', 'Malgun Gothic', '맑은 고딕', dotum, Arial}
nav, section {display:block}
input, button, select, img {vertical-align:middle}
input, button {margin:0;padding:0;font-family:'Nanum Gothic', '나눔 고딕', 'Malgun Gothic', '맑은 고딕', dotum, Arial;font-size:1em}
button {cursor:pointer}
textarea, select {font-family:'Nanum Gothic', '나눔 고딕', 'Malgun Gothic', '맑은 고딕', dotum, Arial;font-size:1em}
select {margin:0}
p {margin:0;padding:0;word-break:break-all}
hr {display:none}
pre {overflow-x:scroll;font-size:1.1em}
/* 상품 상세보기 - 상품문의 */
#sit_qa {margin:0 0 10px;padding:10px 0 20px}
#sit_qa h2 {margin:0 0 10px}
#sit_qa h3 {font-size:24px;font-weight:800;margin:40px 0 10px 0;line-height:26px;padding:0 0 6px 0;color:#707070}

#sit_qa_ol {margin:0 0 5px;padding:0;border-top:1px solid #e9e9e9;list-style:none}
.sit_qa_li {position:inherit;padding:0 0 10px;border-bottom:1px solid #e9e9e9}
.sit_qa_li_title {display:block;margin:0;padding:10px;width:100%;border:0;background:transparent;text-align:left;cursor:pointer}

.sit_qa_dl {margin:0;padding:0 10px;zoom:1}
.sit_qa_dl:after {display:block;visibility:hidden;clear:both;content:""}
.sit_qa_dl dt {float:left}
.sit_qa_dl dd {float:left;margin:0 20px 0 5px}
.sit_qaa_done {color:#ff3061}
.sit_qaa_yet {color:#999}

.sit_qa_con {display:none;padding:10px 10px 0}
.sit_qa_p {margin:0 0 10px;padding:10px;background:#fff}
.sit_qa_p strong {display:inline-block;margin:0 0 10px}
.sit_qa_qaq {margin:0 0 20px}
.sit_qa_con textarea {display:none}
.sit_qa_cmd {text-align:right}

.sit_qa_pw {display:none;position:absolute;top:30px;left:175px;padding:10px;width:348px;border:1px solid #000;background:#fff;text-align:center}
.sit_qa_pw span {display:block;margin:0 0 5px}

#sit_qa_wbtn {margin:0 0 5px;text-align:right}

#sit_qa_write {}
#sit_qa_write #iq_subject {width:100%}

/* 버튼 */
a.btn01 {display:inline-block;padding:7px;border:1px solid #ccc;background:#fafafa;color:#000;text-decoration:none;vertical-align:middle}
a.btn01:focus, a.btn01:hover {text-decoration:none}
button.btn01 {display:inline-block;margin:0;padding:7px;border:1px solid #ccc;background:#fafafa;color:#000;text-decoration:none}
a.btn02 {display:inline-block;padding:7px;border:1px solid #3b3c3f;background:#4b545e;color:#fff;text-decoration:none;vertical-align:middle}
a.btn02:focus, .btn02:hover {text-decoration:none}
button.btn02 {display:inline-block;margin:0;padding:7px;border:1px solid #3b3c3f;background:#4b545e;color:#fff;text-decoration:none}

/* 화면낭독기 사용자용 */
#hd_login_msg {position:absolute;top:0;left:0;width:1px;height:1px;overflow:hidden}
.msg_sound_only, .sound_only {display:inline-block !important;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;font-size:0;line-height:0;border:0 !important;overflow:hidden !important}

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../js/viewimageresize.js"></script>
<script type="text/javascript">
$(function(){
    $(".itemqa_form").click(function(){
        window.open(this.href, "itemqa_form", "width=810,height=680,scrollbars=1");
        return false;
    });

    $(".itemqa_delete").click(function(){
        return confirm("정말 삭제 하시겠습니까?\n\n삭제후에는 되돌릴수 없습니다.");
    });
    
    //제목을 열림
    $(".sit_qa_li_title").click(function(){
    	var $con = $(this).siblings(".sit_qa_con");
        if($con.is(":visible")) {
            $con.slideUp();
        } else {
            $(".sit_qa_con:visible").hide();
            $con.slideDown( function() {
                // 이미지 리사이즈
                $con.viewimageresize2();
            });
        }
    });

    $(".qa_page").click(function(){
        $("#itemqa").load($(this).attr("href"));
        return false;
    });
});
</script>
<script src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=6bc456edba6d4e154047f2efa385f844">

	</script>

	<script>

		window.onload= function() {

			var map = new nhn.api.map.Map('map');

			//여기까지 했을 때 지도가 띄워진다. 지도 생성

			//이 메소드만 사용 했을 때는 지도의 마우스 휠로 줌 인 아웃기능만 사용할 수 있다.

			

			 var mapZoom = new nhn.api.map.ZoomControl();

			mapZoom.setPosition({ left: 20, top: 20 });

			//포지션에 정해준 위치에 맵을 줌 인 아웃 할 수 있는 위젯을 만들어준다. 

			

			 var mapType = new nhn.api.map.MapTypeBtn();

			mapType.setPosition({ left: 50, top: 20 }); 

			//지도를 일반지도와 위성지도를 볼 수 있게 해준다.

			

			var mapTraffic = new nhn.api.map.TrafficMapBtn();

			mapTraffic.setPosition({ left: 125, top: 20 });

			 //실시간 교통 버튼을 만들어준다.


			 //밑에는 변수를 사용해주는 소스이다.

			 map.addControl(mapZoom);

			 map.addControl(mapType);

			 map.addControl(mapTraffic);

			 map.addControl(mapTheme);

			 map.addControl(mapBicycleGuide);

			 map.addControl(mapTrafficGuide); 

			 

		};	

	</script>

</head>
<body id="body">
<div id="div_a">
	<div id="div_1">
		<b>영어 한국어 교환 모임</b>
	</div>
	<div id="div_2">
		<div class="div_2-1">
			<p><img src="meeting/image/bg.jpg"></p>
			<ul>
				<li>모집인원: 6명</li>
				<li>마감일: 2일 전</li>
			</ul>	
		</div>
		<div class="div_2-2">
			<ul class="first">
				<li>모임일자: 11월 07일 토요일 ~ 11월 28일 토요일</li>
			</ul>
			<ul class="second">
				<li>참여신청: 11월 01일 오전 9시 ~ 11월 06일 오후 10시 30분</li>
			</ul>
			<ul>
				<li>모임장소: 신촌 마이크임팩트 5층</li>
				<li>교환언어: 영어, 한국어</li>
			</ul>
			<ul>
				<li>언어1 모집인원: 3명</li>
				<li>언어2 모집인원: 3명</li>
			</ul>
			<ul class="bar">
				<li>
	<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" 
	style="width:100%">
      70%
    </div>
    
</li>
			</ul>
			<ul class="pro">
				<li class="one">총 모집인원: 6명</li>
				<li>언어1 참여자: 2명</li>
				<li>언어2 참여자: 2명</li>
			</ul>
			<ul class="short_des">
				<li>모임 요약설명: </li>
			</ul>
			<ul class="btn_list">
				<li class="endApply">
		     		<a href="#apply" onclick="applyCheck();">모임 참여하기</a>
		    	</li>
		    	<li class="wish">
		     		<a href="#btn" onclick="wishCnt();">위시리스트</a>
		    	</li>
			</ul>
		</div>
	</div>
	
	<div id="div_3">
		<ul>
			<li class="title"><b>모임 개설자</b></li>
			<li>
				<img src="image/조원소개_민수.png" width=40 height=40>
				MINSYUUU     010-1234-5678     aaaa@naver.com
			</li>
		</ul>
	</div>

	<div id="sanchor_wrap" class="sanchor_fixed">
		<ul id="sanchor" class="sanchor">
			<a href="#cont"><li id="tab_inf">상세정보</li></a>
       	 	<a href="#place"><li id="tab_pla">모임 장소</li></a>
			<a href="#"><li id="tab_not">모임 공지</li></a>
			<a href="#comment"><li id="tab_com">모임 후기</li></a>
			<a href="#itemqa"><li id="tab_qa">모임 Q&A</li></a>
			<a href="#memberList"><li id="tab_list">참가자 LIST</li></a>   
		</ul>
	</div>
	
	
		<div id="cont">
			<img src="http://www.sdinsight.co.kr/FileData/edtImg/bbc0b25d_%25EB%25B9%2585%25ED%2594%25BD%25EC%25B2%25982.png">
		</div>

	<div id="div_4">
		<div id="place">
			<div id="map" style="width:700px; height:450px">

			</div>
			
		</div>
	</div>

	<div id="div_8">
	<div id="comment">
		<table width=1000>
			<tr>
				<td rowspan=2 width=15% align=center><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRZGRmCBUbUjzDJluRKbgUSbUsSIY7vl8L3rTGvL9xpgfFfZd3g" width=50 height=50></td>
				<td rowspan=3 width=75% border=0><pre>
가나다라마바사아자카타파하
나들목 나들목 JSP프로젝트 파이팅!!
모임 후기가 이렇게 출력됩니다.				
</pre>			</td>
				<td rowspan=2 align=right valign="bottom" width=10%>2015.11.03.</td>
			</tr>
			<tr>
				<td width=15% align=center></td>
				
			</tr>
			<tr>
				<td width=15% align=center>AAHRAHAH</td>
				
			</tr>
		</table>
		<div class="com">
  <input type="text" class="form-control" placeholder="모임 후기를 남겨주세요.">
  <input type="button" id="comBtn" value="입력" class="btn02 itemqa_form">
		</div>
	</div>
	</div>
	
	<div id="div_9">
	    <div id="itemqa">

<!-- 상품문의 목록 시작 { -->
	<section id="sit_qa_list">
	    <h3>Q&amp;A</h3>
	
	    <ol id="sit_qa_ol">
	          <li class="sit_qa_li">
	            <button type="button" class="sit_qa_li_title"><b>1</b>문의
	            	<img src="../image/icon_secret.gif" alt="비밀글">
	            </button>
	            <dl class="sit_qa_dl">
	                <dt>작성자</dt>
	                <dd>나민수</dd>
	                <dt>작성일</dt>
	                <dd>2015.10.31.</dd>
	                <dt>상태</dt>
	                <dd class="sit_qaa_done">답변완료</dd>
	            </dl>
	
	            <div id="sit_qa_con_0" class="sit_qa_con">
	                <div class="sit_qa_p">
	                    <div class="sit_qa_qaq">
	                        <strong>문의내용</strong><br>
	                        <c:if test="${qa.secret == 'Y' }">
	                        	<c:set var="s_jsp" value="qa_pw.jsp"/>
				            </c:if>
				            <c:if test="${qa.secret == 'N' }">
	                        	<c:set var="s_jsp" value="qa_pw_ok.jsp"/>
	                        </c:if>
	                        <jsp:include page="${s_jsp }"></jsp:include>           
	                    </div>
	                </div>
	
	            </div>
	        </li>
	    </ol>
	</section>
	
	<!-- 페이지 이동 -->
	<nav class="pg_wrap">
		<span class="pg">
			<span class="sound_only">열린</span>
			<strong class="pg_current">1</strong>
			<span class="sound_only">페이지</span>
			<a href="" class="qa_page">2</a><span class="sound_only">페이지</span>
			<a href="" class="qa_page">3</a><span class="sound_only">페이지</span>
			<a href="" class="qa_page">4</a><span class="sound_only">페이지</span>
			<a href="" class="qa_page">5</a><span class="sound_only">페이지</span>
			<a href="" class="qa_page pg_end">맨끝</a>
		</span>
	</nav>
	<div id="sit_qa_wbtn">
	    <a href="page4-1.jsp" class="btn02 itemqa_form">모임문의 쓰기<span class="sound_only"> 새 창</span></a>
	    <a href="" id="itemqa_list" class="btn01">더보기</a>
	</div>
	
<!-- } 상품문의 목록 끝 -->
	</div>
	<div id="div_10">
	<div id="memberList">
       <table id="list_head" class="table-condensed">
      <tr height=100>
        <th align=center class="th25">참가자</th>
        <th align=center class="th5">|</th>
        <th align=center class="th30">이메일</th>
        <th align=center class="th5">|</th>
        <th align=center class="th15">언어</th>
        <th align=center class="th5">|</th>
        <th align=center class="th15">성별</th>
      </tr>
      </table>
    <table id="list_body" class="table-condensed">
      <tr>
        <td class="memImg"><img src="http://cfs5.tistory.com/upload_control/download.blog?fhandle=YmxvZzEzNTEyM0BmczUudGlzdG9yeS5jb206L2F0dGFjaC8wLzE1MDAwMDAwMDAxNC5qcGc%3D" width=50 height=50></td>
        <td class="memName">MINSYUUU</td>
        <td class="memEmail">naminsu25@naver.com</td>
        <td class="memLang">한국어</td>
        <td class="memGen">남자</td>
      </tr>
      <tr>
        <td class="memImg"><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRZGRmCBUbUjzDJluRKbgUSbUsSIY7vl8L3rTGvL9xpgfFfZd3g" width=50 height=50></td>
        <td class="memName">AAHRAHAH</td>
        <td class="memEmail">zzoara25@gmail.com</td>
        <td class="memLang">영어</td>
        <td class="memGen">여자</td>
      </tr>
      <tr>
        <td class="memImg"><img src="http://cfile22.uf.tistory.com/image/244737335147CCFE123A66" width=50 height=50></td>
        <td class="memName">JIHYEEE</td>
        <td class="memEmail">jhihye@hanmail.net</td>
        <td class="memLang">한국어</td>
        <td class="memGen">여자</td>
      </tr>
      <tr>
        <td class="memImg"><img src="http://img.mimint.co.kr/bbs/2011/4/12/963820110412211708.jpg" width=50 height=50></td>
        <td class="memName">ZOOSIX</td>
        <td class="memEmail">zoosix@gmail.com</td>
        <td class="memLang">영어</td>
        <td class="memGen">남자</td>
      </tr>
  </table>
  <pre>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </pre>
</div>
</div>

</div>

</div>
</body>
</html>








