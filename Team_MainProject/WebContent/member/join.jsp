<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://bootswatch.com/cerulean/bootstrap.css">
<link rel="stylesheet" href="https://github.com/thomaspark/bootswatch/blob/gh-pages/assets/css/custom.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="member/join.css"/>
<link rel="stylesheet" type="text/css" href="css/shadowbox.css"/>
<script type="text/javascript" src="js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#btnSub').click(function(){
	var email=$('#useremail').val();
	if(email=="")
	{
	$('#emailnull').text("이메일을 입력하세요");
	return;
	}
	else
	{
	$('#emailnull').text("");
	}
	$('#emailnull').text("");
	
	var pwd=$('#userpwd').val();
	if(pwd=="")
	{
	$('#pwdnull').text("비밀번호를 입력하세요");
	$('#userpwd').focus();
	return;
	}
	$('#userpwd').text("");
	
	
	var name=$('#username').val();
	if(name=="")
	{
	$('#namenull').text("이름을 입력하세요");
	$('#username').focus();
	return;
	}
	$('#username').text("");
	var nickname=$('#usernickname').val();
	if(nickname=="")
	{
	$('#nicknamenull').text("별명을 입력하세요");
	$('#usernickname').focus();
	return;
	}
	$('#usernickname').text("");
	
	var age=$('#userage').val();
	if(age=="")
	{
	$('#agenull').text("나이를 입력하세요");
	$('#userage').focus();
	return;
	}
	else
	{
	$('#agenull').text("");
	}
	$('#userage').text("");
	
	var tel=$('#usertel').val();
	if(tel=="")
	{
	$('#telnull').text("전화번호를 입력하세요");
	$('#usertel').focus();
	return;
	}
	$('#usertel').text("");
	
	var intro=$('#userintro').val();
	if(intro=="")
	{
	$('#intronull').text("소개를 입력하세요");
	$('#userintro').focus();
	return;
	}
	$('#userintro').text("");
	
	var photo=$('#userphoto').val();
	if(photo=="")
	{
	$('#photonull').text("사진을 입력하세요");
	$('#userphoto').focus();
	return;
	}
	$('#userphoto').text("");
	
	$('#join_Form').submit();
	});
});
$(function(){
	$('#useremail').keyup(function(){
	$('#emailnull').text("");
	}); 
	$('#usertel').keyup(function(){
	$('#telnull').text("");
	}); 
	
	$('#userintro').keyup(function(){
	$('#intronull').text("");
	});
	
	$('#userphoto').keyup(function(){
	$('#photonull').text("");
	});
	$('#usernickname').keyup(function(){
	$('#nicknamenull').text("");
	}); 
	
	$('#username').keyup(function(){
	$('#namenull').text("");
	}); 
	
	$('#userbday').keyup(function(){
	$('#agenull').text("");
	}); 
});
$(function(){
	$('#userpwd').keyup(function(){
	$('#pwdnull').text("");
	$('font[name=pwdcheck]').text('');
	}); //#user_pass.keyup
	$('#userpwdcheck').keyup(function(){
	if($('#userpwd').val()!=$('#userpwdcheck').val()){
	$('font[name=pwdcheck1]').text('');
	$('font[name=pwdcheck]').html("암호가 일치하지 않습니다.");
	}else{
	$('font[name=pwdcheck]').text('');
	$('font[name=pwdcheck1]').html("암호가 일치합니다.");
	}
	}); 
});
function ck_age() 
{ 
	var year=parseInt(new Date().getFullYear()); 
	var age=document.getElementsByName('age1'); 
	var ck=parseInt(age[0].value.substr(0,4)); 
	join_form.age.value=(year-ck)+1; // 우리나라 나이 표시 +1 더함 
} 
Shadowbox.init({
 players:["iframe"]	
});
function idcheck()
{
	Shadowbox.open({
	content:'idcheck.do',
	player:'iframe',
	title:'아이디 중복체크',
	width:350,
	height:200
	});
}
function phoneCheck(obj) {
 var n = obj.value.replace(/\-/g, "");
 var len = n.length;
 var number=n;
 
 if(len > 3){
 number=n.substring(0, 3)+"-";
 if(len > 3 && len < 7){
 number+=n.substring(3);
 }else if(len > 6 && len < 11){
 number+=n.substring(3, 6)+"-"+n.substring(6);
 }else if(len == 11){
 number+=n.substring(3, 7)+"-"+n.substring(7);
 }
 }
 obj.value = number;
}
 
function ck_phone()
 {
	var inputtedPhoneNumber = $("#usertel").val();
	var phoneNumberRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
	if(!phoneNumberRegex.test(inputtedPhoneNumber)) {
	$('font[name=telcheck1]').text('');
	$('font[name=telcheck]').html("잘못된 형식의 전화번호입니다.");
	$("#usertel").val("").focus();
	}
	else
	{
	$('font[name=telcheck]').text('');
	$('font[name=telcheck1]').html("올바른 형식입니다.");
	}
 }
function previewImage(targetObj, previewId) {
 var preview = document.getElementById(previewId); //div id 
 var ua = window.navigator.userAgent;
 if (ua.indexOf("MSIE") > -1) {//ie일때
 targetObj.select();
 try {
 var src = document.selection.createRange().text; // get file full path 
 var ie_preview_error = document
 .getElementById("ie_preview_error_" + previewId);
 if (ie_preview_error) {
 preview.removeChild(ie_preview_error); //error가 있으면 delete
 }
 var img = document.getElementById(previewId); //이미지가 뿌려질 곳 
 img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
 + src + "', sizingMethod='scale')"; //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
 } catch (e) {
 if (!document.getElementById("ie_preview_error_" + previewId)) {
 var info = document.createElement("<p>");
 info.id = "ie_preview_error_" + previewId;
 info.innerHTML = "a";
 preview.insertBefore(info, null);
 }
 }
 } else { //ie가 아닐때
 var files = targetObj.files;
 for ( var i = 0; i < files.length; i++) {
 var file = files[i];
 var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
 if (!file.type.match(imageType))
 continue;
 var prevImg = document.getElementById("prev_" + previewId); //이전에 미리보기가 있다면 삭제
 if (prevImg) {
 preview.removeChild(prevImg);
 }
 var img = document.createElement("img"); //크롬은 div에 이미지가 뿌려지지 않는다. 그래서 자식Element를 만든다.
 img.id = "prev_" + previewId;
 img.classList.add("obj");
 img.file = file;
 img.style.width = '80px'; //기본설정된 div의 안에 뿌려지는 효과를 주기 위해서 div크기와 같은 크기를 지정해준다.
 img.style.height = '80px';
 
 preview.appendChild(img);
 if (window.FileReader) { // FireFox, Chrome, Opera 확인.
 var reader = new FileReader();
 reader.onloadend = (function(aImg) {
 return function(e) {
 aImg.src = e.target.result;
 };
 })(img);
 reader.readAsDataURL(file);
 } else { // safari is not supported FileReader
 //alert('not supported FileReader');
 if (!document.getElementById("sfr_preview_error_"
 + previewId)) {
 var info = document.createElement("p");
 info.id = "sfr_preview_error_" + previewId;
 info.innerHTML = "not supported FileReader";
 preview.insertBefore(info, null);
 }
 }
 }
 }
}
</script>
</head>
<body>
 <div id="wrapper">
 <center><h3>회원 가입 창</h3></center>
 <form class="form-horizontal" id="join_Form" name="join_form" action="join_ok.do">
 <div class="form-group">
 
	<label for="userid" class="col-sm-2 control-label">아이디(E-mail)</label>
	<input class="col-sm-3" type=text name="email" id="useremail" readonly>
	<input class="btn btn-default" type=button value=중복체크 id="useridBtn" onclick="idcheck()">
	<span style="text-align: center; color:red;" id="emailnull"></span>
 </div>
 
 <div class="form-group">
	<label for="userpwd" class="col-sm-2 control-label">비밀번호</label>
	<input type=password name="pwd" id="userpwd">
	<input type=password name="pwdcheck" id="userpwdcheck" placeholder="재입력">
	<font name = "pwdcheck" size="2" color="red"></font>
	<font name = "pwdcheck1" size="2" color="blue"></font>
	<span style="text-align: center; color:red;" id="pwdnull"></span>
 </div>
 
 <div class="form-group">
	<label for="username" class="col-sm-2 control-label">이름</label>
	<input type=text name="name" id="username">
	<span style="text-align: center; color:red;" id="namenull"></span>
	</div>
 
 <div class="form-group">
	<label for="usernickname" class="col-sm-2 control-label">별명</label>
	<input type=text name="nickname" id="usernickname">
	<span style="text-align: center; color:red;" id="nicknamenull"></span>
 </div>
 
 <div class="form-group">
	<label for="usersex" class="col-sm-2 control-label">성별</label>
	<input type=radio name="sex" id="usersex" checked value="남자">남자
	<input type=radio name="sex" id="usersex" value="여자">여자
</div>
 
<div class="form-group">
	<label for="userbday" class="col-sm-2 control-label">생년월일</label>
	<input type=date name="age1" id="userbday" onblur="ck_age()">
	<input type="text" name="age" id="userage" size=3 maxlength=3 readonly>세
	<span style="text-align: center; color:red;" id="agenull"></span>
 </div>
 <div class="form-group">
 <label for="usernation" class="col-sm-2 control-label">국적</label>
 <select id="usernation" name="nation">
	<option>한국</option>
	<option>미국</option>
	<option>중국</option>
	<option>독일</option>
	<option>일본</option>
	<option>대만</option>
	<option>필리핀</option>
	<option>영국</option>
	<option>프랑스</option>
	<option>이탈리아</option>
	</select>
 </div>

<div class="form-group">
 <label for="usertel" class="col-sm-2 control-label">전화번호</label>
 <!-- <span id="cellStyle">
	<select id="usertel" name="tel">
	<option>010</option>
	<option>011</option>
	<option>017</option>
	</select>
	<input type=text name="tel2" id="usertel1">-
	<input type=text name="tel3" id="usertel2">
 </span> -->
 <input type=text name="tel" id="usertel" onkeyup="phoneCheck(this)" maxlength="13" onblur=ck_phone() />
 <font name="telcheck" size="2" color="red"></font>
 <font name="telcheck1" size="2" color="blue"></font>
 <span style="text-align: center; color:red;" id="telnull"></span>
 </div>
 
 <div class="form-group">
 <label for="userlanguage" class="col-sm-2 control-label">언어</label>
 <select id="userlanguage" name="lang">
	<option value="KOR">한국어</option>
	<option value="ENG">영어</option>
	<option value="CHI">중국어</option>
	<option value="GER">독일어</option>
	<option value="JPN">일본어</option>
	</select>
 </div>
 
<div class="form-group">
 <label for="userintro" class="col-sm-2 control-label" style="margin-top: 20px">자기소개</label>
 <span id="intoStyle">
 <textarea rows="8" cols="50" id= userintro name=intro></textarea>
 </span>
 <br>
 <span style="text-align: center; color:red;" id="intronull"></span>
</div>
 
<!-- <div class="form-group">
 <label for="usernickname" class="col-sm-2 control-label">사진</label>
 <input type="file" onchange="previewImage(this,'previewId')">
 <div id='previewId' style='width: 80px; height: 80px; color: black; font-size: 15pt;
 border: 0px solid black; position: absolute; left: 690px; top: 760px;'>
 </div>
 </div>
 <br>
 <br> -->
 <div class="form-group">
 <label for="usernickname">사진</label>
 <input type=text name="photo" id="userphoto">
 <span style="text-align: center; color:red;" id="photonull"></span>
 </div>
 
 <center>
 <div class="form-group">
 <input type=button class="btn btn-primary" id="btnSub" value=회원가입>
	<input type=button class="btn btn-primary" id="btnCancel" value=가입취소>
 </div>
 </center>
 </form>
 </div>
</body>
</html>