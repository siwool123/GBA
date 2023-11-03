<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid mainvisual"></div>
<div class="container-fluid" style="background-color:#f5fafe; heigt:500px;">
<div class="container mainicon2" style="position:relative; top:-50px; border:1px solid #c1c1c1;">
	<div class="row mainicon">
		<div class="col-sm-3 border">
		<a href="">
			<i class="bi bi-person-circle"></i>
			임원소개
		</a>
		</div>
		<div class="col-sm-3 border"  id="clubb">
		<a href="">
			<span id="imgbox">
			<img src="../images/badminton_icon_b.png" id="img1" />
			<img src="../images/badminton_icon_w.png" id="img2" />
			</span>
			클럽소개
		</a>
		</div>
		<div class="col-sm-3 border">
		<a href="">
			<i class="fa-regular fa-paste"></i>
			협회자료
		</a>
		</div>
		<div class="col-sm-3 border">
		<a href="">
			<i class="bi bi-calendar-check"></i>
			대회안내
		</a>
		</div>
	</div>
</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>