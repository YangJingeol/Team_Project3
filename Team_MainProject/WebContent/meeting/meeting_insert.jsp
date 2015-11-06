<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/insert.css" type="text/css" />
<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "se2/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});
	
	// 다음 단계
	$('.next.button').click(function(){
		
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		var category1=$('.category1').val();
		if(category1==0)
		{
			$('.category1').focus();
			$('#selectSpan').text("* 언어를 선택하세요");
			return;
		}
		$('#selectSpan').text("");
		
		var category2=$('.category2').val();
		if(category2==0)
		{
			$('.category2').focus();
			$('#selectSpan').text("* 언어를 선택하세요");
			return;
		}
		$('#selectSpan').text("");
		
		var title=$('#title').val();
		if(title=="")
		{
			$('#title').focus();
			$('#titleSpan').text("* 제목을 입력하세요");
			return;
		}
		$('#titleSpan').text("");
		
		var subcontent=$('#abstract').val();
		if(subcontent=="")
		{
			$('#abstract').focus();
			$('#subTitleSpan').text("* 요약내용을 입력하세요");
			return;
		}
		$('#subTitleSpan').text("");
		
		var content=$('#content').val();
		if(content=="<p>&nbsp;</p>")
		{
			$('#content').focus();
			$('#contentSpan').text("* 상세내용을 입력하세요");
			return;
		}
		
		$('.roundBox.firstStep').hide();
		$('.roundBox.secondStep').show();
	});
	
	// 이전 버튼
	$('.prev.button').click(function(){
		$('.roundBox.firstStep').show();
		$('.roundBox.secondStep').hide();
	});
	
	// 작성 완료
	$('.complete.button').click(function(){
		
		var sdate1=$('#startEventDate1').val();
		if(sdate1=="")
		{
			$('#startEventDate1').focus();
			$('#dateSpan1').text("* 시작 날짜를 선택하세요");
			return;
		}
		$('#dateSpan1').text("");
		
		var edate1=$('#endEventDate1').val();
		if(edate1=="")
		{
			$('#endEventDate1').focus();
			$('#dateSpan1').text("* 종료 날짜를 선택하세요");
			return;
		}
		$('#dateSpan1').text("");
		
		var sdate2=$('#startEventDate2').val();
		if(sdate2=="")
		{
			$('#startEventDate2').focus();
			$('#dateSpan2').text("* 시작 날짜를 선택하세요");
			return;
		}
		$('#dateSpan2').text("");
		
		var edate2=$('#endEventDate2').val();
		if(edate2=="")
		{
			$('#endEventDate2').focus();
			$('#dateSpan2').text("* 종료 날짜를 선택하세요");
			return;
		}
		$('#dateSpan2').text("");
		
		var place=$('#place').val();
		if(place==0)
		{
			$('#place').focus();
			$('#locSpan').text("* 지역을 선택하세요");
			return;
		}
		$('#locSpan').text("");
		
		var loc=$('#location').val();
		if(loc=="")
		{
			$('#location').focus();
			$('#locSpan').text("* 장소를 입력하세요");
			return;
		}
		$('#locSpan').text("");
		
		$('#writeForm').submit();
	});
});
</script>
</head>
<body>
	<form id="writeForm" name="write_form" method="post" action="meeting_ok.jsp">
	<div class="content">
		<h2 class="title">개설하기</h2>
		<div class="roundBox firstStep">
			<div class="firstCore">
				<div class="title">
					<h3 class="title">step.1 모임 기본 정보입력</h3>
					<div class="menu">
						<label class="firstStep">STEP.1</label>
						<label class="secondStep">STEP.2</label>
					</div>
				</div>
			</div>
			<div class="core category">
				<div class="input">
					<div class="subCore category">
						<h4 class="subTitle">언어 선택 / 제목 입력</h4>
						<select class="category1" name="category1">
							<option value="0">보유 언어</option>
							<option value="1">한국어</option>
							<option value="2">English</option>
							<option value="3">日本語</option>
							<option value="4">中國語</option>
							<option value="5">le français</option>
							<option value="6">獨逸語</option>
							<option value="7">русский язык</option>
						</select>
						<select class="category2" name="category2">
							<option value="0">교환 언어</option>
							<option value="1">한국어</option>
							<option value="2">English</option>
							<option value="3">日本語</option>
							<option value="4">中國語</option>
							<option value="5">le français</option>
							<option value="6">獨逸語</option>
							<option value="7">русский язык</option>
						</select>
						<input id="title" type="text" name="title" maxlength="64" class="text">
						<div class="lengthMsg">
						<span class="span" id="selectSpan"></span>
						<span class="span" id="titleSpan"></span>
						</div>
					</div>
				</div>
				<div class="advice">
					<p class="subAdvice">
						<strong>언어를 선택</strong>하고 <strong>모임제목</strong>을 입력해주세요.
						<br>
						<br>
						<br>
						언어에 맞게 설정하시면 개설 후 검색이나<br>
						언어별로 보기 편하고 쉽게 찾을 수 있습니다.<br>
						<br>
					</p>
				</div>
			</div>
			<div class="core">
					<div class="input">
						<div class="subCore banner noBanner">
							<h4 class="subTitle">대표 이미지</h4>

							<div class="innerBanner">
								<img src="http://static.onoffmix.com/images2/default/thumbnail_null.jpg" default="http://static.onoffmix.com/images2/default/thumbnail_null.jpg" alt="대표이미지">
							</div>
						</div>
						<div class="subCore abstract">
							<h4 class="subTitle">요약내용 입력&nbsp;<span class="span" id="subTitleSpan"></span></h4>
							<textarea id="abstract" class="text" title="모임 내용을 간단히 요약하여 입력해 주세요." name="abstract"></textarea>
						</div>
					</div>
					<div class="advice">
						<p class="subAdvice">
							모임 특성에 맞는 이미지로 업로드 해주시고 <br>
							대표 이미지가 없을 경우 언어나들목에서 <br>
							추천하는 이미지를 선택해 사용할 수 있습니다. <br>
							<br>
							이미지 등록에 대한 안내는 <a href="/cs/faq/host#167" class="guideSite" target="_blank">FAQ</a> 를 참고하세요.
						</p>

						<p class="subAdvice abstract">
							개설하는 모임의 주요내용을 참여자들이 <br>
							쉽게 알 수 있도록 <strong>요약하여 입력</strong>해 주세요.
						</p>
					</div>
			</div>
			<div class="core contents">
				<div class="input write">
					<div class="subCore">
						<h4 class="subTitle">상세내용 입력&nbsp;<span class="span" id="contentSpan"></span></h4>
						<div class="editor">
							<textarea id="content" class="content" name="content"></textarea>
						</div>
					</div>
				</div>
				<div class="advice">
					<p class="subAdvice focus" style="height: 341px;">
						개설하는 모임의 <strong>상세내용을 입력</strong>하고 편집기를<br>
						이용해 다양한 형태의 내용을 입력해 주세요.<br>
						<br>
					</p>
				</div>
			</div>
		<!-- 	<div class="core Admin">
				<div class="input">
				<div class="subCore admin">
					<h4 class="subTitle">연락처 설정 <span class="star">*</span></h4>
					<table width="100%">
						<tbody>
							<tr class="admin_num">
								<th>개설자 전화번호 입력</th>
								<td>
									<label for="ownerPhone" class="displayNone">전화번호 앞부분 입력</label>
									<input class="text mask-pint" type="text" name="ownerPhone_head" id="ownerPhone" value="" size="4" maxlength="4">
									<label for="ownerPhoneBody" class="displayNone">전화번호 중간부분입력</label>
									<input id="ownerPhoneBody" class="mask-pint text" type="text" name="ownerPhone_body" value="" size="4" maxlength="4">
									<label for="ownerPhoneTail" class="displayNone">전화번호 뒷부분 입력</label>
									<input id="ownerPhoneTail" class="text mask-pint" type="text" name="ownerPhone_tail" value="" size="4" maxlength="4">
								</td>
							</tr>
							<tr class="admin_email">
								<th>개설자 이메일 입력</th>
								<td>
									<input title="개설자 이메일 입력" id="email" class="text" type="text" name="ownerEmail">
									<span class="at">@</span>
									<input title="개설자 이메일 입력" id="email" class="text" type="text" name="ownerEmail">
								
									<select>
										<option>hanmail.net</option>
										<option>dreamwiz.com</option>
										<option>empal.com</option>
										<option>gmail.com</option>
										<option>hotmail.com</option>
										<option>msn.com</option>
										<option>naver.com</option>
										<option>paran.com</option>
										<option>기타</option>
									</select>
									<input type="hidden" id="checkEmail" name="checkEmail" value="" equal="0" alias="이메일 중복확인이 되지 않았습니다."/>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				<div class="advice">
					<p class="subAdvice admin focus">
						연락처는 개설자의 전화번호, 이메일을 정확히<br>
						입력해 주셔야 하며 모임에 대한 문의나 정보를<br>
						공유할 수 있습니다.<br>
					</p>
				</div>
			</div> -->
			<div class="lastCore">
				<div class="action">
					<input type="button" class="next button" value="다음 단계">
				</div>
			</div>
		</div>
		<div class="roundBox secondStep" style="display: none;">
			<div class="firstCore">
				<div class="title">
					<h3 class="title">step.2 일정 / 장소 정보 입력</h3>
					<div class="menu">
						<label class="firstStep">STEP.1</label>
						<label class="secondStep">STEP.2</label>
					</div>
				</div>
			</div>
			<div class="core eventDate">
				<div class="input">
					<div class="subCore startEvent singleDay">
							<h4 class="subTitle">모임기간 설정&nbsp;<span class="span" id="dateSpan1"></span></h4>
							<div class="dateConfig" style="border-color: rgb(204, 204, 204);">
								<input id="startEventDate1" class="text datepicker hasDatepicker" type="date" name="eventStartDateTime_date">
								<select id="date-select1" class="date-select">
									<option value="00:00">오전 0시 00분</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
								</select>
								<span class="space">부터</span>
								<input id="endEventDate1" class="text datepicker hasDatepicker" type="date" name="eventEndDateTime_date">
								<select id="date-select2" class="date-select">
									<option value="00:00">오전 0시 00분</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
								</select>
								<span class="space">까지</span>
							</div>
						</div>
						<div class="subCore setupTime">
							<h4 class="subTitle">참여기간 설정&nbsp;<span class="span" id="dateSpan2"></span></h4>
							<div class="dateConfig" style="border-color: rgb(204, 204, 204);">
								<input id="startEventDate2" class="text datepicker hasDatepicker" type="date" name="eventStartDateTime_date">
								<select id="date-select3" class="date-select">
									<option value="00:00">오전 0시 00분</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
								</select>
								<span class="space">부터</span>
								<input id="endEventDate2" class="text datepicker hasDatepicker" type="date" name="eventEndDateTime_date">
								<select id="date-select4" class="date-select">
									<option value="00:00">오전 0시 00분</option>
									<option value="00:30">오전 0시 30분</option>
									<option value="01:00">오전 1시 00분</option>
									<option value="01:30">오전 1시 30분</option>
									<option value="02:00">오전 2시 00분</option>
									<option value="02:30">오전 2시 30분</option>
									<option value="03:00">오전 3시 00분</option>
									<option value="03:30">오전 3시 30분</option>
									<option value="04:00">오전 4시 00분</option>
									<option value="04:30">오전 4시 30분</option>
									<option value="05:00">오전 5시 00분</option>
									<option value="05:30">오전 5시 30분</option>
									<option value="06:00">오전 6시 00분</option>
									<option value="06:30">오전 6시 30분</option>
									<option value="07:00">오전 7시 00분</option>
									<option value="07:30">오전 7시 30분</option>
									<option value="08:00">오전 8시 00분</option>
									<option value="08:30">오전 8시 30분</option>
									<option value="09:00">오전 9시 00분</option>
									<option value="09:30">오전 9시 30분</option>
									<option value="10:00">오전 10시 00분</option>
									<option value="10:30">오전 10시 30분</option>
									<option value="11:00">오전 11시 00분</option>
									<option value="11:30">오전 11시 30분</option>
									<option value="12:00">오후 0시 00분</option>
									<option value="12:30">오후 0시 30분</option>
									<option value="13:00">오후 1시 00분</option>
									<option value="13:30">오후 1시 30분</option>
									<option value="14:00">오후 2시 00분</option>
									<option value="14:30">오후 2시 30분</option>
									<option value="15:00">오후 3시 00분</option>
									<option value="15:30">오후 3시 30분</option>
									<option value="16:00">오후 4시 00분</option>
									<option value="16:30">오후 4시 30분</option>
									<option value="17:00">오후 5시 00분</option>
									<option value="17:30">오후 5시 30분</option>
									<option value="18:00">오후 6시 00분</option>
									<option value="18:30">오후 6시 30분</option>
									<option value="19:00">오후 7시 00분</option>
									<option value="19:30">오후 7시 30분</option>
									<option value="20:00">오후 8시 00분</option>
									<option value="20:30">오후 8시 30분</option>
									<option value="21:00">오후 9시 00분</option>
									<option value="21:30">오후 9시 30분</option>
									<option value="22:00">오후 10시 00분</option>
									<option value="22:30">오후 10시 30분</option>
									<option value="23:00">오후 11시 00분</option>
									<option value="23:30">오후 11시 30분</option>
								</select>
								<span class="space">까지</span>
							</div>
						</div>
				</div>
				<div class="advice">
						<p class="subAdvice startEvent">
							개설하려는 모임의 <strong>기간</strong>을 설정해 주세요.<br>
							<br>
							모임기간이 하루 이상일 경우 체크박스를 선택하면<br>
							모임 시작일과 종료일 설정이 가능합니다.
						</p>

						<p class="subAdvice setupTime">
							모임에 참여하려는 참여자의 <strong>참여 신청기간</strong>을<br>
							설정합니다.<br>
							(참여자는 신청기간이 끝나면 해당 모임에 등록을<br>
							할 수 없습니다.)
						</p>
				</div>
			</div>
			<div class="core place">
					<div class="input">
						<div class="subCore location">
							<h4 class="subTitle">모임 지역 / 장소 설정&nbsp;<span class="span" id="locSpan"></span></h4>
							<select id="place">
								<option value="0">지역 선택</option>
								<option value="1">서울</option>
								<option value="2">인천/경기</option>
								<option value="3">부산/울산/경남</option>
								<option value="4">대전/충청</option>
								<option value="5">광주/전라</option>
							</select>
							<input class="location text" type="text" name="location" id="location" size="" maxlength="64" value="" minlen="3" required="" alias="장소를" title="정확한 장소명을 입력해 주세요.">
						</div>
						<!-- <div class="subCore map">
							<div class="mapSearch">
								<input id="POIword" title="시, 도, 구, 동 단위로 위치를 입력해 주세요." class="text outfocus" type="text" value=""><input class="search button" type="button" value=""><br>

								<div class="search result">
									<select id="SearchResult" style="display:none" multiple="">
									</select>
								</div>
							</div>
							<div class="map holder">
								<div id="mapzone" style="width: 644px; height: 360px; display: block; padding: 0px;" class="_nmap_mapbox _nmap_uid(n207987563041)"><div class="nmap" style="margin: 0px; padding: 0px; border: 0px; width: 644px; height: 360px; position: relative; overflow: hidden;"><div class="nmap_movable_container" style="position: absolute; z-index: 0; border: 0px; padding: 0px; margin: 0px; overflow: visible; left: 137px; top: -9px;"><div class="nmap_base_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 10; display: block;"><img src="http://onetile3.map.naver.net/get/135/0/0/10/848/734/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 66px; top: 52px;"><img src="http://onetile4.map.naver.net/get/135/0/0/10/849/734/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 322px; top: 52px;"><img src="http://onetile1.map.naver.net/get/135/0/0/10/849/735/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 322px; top: -204px;"><img src="http://onetile4.map.naver.net/get/135/0/0/10/848/735/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 66px; top: -204px;"><img src="http://onetile3.map.naver.net/get/135/0/0/10/847/735/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -190px; top: -204px;"><img src="http://onetile2.map.naver.net/get/135/0/0/10/848/733/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 66px; top: 308px;"><img src="http://onetile2.map.naver.net/get/135/0/0/10/847/734/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -190px; top: 52px;"><img src="http://onetile1.map.naver.net/get/135/0/0/10/847/733/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -190px; top: 308px;"><img src="http://onetile3.map.naver.net/get/135/0/0/10/849/733/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 322px; top: 308px;"><img src="http://onetile2.map.naver.net/get/135/0/0/10/846/735/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -446px; top: -204px;"><img src="http://onetile1.map.naver.net/get/135/0/0/10/846/734/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -446px; top: 52px;"><img src="http://onetile4.map.naver.net/get/135/0/0/10/846/733/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -446px; top: 308px;"></div><div class="nmap_hybrid_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 20;"></div><div class="nmap_traffic_bicycle_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 40;"></div><div class="nmap_drawing_pane _nmap_uid(n1414754889649)" style="z-index: 60; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"><div class="_nmap_uid(n470568108090)" style="border: 0px; margin: 0px; padding: 0px;"><svg:svg version="1.1" width="543912px" height="399657px" viewBox="-223529 -207017 543912 399657" overflow="visible" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute; overflow: visible; margin: 0px; padding: 0px; border: 0px; width: 543912px; height: 399657px; left: -223529px; top: -207017px;"><path fill-rule="evenodd" d="M -222847,-205585 L 307183,-207007 320373,190700 -223519,192630 Z M -60873,-153801 L -60873,-153801 102154,-154773 115587,122817 -71310,123707 Z" style="stroke:black;stroke-width:10px;stroke-opacity:0.5;stroke-dasharray:30,10,10,10,10,10;fill:black;fill-opacity:0.5;" stroke-linejoin="round"></path></svg:svg></div></div><div class="nmap_overlay_pane _nmap_uid(n1445172054245)" style="z-index: 70; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"><div class="nmap_int_zoom" style="display:none"><span class="nmap_bx_lt"></span><span class="nmap_bx_rt"></span><span class="nmap_bx_lb"></span><span class="nmap_bx_rb"></span></div><img class="_nmap_marker nmap_png _nmap_uid(n1106453085526)" alt="" width="34" height="37" src="http://static.onoffmix.com/images2/map_pin.png" style="position: absolute; cursor: pointer; overflow: hidden; margin: -37px 0px 0px -14px; padding: 0px; border: 0px; max-width: none; max-height: none; width: 34px; height: 37px; top: 189px; left: 185px;"></div><div class="nmap_info_pane _nmap_uid(n887653847573)" style="z-index: 80; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"><div class="_nmap_uid(n49015190182)" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; border: 0px; margin: 0px; padding: 0px;"><div class="nmap_lay_htype1"><span class="nmap_lay_c"><span></span></span><span class="nmap_lay_r"></span></div></div><div class="nmap_duplayer nmap_openapi_duplayer _nmap_disdrag _nmap_diswheel _nmap_disdblclick" style="padding: 0px; margin: 0px; position: absolute; z-index: 999; display: none; visibility: hidden; left: -8.73955e+06px; top: 3.73644e+06px;">
<div class="nmap_lay_int_duppin" style="position:relative; display:block;">
<div class="nmap_int_duppin_content">
<div class="nmap_scroll">
<ul class="_nmap_group">
</ul>
</div>
</div>
</div>
</div></div><div class="nmap_cadastral_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 30;"></div><div class="street_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 20;"></div><div class="nmap_ghost_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 9;"></div><div class="nmap_static_container" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 0;"></div></div><div class="nmap_static_container" style="position: relative; z-index: 10; border: 0px; padding: 0px; margin: 0px; overflow: visible; width: 100%;"><div class="nmap_pano_dir nmap_pano_dir_move" style="z-index:20;display:none;"><div class="nmap_dir_icon" style="height:32px"><img src="http://static.naver.net/maps2/ico_pano_dir_final.png" width="900" height="400" class="png" style="max-width:none;max-height:none;"></div></div><div class="nmap_copyright_layer _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling _nmap_uid(n686316220283)" style="top: 180px; display: none; left: 322px;"><div class="nmap_copyright_layer_body"><h5 class="nmap_copyright_tit" "="">지도 데이터&nbsp;&nbsp;&nbsp;</h5><div class="nmap_copyright_data"><span class="nmap_show" style="white-space:nowrap;">NAVER Corp.</span><span class="">/<a href="http://www.openstreetmap.org/copyright" target="_blank" style="font-family: nanumgothic,dotum,sans-serif !important">OpenStreetMap</a></span><span class="">/SPOT</span><span class="">/인천광역시</span><span class="">/국토지리정보원</span><span class="">/SK 플래닛/한국도로공사</span><span class="">/다울지오인포</span></div><a href="#" class="nmap_copyright_layer_close">닫기</a></div></div><div class="nmap_footer _nmap_uid(n870244644138)" style="bottom: 4px;"><div class="nmap_copyright"><span class="nmap_show">©&nbsp;NAVER Corp.</span><span class="">/<a href="http://www.openstreetmap.org/copyright" target="_blank">OpenStreetMap</a></span><span class="">/SPOT</span><span class="">/인천광역시</span><span class="">/국토지리정보원</span><span class="">/SK 플래닛/한국도로공사</span><span class="">/다울지오인포</span><span class="nmap_cp_more">&nbsp;<a href="#">더보기</a></span></div><div class="nmap_scale_base"><a href="http://map.naver.com" target="_blank"><img class="nmap_logo_map" src="http://static.naver.net/maps/m/logo_naver.png" width="44" height="10" alt="NAVER" style="max-width:none;max-height:none;"></a><div class="nmap_scale_len"><span>200m</span></div></div></div><div class="nmap_scaler nmap_scaler_s14 nmap_scaler_left _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling nmap_scaler_re _nmap_uid(n370148191976)" style="top: 45px; height: 199px; left: 10px;"><div class="nmap_ctr_zoom" style="height: 199px; left: 0px;"><div class="nmap_slider" style="height: 154px;"><div class="nmap_ctr_scale_on" style="height: 154px;"></div>nmap_ctr_scale_off height max 레벨:9px, 간격 10px<div class="nmap_ctr_scale_off" style="height: 49px;"></div>ctr_level top max 레벨:9px, 간격 10px<div class="nmap_slider-thumb S5458363" style="top: 49px;" title=""><img class="nmap_on" src="http://static.naver.net/maps2/blank.gif" width="18" height="15" alt=""></div></div><div class="nmap_ctr_plus"><a href="#"><img src="http://static.naver.net/maps2/blank.gif" width="24" height="24" alt="확대">확대</a></div>이미지 사이즈 변경<div class="nmap_ctr_minus" style="top: 173px;"><a href="#"><img src="http://static.naver.net/maps2/blank.gif" width="24" height="26" alt="축소">축소</a></div></div>동적으로 변경되는 classnmap_scaler_m(1-13)       : 설정 가능한 최대 레벨<div class="nmap_ctr_legend nmap_scaler_m14" style="height: 145px; left: 22px;"><div class="nmap_ctr_legend1"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="부동산"></div><div class="nmap_ctr_legend2"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="거리"></div><div class="nmap_ctr_legend3"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="읍.면.동"></div><div class="nmap_ctr_legend4"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="시.군.구"></div><div class="nmap_ctr_legend5"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="시.도"></div><div class="nmap_ctr_legend6"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="국가"></div></div></div><div class="nmap_btn nmap_sel_basic _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling _nmap_uid(n56856305749)" style="top: 10px; left: 10px;"><div class="nmap_sel_normal"><a href="#" class="nmap_on"><span class="nmap_btn_wrap">일반</span></a></div><div class="nmap_sel_satellite"><a href="#"><span class="nmap_btn_wrap">위성</span></a><div class="nmap_lay_default nmap_lay_satellite" style="display: none;"><div class="nmap_lay_body"><div><input type="checkbox" class="nmap_ip_check" id="ip_check3" checked="checked"> <label for="ip_check3">겹쳐보기</label></div></div></div></div></div></div></div></div>
								<input type="hidden" name="tm128x" id="tm128x" value="">
								<input type="hidden" name="tm128y" id="tm128y" value="">
								<input type="hidden" name="mapX" id="lng" size="" maxlength="64" value="127.1066861" required="" alias="지도좌표_X_를" confirm="123.">
								<input type="hidden" name="mapY" id="lat" size="" maxlength="64" value="37.4851549" required="" alias="지도좌표_Y_를" confirm="123.">
								<input type="hidden" name="locality" id="sido" value="서울특별시">
								<input type="hidden" name="sublocality1" id="gugun" value="강남구">
								<input type="hidden" name="sublocality2" id="dong" value="수서동">
							</div>
							.map.holder end
						</div> -->
											</div>
					<div class="advice">
						<p class="subAdvice location">
							참여자들이 장소를 명확히 알 수 있도록<br>
							<strong>장소명을 입력</strong>해 주세요.
						</p>

						<p class="subAdvice map focus">
							모임 장소 위치를 지도에 표시하기 위해 <br>
							<strong>지도 위치 설정</strong>을 해 주세요.<br>
							<br>
							설정은 지역명이나 주요명칭을 기입하여<br>
							지정 할 수 있습니다. <br>
							<br>
							시, 도, 구, 동 단위로 설정할 수 있습니다.<br>
							<br>
							지도를 클릭하고 핀을 이동하여 위치를<br>
							지정할 수도 있습니다.<br>
							<br>
							간혹 주소정보를 불러오지 못해<br>
							지역카테고리 범주에 속하지 못할 수 있습니다.<br>
						</p>
					</div>
				</div>
				<div class="lastCore">
					<div class="action">
						<input type="button" class="prev button" value="이전" >
						<input type="button" class="complete button" value="작성">
					</div>
				</div>
		</div>
	</div>
	</form>
</body>
</html>