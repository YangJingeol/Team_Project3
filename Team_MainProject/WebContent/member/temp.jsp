<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>메인화면</title>
  
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="description" content="A travel planning & sharing service for travel experts, Create Travel Plans, Find Amazing Travel, Customize Other’s Plans, Share your travel, Embedded Maps, Search for Travel Spots "/>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="fragment" content="!" />
<meta name="naver-site-verification" content="b5dc8e0c6fe0f77b6e8a970e244d1d74397fc8cf"/>
<link rel="shortcut icon" type="image/x-icon" href="https://d254i4serkgq8u.cloudfront.net/favicon.ico?1">
<likn href="../WebContent/WEB-INF/lib/jquery.filestyle.js">
<style type="text/css">
/* /*   body, pre {
    font-family: "맑은 고딕","Malgun Gothic","Helvetica Neue","Apple SD Gothic Neo",Helvetica,Arial,"Apple Gothic","돋움",Dotum,sans-serif!important;
  } */ */

  .if-not-me{
    display: none !important;
  }

</style>
<script>
$(function() {
    $("#imgInp").on('change', function(){
        readURL(this);
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}


  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  
    ga('create', 'UA-45004699-2', 'wishbeen.co.kr');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
  

  ga('create', 'UA-53303012-1', 'auto', {'name': 'yelloTracker'});
  ga('yelloTracker.send', 'pageview');

  //wishbeen tracking send event
  function WebTrackingSendEvent(category, action, label){
    ga('send', 'event', category, action, label);
  }

  /*

   */
   function changeImg(obj, img) {
       obj.src = img;
   } 
  function trackEventsByUrl(trackingEvents){

    var url = window.location.href;
    var urlArr = url.split('/');
    var eventKeys = Object.keys(trackingEvents);

    for( var eventKeyIndex in eventKeys){
      var eventKey = eventKeys[eventKeyIndex];

      if(urlArr.indexOf(eventKey) > -1){
        var event = trackingEvents[eventKey];
        WebTrackingSendEvent(event.category, event.action, event.label);
      }
    }
  }

  var g_localizedString = {
    _Confirm_:"확인",
    _Close_:"닫기"
  };

  var g_data = {
  };
  
  var g_isLogin = true;
  g_data["me"] = {
    _id:"b8347136308b0918",
    thumbnail: "https://d254i4serkgq8u.cloudfront.net/images/wb_base_profile.jpg",
    nickname: "DeeH"
  };
  
  var g_language = "ko-KR";
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script type="text/javascript">

$(function() {
    $("#imgInp").on('change', function(){
        readURL(this);
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}

$(function(){
    $("input[type=file]").filestyle({ 
   image: "/resources/resources_new/images/popup/btn_search.gif",
   imageheight : 20,
  imagewidth : 58,
  marginleft : 7,
   width: 240
   });
 });

</script>
<script src='https://cdn.flurry.com/js/flurry.js'></script>
<script> FlurryAgent.startSession('WFBKNGZ254KXYTWR8VJS'); </script>
<!--[if lte IE 9]>
<link rel="stylesheet" href="https://d254i4serkgq8u.cloudfront.net/styles/ie8.css" />
<![endif]-->


<link rel="stylesheet" href="https://d254i4serkgq8u.cloudfront.net/styles/mypage-styles.css">
<link rel="stylesheet" href="https://bootswatch.com/cerulean/bootstrap.css">
<link rel="stylesheet" href="https://github.com/thomaspark/bootswatch/blob/gh-pages/assets/css/custom.min.css">
   <!-- 페이지가 빠르게 로딩되도록 문서의 끝에 배치 -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <!-- 아래에 컴파일 된 모든 플러그인을 포함하거나 필요에 따라 개별 파일을 포함 -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <!-- <link rel="stylesheet" href="mypage-styles.css"> -->
  <script data-main="/js/page/myPage"
          src="/js/lib/bower_components/requirejs/require.js"></script>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top" style="padding-left: 20px;">
      <div class="container-fluid">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand fa fa-train fa-2x" style="padding-top: 10px;"> Traintrip</a>
         </div>
         <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               <li><a href="#findtravel">여행일정 찾기</a></li>
               <li><a href="#makeplan">여행일정 만들기</a></li>
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">전체</a></li>
                     <li><a href="#">맛집</a></li>
                     <li><a href="#">명소</a></li>
                     <li><a href="#">숙소</a></li>
                     <li><a href="#">추천</a></li>
                  </ul>
               </li>
            </ul>
            <form class="navbar-form navbar-right">
               <div class="form-group">
                  <div class="input-group">
                     <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                     <input type="text" placeholder="아이디" class="form-control">
                  </div>
               </div>&nbsp;
               <div class="form-group">
                  <div class="input-group">
                     <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                     <input type="password" placeholder="비밀번호" class="form-control">
                  </div>&nbsp;
               </div>
               <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-log-in"></i> 로그인</button>&nbsp;&nbsp;&nbsp;
               <button type="button" class="btn btn-success"> 회원가입</button>
            </form>
         </div>
      </div>
   </nav>
<script type="text/javascript">
  function snsLoginHandler(){
    window.location.reload();
  }
</script>

<!-- <script>
  g_data['profileData'] = {
    isMyHome : false,
    userData : {"_id":"8275970d980098da","createTime":"2015-10-18T17:53:37.389Z","nickname":"맛집냠냠","gender":"male","birthyear":"1984-06-07","language":"ko-KR","joinType":{"providerType":"wi","deviceType":"desktop","appType":"global"},"ngram":{"nickname":["맛","집","냠","맛집","집냠","냠냠","*맛"]},"receivedEmail":true,"providers":[{"provider":"wi","uuid":"honggil@ruu.kr","verified":true}],"role":"user","visitCount":3,"commentCount":0,"beenCount":0,"wishCount":0,"myPlanCount":0,"mySpotCount":0,"scrapSpotCount":0,"scrapPlanCount":0,"__v":0,"lastCountTime":"2015-10-27T05:59:17.584Z","lastVisitTime":"2015-10-28T00:13:07.535Z","lastLoginTime":"2015-10-28T00:13:07.535Z","bookMarkCount":0,"myPostCount":0,"profileImage":"https://d254i4serkgq8u.cloudfront.net/images/wb_base_profile.jpg","myDomain":"8275970d980098da","selfIntroduction":"","faLoginConnect":false,"goLoginConnect":false,"facebookUrl":"","googleUrl":"","homepage":"","homepageUrl":"","backImgTop":0},
    Currency : [{"currency":"USD","value":2,"exchangeRate":1,"name":"USD(미국)"},{"currency":"KRW","value":1,"name":"KRW(한국)","exchangeRate":1131.4449},{"currency":"EUR","value":0,"name":"EUR(유럽연합)","exchangeRate":0.9042},{"currency":"JPY","value":3,"name":"JPY(일본)","exchangeRate":120.695},{"currency":"CNY","value":4,"name":"CNY(중국)","exchangeRate":6.3511},{"currency":"HKD","value":5,"name":"HKD(홍콩)","exchangeRate":7.75},{"currency":"TWD","value":6,"name":"TWD(대만)","exchangeRate":32.378},{"currency":"GBP","value":7,"name":"GBP(영국)","exchangeRate":0.6514},{"currency":"CAD","value":8,"name":"CAD(캐나다)","exchangeRate":1.3168},{"currency":"CHF","value":9,"name":"CHF(스위스)","exchangeRate":0.9824},{"currency":"SEK","value":10,"name":"SEK(스웨덴)","exchangeRate":8.4993},{"currency":"AUD","value":11,"name":"AUD(호주)","exchangeRate":1.381},{"currency":"NZD","value":12,"name":"NZD(뉴질랜드)","exchangeRate":1.4757},{"currency":"CZK","value":13,"name":"CZK(체코)","exchangeRate":24.502},{"currency":"TRY","value":14,"name":"TRY(터키)","exchangeRate":2.8919},{"currency":"MNT","value":15,"name":"MNT(몽골)","exchangeRate":1990.5},{"currency":"ILS","value":16,"name":"ILS(이스라엘)","exchangeRate":3.8703},{"currency":"DKK","value":17,"name":"DKK(덴마크)","exchangeRate":6.7465},{"currency":"NOK","value":18,"name":"NOK(노르웨이)","exchangeRate":8.3525},{"currency":"SAR","value":19,"name":"SAR(사우디아라비아)","exchangeRate":3.7482},{"currency":"KWD","value":20,"name":"KWD(쿠웨이트)","exchangeRate":0.3029},{"currency":"BHD","value":21,"name":"BHD(바레인)","exchangeRate":0.377},{"currency":"AED","value":22,"name":"AED(아랍에미리트)","exchangeRate":3.673},{"currency":"JOD","value":23,"name":"JOD(요르단)","exchangeRate":0.7095},{"currency":"EGP","value":24,"name":"EGP(이집트)","exchangeRate":8.029},{"currency":"THB","value":25,"name":"THB(태국)","exchangeRate":35.51},{"currency":"SGD","value":26,"name":"SGD(싱가포르)","exchangeRate":1.3918},{"currency":"MYR","value":27,"name":"MYR(말레이시아)","exchangeRate":4.278},{"currency":"IDR","value":28,"name":"IDR(인도네시아)","exchangeRate":13664.5},{"currency":"QAR","value":29,"name":"QAR(카타르)","exchangeRate":3.6411},{"currency":"KZT","value":30,"name":"KZT(카자흐스탄)","exchangeRate":278.1049},{"currency":"BND","value":31,"name":"BND(브루나이)","exchangeRate":1.392},{"currency":"INR","value":32,"name":"INR(인도)","exchangeRate":64.9754},{"currency":"PKR","value":33,"name":"PKR(파키스탄)","exchangeRate":104.475},{"currency":"BDT","value":34,"name":"BDT(방글라데시)","exchangeRate":77.6529},{"currency":"PHP","value":35,"name":"PHP(필리핀)","exchangeRate":46.7195},{"currency":"MXN","value":36,"name":"MXN(멕시코)","exchangeRate":16.5536},{"currency":"BRL","value":37,"name":"BRL(브라질)","exchangeRate":3.9034},{"currency":"VND","value":38,"name":"VND(베트남)","exchangeRate":22318.5},{"currency":"ZAR","value":39,"name":"ZAR(남아프리카 공화국)","exchangeRate":13.6592},{"currency":"RUB","value":40,"name":"RUB(러시아)","exchangeRate":63.373},{"currency":"HUF","value":41,"name":"HUF(헝가리)","exchangeRate":281.77},{"currency":"PLN","value":42,"name":"PLN(폴란드)","exchangeRate":3.8671}],
    Category : [{"name":"관광지","value":0,"category":[{"name":"거리, 광장, 마을","value":0,"tourTheme":[]},{"name":"건축물, 빌딩","value":1,"tourTheme":[18]},{"name":"탑, 타워","value":2,"tourTheme":[18]},{"name":"문","value":3,"tourTheme":[18]},{"name":"성, 궁전","value":4,"tourTheme":[18]},{"name":"집, 주거건물","value":5,"tourTheme":[18]},{"name":"교회, 성당","value":6,"tourTheme":[18,7]},{"name":"절, 사원","value":7,"tourTheme":[18,7]},{"name":"다리","value":8,"tourTheme":[18]},{"name":"테마파크, 유원지","value":9,"tourTheme":[]},{"name":"문화적명소","value":10,"tourTheme":[7]},{"name":"종교적명소","value":11,"tourTheme":[8]},{"name":"여행안내소","value":12,"tourTheme":[]},{"name":"여행사","value":13,"tourTheme":[]},{"name":"병원,메디컬","value":14,"tourTheme":[]},{"name":"인터넷카페","value":15,"tourTheme":[]},{"name":"아쿠아리움","value":16,"tourTheme":[]},{"name":"투우장","value":17,"tourTheme":[22]},{"name":"수영장, 워터파크","value":18,"tourTheme":[20]},{"name":"온천","value":19,"tourTheme":[]},{"name":"유적, 역사적 옛터, 장소","value":20,"tourTheme":[]},{"name":"등대","value":21,"tourTheme":[]},{"name":"미술관, 갤러리, 박물관","value":22,"tourTheme":[17]},{"name":"스포츠 경기장","value":23,"tourTheme":[19]},{"name":"묘지","value":24,"tourTheme":[]},{"name":"공원, 정원","value":25,"tourTheme":[]},{"name":"수도원","value":26,"tourTheme":[7]},{"name":"운하","value":27,"tourTheme":[]},{"name":"항구","value":28,"tourTheme":[]},{"name":"휴게소","value":29,"tourTheme":[]},{"name":"자연적명소","value":30,"tourTheme":[8]},{"name":"사막","value":31,"tourTheme":[8]},{"name":"조류관광지","value":32,"tourTheme":[8]},{"name":"분수","value":33,"tourTheme":[]},{"name":"동물원, 야생보호구역","value":34,"tourTheme":[]},{"name":"동물체험","value":35,"tourTheme":[]},{"name":"바다, 해변, 해안가","value":36,"tourTheme":[8]},{"name":"강, 천","value":37,"tourTheme":[8]},{"name":"호수, 연못","value":38,"tourTheme":[8]},{"name":"산, 언덕","value":39,"tourTheme":[8]},{"name":"협곡, 계곡","value":40,"tourTheme":[8]},{"name":"폭포","value":41,"tourTheme":[8]},{"name":"동굴","value":42,"tourTheme":[8]},{"name":"섬","value":43,"tourTheme":[8]},{"name":"농장, 와이너리","value":44,"tourTheme":[8]},{"name":"공공기관, 관공서","value":45,"tourTheme":[]},{"name":"학교, 교육기관, 학원","value":46,"tourTheme":[]},{"name":"은행, ATM","value":47,"tourTheme":[]},{"name":"기타","value":48,"tourTheme":[]}]},{"name":"숙박","value":1,"category":[{"name":"호텔","value":0,"tourTheme":[]},{"name":"리조트","value":1,"tourTheme":[]},{"name":"민박/홈스테이","value":2,"tourTheme":[]},{"name":"모텔/여관","value":3,"tourTheme":[]},{"name":"펜션","value":4,"tourTheme":[]},{"name":"Lodge","value":10,"tourTheme":[]},{"name":"스쿠버다이빙 리조트","value":11,"tourTheme":[25]},{"name":"콘도","value":5,"tourTheme":[]},{"name":"야영장, 캠프장","value":6,"tourTheme":[19]},{"name":"게스트하우스","value":7,"tourTheme":[6]},{"name":"호스텔","value":8,"tourTheme":[6]},{"name":"기타","value":9,"tourTheme":[]}]},{"name":"음식점","value":2,"category":[{"name":"시푸드","value":0,"tourTheme":[]},{"name":"피자, 파스타","value":1,"tourTheme":[]},{"name":"커피숍","value":2,"tourTheme":[]},{"name":"길거리음식","value":3,"tourTheme":[]},{"name":"카페","value":4,"tourTheme":[]},{"name":"퓨전","value":5,"tourTheme":[]},{"name":"현지음식","value":6,"tourTheme":[]},{"name":"한식","value":7,"tourTheme":[]},{"name":"양식","value":8,"tourTheme":[]},{"name":"일식","value":9,"tourTheme":[]},{"name":"스시","value":10,"tourTheme":[]},{"name":"케밥","value":11,"tourTheme":[]},{"name":"제과점","value":12,"tourTheme":[]},{"name":"뷔페","value":13,"tourTheme":[]},{"name":"립스","value":14,"tourTheme":[]},{"name":"터키식","value":15,"tourTheme":[]},{"name":"독일식","value":17,"tourTheme":[]},{"name":"아시안식","value":18,"tourTheme":[]},{"name":"중식","value":19,"tourTheme":[]},{"name":"이탈리안","value":20,"tourTheme":[]},{"name":"멕시칸식","value":21,"tourTheme":[]},{"name":"프랑스식","value":23,"tourTheme":[]},{"name":"스테이크하우스","value":24,"tourTheme":[]},{"name":"채식","value":25,"tourTheme":[]},{"name":"패스트 푸드","value":26,"tourTheme":[]},{"name":"타이식","value":27,"tourTheme":[]},{"name":"인디안","value":28,"tourTheme":[]},{"name":"중동","value":29,"tourTheme":[]},{"name":"인터내셔날","value":30,"tourTheme":[]},{"name":"조식","value":31,"tourTheme":[]},{"name":"그리스식","value":32,"tourTheme":[]},{"name":"스페인식","value":33,"tourTheme":[]},{"name":"건강식","value":34,"tourTheme":[]},{"name":"아이스크림","value":35,"tourTheme":[]},{"name":"쿠바식","value":36,"tourTheme":[]},{"name":"딤섬","value":37,"tourTheme":[]},{"name":"유러피안","value":38,"tourTheme":[]},{"name":"피시앤칩","value":39,"tourTheme":[]},{"name":"바비큐","value":40,"tourTheme":[]},{"name":"지중해식","value":42,"tourTheme":[]},{"name":"디저트","value":43,"tourTheme":[]},{"name":"와인","value":44,"tourTheme":[]},{"name":"패밀리 레스토랑","value":45,"tourTheme":[]},{"name":"러시안식","value":46,"tourTheme":[]},{"name":"아프리칸식","value":47,"tourTheme":[]},{"name":"치킨","value":48,"tourTheme":[]},{"name":"이스라엘식","value":49,"tourTheme":[]},{"name":"벨기언식","value":50,"tourTheme":[]},{"name":"아르헨티나식","value":51,"tourTheme":[]},{"name":"소세지","value":52,"tourTheme":[]},{"name":"면요리","value":53,"tourTheme":[]},{"name":"바 & 그릴","value":54,"tourTheme":[]},{"name":"푸드코트","value":55,"tourTheme":[]},{"name":"기타","value":56,"tourTheme":[]}]},{"name":"쇼핑","value":3,"category":[{"name":"백화점","value":0,"tourTheme":[24]},{"name":"면세점","value":1,"tourTheme":[24]},{"name":"아울렛/할인점","value":2,"tourTheme":[24]},{"name":"시장, 벼룩시장","value":3,"tourTheme":[24]},{"name":"쇼핑센터, 몰","value":4,"tourTheme":[24]},{"name":"쇼핑 거리","value":5,"tourTheme":[24]},{"name":"식료품점","value":6,"tourTheme":[24]},{"name":"장난감","value":7,"tourTheme":[24]},{"name":"슈퍼마켓","value":8,"tourTheme":[24]},{"name":"약국","value":9,"tourTheme":[24]},{"name":"화장품","value":10,"tourTheme":[24]},{"name":"특산품, 기념품","value":11,"tourTheme":[24]},{"name":"공예품, 예술품, 골동품","value":12,"tourTheme":[24]},{"name":"부티크","value":13,"tourTheme":[24]},{"name":"액세서리","value":14,"tourTheme":[24]},{"name":"환전소","value":15,"tourTheme":[24]},{"name":"멀티샵","value":16,"tourTheme":[24]},{"name":"의류","value":17,"tourTheme":[24]},{"name":"명품샵","value":18,"tourTheme":[24]},{"name":"주류","value":19,"tourTheme":[24]},{"name":"음악, 음반","value":20,"tourTheme":[24]},{"name":"서점","value":21,"tourTheme":[24]},{"name":"초콜렛","value":22,"tourTheme":[24]},{"name":"기타","value":23,"tourTheme":[]}]},{"name":"오락","value":4,"category":[{"name":"스파","value":0,"tourTheme":[5]},{"name":"맛사지","value":1,"tourTheme":[5]},{"name":"바","value":2,"tourTheme":[5]},{"name":"축제, 페스티벌","value":3,"tourTheme":[22]},{"name":"서커스","value":4,"tourTheme":[5]},{"name":"콘서트","value":5,"tourTheme":[17]},{"name":"라이브뮤직","value":6,"tourTheme":[5]},{"name":"클럽","value":7,"tourTheme":[5]},{"name":"펍","value":8,"tourTheme":[5]},{"name":"극장","value":9,"tourTheme":[5]},{"name":"코메디바","value":10,"tourTheme":[5]},{"name":"공연장","value":11,"tourTheme":[5]},{"name":"성인바/클럽","value":12,"tourTheme":[]},{"name":"레즈비언","value":13,"tourTheme":[]},{"name":"게이","value":14,"tourTheme":[]},{"name":"게이&레즈비언","value":15,"tourTheme":[]},{"name":"Chill Out","value":16,"tourTheme":[5]},{"name":"라운지","value":17,"tourTheme":[5]},{"name":"가라오케, 노래방","value":18,"tourTheme":[5]},{"name":"카지노","value":19,"tourTheme":[5]},{"name":"기타","value":20,"tourTheme":[]}]},{"name":"액티비티","value":5,"category":[{"name":"등산/트렉킹/락 클라임빙","value":0,"tourTheme":[11,19]},{"name":"도보","value":1,"tourTheme":[12,19]},{"name":"수영","value":2,"tourTheme":[19]},{"name":"스쿠버다이빙 포인트","value":3,"tourTheme":[20,19,25]},{"name":"스쿠버다이빙 샵","value":37,"tourTheme":[20,19,25]},{"name":"스포츠 이벤트","value":4,"tourTheme":[19]},{"name":"골프","value":5,"tourTheme":[19]},{"name":"스키/스노우보드","value":6,"tourTheme":[21,19]},{"name":"스노클링/호핑","value":7,"tourTheme":[19,20]},{"name":"볼링","value":8,"tourTheme":[19]},{"name":"웨이크보드","value":9,"tourTheme":[19,20]},{"name":"서핑/윈드서핑","value":10,"tourTheme":[19,20]},{"name":"카약/카누","value":11,"tourTheme":[19,20]},{"name":"낚시","value":12,"tourTheme":[19,20]},{"name":"경비행기","value":13,"tourTheme":[19]},{"name":"승마","value":14,"tourTheme":[19]},{"name":"래프팅","value":15,"tourTheme":[19,20]},{"name":"패러글라이딩/행글라이딩","value":16,"tourTheme":[19]},{"name":"자전거/싸이클링","value":17,"tourTheme":[19]},{"name":"번지점핑","value":18,"tourTheme":[]},{"name":"스카이다이빙","value":19,"tourTheme":[19]},{"name":"명상/템플스테이","value":20,"tourTheme":[8]},{"name":"스포츠관람","value":21,"tourTheme":[19]},{"name":"워터스포츠","value":22,"tourTheme":[19,20]},{"name":"요가","value":23,"tourTheme":[19]},{"name":"헬스/피트니스","value":24,"tourTheme":[19]},{"name":"테니스","value":25,"tourTheme":[19]},{"name":"드라이빙","value":26,"tourTheme":[10]},{"name":"Zip-line","value":27,"tourTheme":[]},{"name":"리버크루즈","value":28,"tourTheme":[]},{"name":"케이블카","value":29,"tourTheme":[]},{"name":"세일링/보트","value":30,"tourTheme":[19,20]},{"name":"크루즈","value":31,"tourTheme":[16]},{"name":"잠수함 투어","value":32,"tourTheme":[19]},{"name":"계절 이벤트","value":33,"tourTheme":[22]},{"name":"벌룬 라이드","value":34,"tourTheme":[19]},{"name":"로데오","value":35,"tourTheme":[19]},{"name":"기타","value":36,"tourTheme":[]}]},{"name":"교통","value":6,"category":[{"name":"공항","value":0,"tourTheme":[]},{"name":"기차역","value":1,"tourTheme":[13]},{"name":"지하철역","value":2,"tourTheme":[]},{"name":"버스정류장","value":3,"tourTheme":[14]},{"name":"버스터미널","value":4,"tourTheme":[14]},{"name":"택시정류장","value":5,"tourTheme":[]},{"name":"렌트카","value":6,"tourTheme":[10]},{"name":"페리/선착장","value":7,"tourTheme":[15]},{"name":"현지교통수단","value":8,"tourTheme":[]},{"name":"자전거","value":9,"tourTheme":[]},{"name":"오토바이","value":10,"tourTheme":[9]},{"name":"기타","value":11,"tourTheme":[]}]}],
    CostType : [{"name":"항공료","value":7},{"name":"교통","value":2},{"name":"숙박","value":6},{"name":"입장료","value":0},{"name":"음식","value":1},{"name":"오락","value":4},{"name":"쇼핑","value":3},{"name":"기타","value":5}],
    userCurrency : {"currency":"KRW","value":1,"cc":"KR","name":"_KRW_"},
    defaultCostType : [{"name":"항공료","value":7},{"name":"교통","value":2},{"name":"숙박","value":6},{"name":"입장료","value":0},{"name":"음식","value":1},{"name":"오락","value":4},{"name":"쇼핑","value":3},{"name":"기타","value":5}]
  };
  g_localizedString["_DeleteReally_"] = "정말 삭제하시겠습니까?";
  g_localizedString["_fileSizeIsToBigErr_"] = "10MB 이상의 사진은 업로드 할 수 없습니다.";
  g_localizedString["_Save02_"] = "저장";
g_localizedString["_PleaseComment_"] = "댓글을 남겨주세요.";
g_localizedString["_Cancel_"] = "취소";
g_localizedString["_ConfirmCommentDel_"] = "댓글을 삭제 하시겠습니까?";
g_localizedString["_Delete_"] = "삭제";
g_localizedString["_DeleteComment_"] = "댓글 삭제";
g_localizedString["_ViewMore_"] = "더 보기";

g_localizedString["_Memo_"] = "메모";
g_localizedString["_Information_"] = "정보";
g_localizedString["_Journal_"] = "여행기";
g_localizedString["_Review_"] = "리뷰";
g_localizedString["_Talk_"] = "잡담";
g_localizedString["_Ask_"] = "질문";
g_localizedString["_Info_"] = "정보";
g_localizedString["_Note_"] = "노트";
g_localizedString["_Title_"] = "제목";
g_localizedString["_Tags_"] = "태그";
g_localizedString["_UGSpot_"] = "명소";
g_localizedString["_TypeText_"] = "내용을 적어주세요.";
g_localizedString["_DeleteReally_"] = "정말 삭제하시겠습니까?";
g_localizedString["_InputMemo_"] = "예) 에펠탑 모형사기 or 한국음식 준비";
g_localizedString["_MyEventDetail_"] = "My장소";
g_localizedString["_sPost_"] = "님의 포스트";
g_localizedString["_Like_"] = "좋아요";
g_localizedString["_Comment_"] = "댓글";
g_localizedString["_TitleRequire_"] = "제목(필수)";
g_localizedString["_MySpot_"] = "My장소";
g_localizedString["_Post_"] = "포스트";
g_localizedString["_PlanPostDeleteConfirm_"] = "포스트를 일정에서 제거하시겠습니까?";
g_localizedString["_Yes_"] = "예";
g_localizedString["_No_"] = "아니오";
g_localizedString["_CommentMoreButton_"] = "더보기";



  function loginConnectCallback(providerCode, isSuccess, errMsg, uuid){
    if (!isSuccess) {
      if (providerCode === "fa") {
        $('#myonoffswitch1').removeAttr('checked');
        $('#myonoffswitch1').attr('checked',false);
      } else {
        $('#myonoffswitch2').removeAttr('checked');
        $('#myonoffswitch2').attr('checked',false);
      }
      alert(errMsg);
    }
  }
</script> -->

  <div class="mypage">
    <div class="my-page-box top">
      <div class="tit-img">
        <div class="loading-image back-image-loading hide">
          <div class="load-01">
            <div class="load-02 fa-spin"></div>
          </div>
        </div>        
        <img src="https://d254i4serkgq8u.cloudfront.net/images/wb_base_cover.jpg" style="top: 0px;" alt="">       
      </div>
      <div class="deam"></div>
      <div class="profile-wrap" id="form1" runat="server">
        <div class="profile-top-box">
          <div class="profile-img">
            <div class="loading-pf-upload loading-image profile-image-loading hide">
              <div class="load-01">
                <div class="load-02 fa-spin"></div>
              </div>
            </div>
         <!-- <img src="https://d254i4serkgq8u.cloudfront.net/images/wb_base_profile.jpg" alt=""/>  --> 
              <img id="blah" src="https://d254i4serkgq8u.cloudfront.net/images/wb_base_profile.jpg" alt="" />
             <div class="file-input-wrapper btn btn-primary profile-change-btn">
              <span>프로필 사진변경</span>
              <input type="file" name="upfile" id="imgInp" class="inputTEX2"   data-url="/v2.1/ajax/profileUpload">
              
            </div>                
          </div><!-- user-info-links -->

          <div class="user-info-links">
            <h3>맛집냠냠</h3>
            <div class="author-sns"></div>
          </div><!-- user-info-links -->
          <div class="user-info-ment"></div><!-- user-info-ment -->
          <div class="user-wishbeen-link">            
            <a href="https://www.wishbeen.co.kr/8275970d980098da">www.wishbeen.co.kr/<strong>8275970d980098da</strong></a> 
          </div> <!-- user-info-links -->
        </div><!-- profile top box -->    
      </div><!--profile-wrap-->
    </div><!-- my-page-box top -->
    <div class="my-page-box">
      <div class="tab-box">
        <div class="mypage-tabs not-my-home">
          <ul>
          <li><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-01.png" alt=""><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-02.png" alt=""></li>
         <li><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-03.png" alt=""><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-04.png" alt=""></li>
          
          <li><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-03.png" alt=""></li>
          <li><img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-04.png" alt=""></li>
         
          
<li id="notice-tab">
              <a class="my-tab-01">
                <img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-01.png" alt="">
                <span>알림</span>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>     
            <li id="plan-tab" >
              <a class="my-tab-02">
              <div class="test">
                <img src="../image/icon/icon1.JPG" onmouseover="changeImg(this,'../image/icon/icon2.JPG')" onmouseout="changeImg(this,'../image/icon/icon1.JPG')"/>
                
                <span>여행일정</span></div>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>
            <li id="bookmark-tab" >
              <a class="my-tab-03">
                <img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-03.png" alt=""/>
                <span>북마크 </span>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>
            <li id="post-tab" >
              <a class="my-tab-04">
                <img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-04.png" alt=""/>
                <span>포스트</span>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>
            <li id="favor-tab" >
              <a class="my-tab-05">
                <img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-05.png" alt=""/>
                <span>위시보드</span>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>
            <li id="founder-tab" >
              <a class="my-tab-06">
                <img src="https://d254i4serkgq8u.cloudfront.net/images/bg-my-tab-06.png" alt=""/>
                <span>내가 만든 명소</span>
                <span class="num">0</span>
              </a>
              <span class="active-list"></span>
            </li>
          </ul>
        </div><!-- mypage-tabs -->
       <div class="search-top">
        <a id="btn-scroll-up" class="btn-top" style="display: none; float:right;"><img src="https://d254i4serkgq8u.cloudfront.net/images/btn-search-top.png" alt="go to top"></a>
       </div>
    </div><!--my-page-box -->
  </div>

</body>
</html>