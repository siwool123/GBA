<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid mainvisual"></div>
<div class="container-fluid pb-5 mb-5" style="background-color:#f5fafe;">
<div class="container mainicon2" style="position:relative; top:-50px; border:1px solid #c1c1c1; box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.1);">
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
<div class="container">
	<div class="row">
		<div class="col-sm-6" >
		<div style="width:99%; background-color:white;" class="border p-5">
			<div class="mb-4 pb-3" style="border-bottom:2px solid #005bac;">
			<b style="font-size:18px; margin-right:20px;"> 공지사항 </b> <a href="" style="float:right;">more +</a>
			</div>
			<ul class="nlist">
			<% for(int i=0; i<6; i++){ %>
				<li><i class="fa fa-angle-right" style="color:#005bac; font-size:14px; margin-right:10px;"></i>
				사단법인 서울특별시 강서구배드민턴협회 공지사항 <%= i %> <span class="ldate">2023-11-0<%= i %></span> </li>
			<% } %>
			</ul>
		</div>
		</div>
		<div class="col-sm-6">
		<div class="border p-5" style="width:99%; margin-left:1%; background-color:white;" >
			<div class="mb-4 pb-3" style="border-bottom:2px solid #005bac;">
			<b style="font-size:18px; margin-right:20px;"> 대회일정 </b> <a href="" style="float:right;">more +</a>
			</div>
			<div class="crop" style="height: 240px; overflow: hidden;">
			<iframe id="myframe" src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=Asia%2FSeoul&showTitle=0&showTz=0&showNav=1&showCalendars=1&showPrint=0&src=ZDVjYTI1Yzk5MjQ1NWU5OGQ4YzgyMjA0MjQ0ZDM0OGIwZmFhNjhiY2IwODkzZDNlNzUyYmFjMzMxNzE2ZTM1Y0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t&src=a28uc291dGhfa29yZWEjaG9saWRheUBncm91cC52LmNhbGVuZGFyLmdvb2dsZS5jb20&color=%23F6BF26&color=%23D50000" width="100%" height="267" frameborder="0" scrolling="no"></iframe>
			</div>
		</div>
		</div>
	</div>
</div>
</div>

<div class="container mb-5 pb-5">
	<div class="row">
		<div class="col-sm-6" >
		<div style="width:99%; background-color:white;" class="border p-5">
			<div class="mb-4 pb-3" style="border-bottom:2px solid #005bac;">
			<b style="font-size:18px; margin-right:20px;"> 클럽소식 </b> <a href="" style="float:right;">more +</a>
			</div>
			<ul class="nlist">
			<% for(int i=0; i<6; i++){ %>
				<li><i class="fa fa-angle-right" style="color:#005bac; font-size:14px; margin-right:10px;"></i>
				사단법인 서울특별시 강서구배드민턴협회 클럽소식 <%= i %><span class="ldate">2023-11-0<%= i %></span></li>
			<% } %>
			</ul>
		</div>
		</div>
		<div class="col-sm-6">
		<div style="width:99%; background-color:white;" class="border p-5">
			<div class="mb-4 pb-3" style="border-bottom:2px solid #005bac;">
			<b style="font-size:18px; margin-right:20px;"> 자유게시판 </b> <a href="" style="float:right;">more +</a>
			</div>
			<ul class="nlist">
			<% for(int i=0; i<6; i++){ %>
				<li><i class="fa fa-angle-right" style="color:#005bac; font-size:14px; margin-right:10px;"></i>
				사단법인 서울특별시 강서구배드민턴협회  자유게시판  <%= i %><span class="ldate">2023-11-0<%= i %></span></li>
			<% } %>
			</ul>
		</div>
		</div>
	</div>
</div>

<div class="container mb-5 pb-5">
	<b style="font-size:18px; margin-right:20px;">포토갤러리 </b> <a href="">more +</a>
	<i class="bi bi-chevron-left photoleft mx-2"></i> 
			<i class="bi bi-chevron-right photoright"></i>
	<div class="swiper-container" style="margin-top:20px; overflow:hidden;">
	    <div class="swiper-wrapper photogal" >
<% for(int i=0; i<5; i++){ %>
	        <a class="swiper-slide" href=""> <div class="photo"></div> <div class="ptitle">title <%= i %></div> </a>
<% } %>
	    </div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>