<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	var news=["[단독] '극단 선택 서초 초등교사' 오늘 추모문화제 연다",
		"[단독] 이화영 정진상 요청으로 이재명 방북 추진",
		"김영환 충북지사, '오송 참사' 후 첫 공식 사죄…막중한 책임 느껴",
		"피지컬:100' 출연한 前 럭비 국가대표 성폭행으로 징역 7년"];
		var index = 0;
		setInterval(() => {
			$("#mydiv").text(new[index++]);
			if(index==news.length) index=0;
		}, 2000);
});
</script>

</head>
<body>
	<div id="mydiv"></div>
</body>
	<button onclick="start_news">뉴스보기</button>
	<button onclick="stop_news">뉴스중지</button>	
</html>