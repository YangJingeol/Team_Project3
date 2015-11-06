<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$('#btnSub').click(function(){
		var word=$('#word').val();
		if(word=="")
		{
			alert("검색어를 입력해 주세요");
			return;
		}
		$('#searchFrm').submit();
	});
});
</script>
</head>
<body>
	<div id="body">
		<ul class="bxslider" style="margin: 0px; padding: 0px;">
			<li><img src="images/main/slide1.jpg" />
				<h3>안녕하세요</h3></li>	
			<li><img src="images/main/slide2.jpg" />
				<h3>새로운 친구를만나보세요.</h3></li>
			<li><img src="images/main/slide3.jpg" /></li>
			<li><img src="images/main/slide4.jpg" /></li>
			<li><img src="images/main/slide5.jpg" /></li>
			<li><img src="images/main/slide6.jpg" /></li>
			<li><img src="images/main/slide7.jpg" /></li>
			<li><img src="images/main/slide8.jpg" /></li>
		</ul>
		<br>
		
		<div class="width" style="margin-left: 0px;">
			<form method="get" action="search.do" id=searchFrm>
			<div class="wow">
				<div class="col-lg-6">
					<div class="input-group"
						style="width: 65%; margin-left: 2px; margin-top: 10px;">
						<input type="text" class="form-control" placeholder="보유언어" id=word name=word>
					</div>
				</div>
				<span class="glyphicon glyphicon-transfer"
					style="margin-right: 0px; border-right-width: 100px; right:150px; top: 18px;"></span>
				 <div class="col-lg-6"
					style="border-bottom-width: 10px; bottom: 21px; right: 100px;">
					<div class="input-group"
						style="width: 75%; margin-left: 0px; margin-top: 10px;">
						<input type="text" class="form-control" placeholder="교환언어">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" id=btnSub>Search</button>
						</span>
					</div>
				</div>
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>