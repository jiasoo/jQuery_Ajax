<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>넓이높이구하기/넓이높이지정하기</title>
<style type="text/css">
	#mydiv{
		height: 100px;
		width: 300px;
		padding: 10px;
		margin: 3px;
		border: 2px solid blud;
		background-color: lightblue;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#btn1").on("click", function() {
		// width()           => 순수 너비
		// innerWidth()        => 순수 너비 + 패딩포함
		// outerWidth()       => 순수 너비 + 패딩포함 + 테두리포함
		var txt = "width : " + $("#mydiv").width()+"<br>" ;
		txt += "height : " + $("#mydiv").height()+"<br>";
		txt += "inner width : " + $("#mydiv").innerWidth()+"<br>";
		txt += "outer width : " + $("#mydiv").outerWidth()+"<br>";
		$("#mydiv").append(txt);
	});
	$("#btn2").on("click", function() {
		$("#mydiv").width(500).height(500);
	});
});
</script>
</head>
<body>
	<div id="mydiv"></div>
	<hr>
	<button id="btn1">눌러주세요</button>
	<button id="btn2">눌러주세요</button>
</body>
</html>