<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<script type="text/javascript">
var news=["[단독] '극단 선택 서초 초등교사' 오늘 추모문화제 연다",
	"[단독] 이화영 정진상 요청으로 이재명 방북 추진",
	"김영환 충북지사, '오송 참사' 후 첫 공식 사죄…막중한 책임 느껴",
	"피지컬:100' 출연한 前 럭비 국가대표 성폭행으로 징역 7년"];
	var index = 0;
	var timer ;
	function start_news() {
		// 2초마다 showNews()를 실행 하자 (showNews()콜백함수)
		timer = setInterval(showNews, 2000);
	}
	function showNews() {
		var dix = document.getElementById("mydiv");
		dix.innerHTML = news[index++];
		if(index== news.length){
			index=0;
		}
	}
	function stop_news() {
		// setInterval()를 중지 시키는 함수
		clearInterval(timer);
	}
</script>
</head>
<body>
	<div id="mydiv"></div>
	<button onclick="start_news">뉴스보기</button>
	<button onclick="stop_news">뉴스중지</button>	
</body>
</html>