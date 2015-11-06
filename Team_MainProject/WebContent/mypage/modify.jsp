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
<div class="col-md-12">
<br><br><br><br>
	<h2>마이페이지<span>MY PAGE</span></h2>
  <!-- ============================================================================================ -->
  	<table border=1 width=940>
  	<div class="communityCover" >
		<ul class="menu_list type02">
		    <li><a href="meeting.do">내모임보기</a></li>
			<li><a href="wish.do">위시리스트</a></li>	
			<li><a href="modify.do" style="background:#2281c0; color:#fff;">회원정보수정</a></li>					
		</ul>
      </div>
</table><br>
<!--  ====================================================================================== -->
		<table border=0 width=940>
		  <tr border=1 bordercolor=gray>	
				<td width=100% align=left>&nbsp;&nbsp;&nbsp;* 표시가 있는 항목은 필수 입력 항목 입니다.</td>
		  </tr>
      </table>
      <br><br>
<form name="modifyFrm" method="post" action="modify_ok.do">	
<!--  pwd,nickname,name,nation,tel,lang,admin 필수템************************************************************* -->
       <input type="hidden" name="mb_hp" id="mb_hp" value="${d.tel }">
        <input type="hidden" name="my_sex" id="my_sex" value="${d.sex }">
        <input type="hidden" name="my_lang" id="my_lang" value="${d.lang }">
              <input type="hidden" name="tel11" id="tel11" value="${tel1 }">
				<table border=1 width=940px  height=471px>
				<colgroup>
					<col width="20%" />
					<col width="*" />															
				</colgroup>
				<tfoot id="leaveWrap" style="display:none;">
					<tr>
						<td colspan="2" class="memo">
							<p class="fc_02">회원탈퇴를 하시겠습니까?<br />회원 탈퇴시 고객님의 모든 혜택정보 및 개인정보가 시스템에서 삭제됩니다.<br />단, 기존에 참석하신 모임 정보는 일부 보관될 수 있으며 관련 사항은 이용약관 및 개인정보보호정책에서 확인하실 수 있습니다.<br />회원 탈퇴 전 상담원과의 연락을 원하신다면 고객센터로 연락주시기 바랍니다.<br /><span class="letter_zero">고객센타 : 1577-8399</span></p>			
						</td>
					</tr>
					<tr>
						<td colspan="2" class="reason">
							<div class="register">
								<textarea name="mb_leavememo" id="mb_leavememo" cols="" rows=""></textarea><span class="btn out"><a href="#leave" onclick="_leavesubmit(document.modifyFrm);">탈퇴</a></span>				
							</div>	
						</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<th class="important">이름</th>
						<td class="fc_default"><p>${sessionScope.name}</p></td>
					</tr>	
					<tr>
						<th class="important">로그인 이메일</th>
						<td class="padding">							
							<span class="letter_zero fs_14 fc_default"><p>${sessionScope.email}</p></span>
							<p class="mgt10">나들목(NADEULMOK)의 최근 소식 및 이벤트 정보 등을 이메일로 받아보시겠습니까? (결제관련내용은 수신동의 여부와 관계없이 발송됩니다.)</p>
							<p class="mgt05"><input type="checkbox" name="mb_email_agree" id="mb_email_agree" class="check01"  /> <label for="mb_email_agree">이메일 수신동의</label></p>
						</td>
					</tr>
					<tr>
						<th class="important">별명</th>
						<td><p><input type="text" name="nickname" id="nickname" value="${d.nickname }" /></p></td>
					</tr>	
					<tr>
						<th class="important">비밀번호</th>
						<td><p><input type="password" name="password" id="password" /> 영문,숫자 조합 <span class="letter_zero">6~15</span>자</p></td>
					</tr>	
					<tr>
						<th>비밀번호 확인</th>
						<td><p><input type="password" name="password_re" id="password_re" /></p></td>
					</tr>								
					<tr>
						<th class="important">휴대폰</th>
						<td class="padding">		<p>								
							<select class="w-70" name="tel1" id="tel1" value="${tel1 }" title="휴대폰 앞 번호를 선택하세요">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							<input type="text" name="tel2" id="tel2"  value="${tel2 }" /><input type="text" name="tel3" id="tel3" value="${tel3 }" />
							<p class="mgt10">나들목의 최근 소식 및 이벤트 정보 등을 SMS로 받아보시겠습니까? (결제관련내용은 수신동의 여부와 관계없이 발송됩니다.) </p>
							<p class="mgt05"><input type="checkbox" name="mb_hp_agree" id="sms" class="check01" value="Y"  /> <label for="sms">SMS 수신동의</label></p>
						</p></td>
					</tr>
					<tr>
						<th>성별</th>
						<td><p>
								<input type="radio" name="sex" id="m" class="radio01" value="m" disabled="disabled"/> <label>남자</label>
							<input type="radio" name="sex" id="w" class="radio01" value="w" disabled="disabled"/> <label>여자</label>
					
						</p></td>
					</tr>
					<tr>
						<th>국적</th>
						<td>	
							<p> <select id="usernation" name="nation" id="nation" disabled="disabled" style="background-color: #ebebeb;">
							
							      <option value="nation" selected="selected">${d.nation }</option>
							    </select><!-- <script>$("#usernation option:selected").val();</script> -->
						    </p>
						</td>
					</tr>
					<tr>
						<th>언어</th>
						<td>	
						    <p>	
						    <select id="lang" name="lang"><%-- <c:if test="${d.lang==KOR }">selected="selected"</c:if> --%>
							          <option value="KOR">한국어</option>
								      <option value="ENG">영어</option>
								      <option value="CHI">중국어</option>
								      <option value="GER">독일어</option>
								      <option value="JPN">일본어</option>
							    </select>
						    </p>
						    </td>			    
					</tr>
					<tr>	    
                     <th>자기소개</th>
						<td>	
						<p> <c:if test="${d.intro!=null }">
						    <span>
						    <textarea rows="8" cols="100" id= intro name=intro >${d.intro }</textarea>
						    </c:if>
						    <c:if test="${d.intro==null }">
						    <span>
						    <textarea rows="8" cols="100" id= intro name=intro placeholder="자기소개가 없습니다."></textarea>
						    </c:if>
						    </span>
						    <br>
						    </p></td>
					</tr>							
				</tbody>
			</table>		
			<!-- button -->
			<p class="tcenter mgt30">
				<span class="btn_pack blue_b mgr10"><a href="#modify" onclick="joinsubmit();">회원정보 수정</a></span>					
				<span class="btn_pack white_b"><a href="#cancel" onclick="$('#leaveWrap').show();$('#mb_leavememo').focus();">회원탈퇴</a></span>
			</p>
			<!-- // button -->									
		</div>
		<!-- // board_view -->
		
	</div>
	<!-- // myCover -->
</div>
<!-- //subCont -->
<script type="text/javascript">
$(function(){
     var sex =$('#my_sex').val();
     if(sex=="남자"){
    	 $('input:radio[name=sex]:input[value=m]').attr("checked", true);
     }
     if(sex=="여자"){
    	 $('input:radio[name=sex]:input[value=w]').attr("checked", true);
     }
     var lang =$('#my_lang').val();/* 
     if($('#lang').val()==lang){ */
    	 $("select option[value="+lang+"]").attr("selected", true);
     var tel1 =$('#tel11').val();
    	 $("select option[value="+tel1+"]").attr("selected", true);
});
function _leavesubmit(f){			
	if(!$("#mb_leavememo").val()) {
		$("#mb_leavememo").focus();
		alert("탈퇴사유를 입력해주세요.");		
		return;
	}	

	if( !confirm('회원탈퇴를 신청하시겠습니까?') )
		return;
	
	f.submit();	
}


function joinsubmit(){		
	var f = document.modifyFrm;
	var pattern_num = /([0-9])/g; 
	if($("#password").val().length > 0 && $("#password").val().length < 6 ) {
		$("#password").focus();
		alert("비밀번호는 6자 이상입니다.");				
		return;
	}
	 var pw = $("#password").val(); 
	if ($("#password").val().length > 0 && (!pw.match(/^[a-zA-Z0-9]{6,20}$/) || !pw.match(/[a-z]/) || !pw.match(/[0-9]/))) { 
		alert("비밀번호는 6~20자의 영문 대소문자와 숫자로 구성되어야 하며, 공백은 사용할 수 없습니다."); 
		return;
	} 
	
	if($('#password').val()=="")
	{
		alert("비밀번호를 입력해주세요.");	
		$('#password').focus();
		return;
	}
	
	if($("#password").val().length > 0 && $("#password").val() != $("#password_re").val() ) {
		$("#password").focus();
		$("#password_re").val("");
		alert("입력한 비밀번호가 서로 맞지 않습니다.");				
		return;
	}
					
	if(!$("#tel2").val()) {
		$("#tel2").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}	
	if(!pattern_num.test($("#tel2").val())) {
		$("#tel2").val("");
		$("#tel2").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}			
	if(!$("#tel3").val()) {
		$("#tel3").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}
	if(!pattern_num.test($("#tel3").val())) {
		$("#tel3").val("");
		$("#tel3").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}			
	if(!$("#intro").val()) {
		$("#intro").focus();
		alert("자기소개를 입력해주세요.");		
		return;
	}	

	alert("수정되었습니다.");	
	f.submit();	
}

</script>	
	</div> 
</center>
</body>
</html>
