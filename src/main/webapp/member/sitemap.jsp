<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(5), .leftmenu li:nth-child(5) a, .leftmenu li:nth-child(5) a i {background-color: #005bac; color: white;}
.sitemap div div p {font-size:20px; font-weight:bolder; border-bottom:3px solid #005bac; color:#005bac; padding-bottom:15px; margin-bottom:20px; }
.sitemap div div ul li a {font-size:16px;}
.sitemap div div ul li {height:34px;}
.sitemap div div ul li a:hover {border-bottom:1px solid grey; font-weight:600;}
.sitemap .row {margin:80px 0;}
.col-sm-4 {padding:0 30px !important;}
</style>
</head>
 <body>
 <%@ include file="../include/header.jsp" %>
 <div class="container-fluid subvisual"></div>
<div class="container">
	<div class="row">
		<div class="col-sm-2">
			<%@ include file="../include/leftmenu_login.jsp" %>
		</div>
		<div class="col-sm-10 p-5 mt-3" style="padding-right:0 !important;">
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">사이트맵</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>사이트맵</span>
			</div>	
			<div class="sitemap py-4">
				<div class="row">
<div class="col-sm-4">
<p>협회소개</p>
<ul>
	<li><a href="../intro/1.jsp">회장인사말</a></li>
	<li><a href="../intro/2.jsp">협회개요</a></li>
	<li><a href="../intro/3.jsp">연혁</a></li>
	<li><a href="../intro/4.jsp">임원소개 및 조직도</a></li>
	<li><a href="../intro/5.jsp">협회규정</a></li>
</ul>
</div>
<div class="col-sm-4 c">
<p>대회안내</p>
<ul>
	<li><a href="../contest/1.jsp">대회일정</a></li>
	<li><a href="../contest/2.jsp">대회규정</a></li>
	<li><a href="../contest/3.jsp">참가신청안내</a></li>
</ul>
</div>
<div class="col-sm-4">
<p>커뮤니티</p>
<ul>
	<li><a href="../community/1.jsp">공지사항</a></li>
	<li><a href="../community/2.jsp">자유게시판</a></li>
	<li><a href="../community/3.jsp">Q & A</a></li>
</ul>
</div>
				</div>
				<div class="row">
<div class="col-sm-4">
<p>갤러리</p>
<ul>
	<li><a href="../gallery/1.jsp"> 포토갤러리</a></li>
	<li><a href="../gallery/2.jsp">영상갤러리</a></li>
</ul>
</div>
<div class="col-sm-4 c">
<p>자료실</p>
<ul>
	<li><a href="../admin/1.jsp">협회운영자료</a></li>
	<li><a href="../admin/2.jsp">운영실적</a></li>
</ul>
</div>
<div class="col-sm-4">
<p>클럽소개</p>
<ul>
	<li><a href="../club/1.jsp">소속클럽현황</a></li>
	<li><a href="../club/2.jsp">클럽소식</a></li>
</ul>
</div>
				</div>
				<div class="row">
<div class="col-sm-4">
<p>멤버십</p>
<ul>
<% if (session.getAttribute("UserId") == null) { %>
		<!-- 로그인전 -->
     <li><a href="../member/login.jsp" >로그인</a></li>
     <li><a href="../member/join1.jsp">회원가입</a></li>
<% } else { %>
		<!-- 로그인후 -->
	 <li><a href="../member/logout.jsp" >로그아웃</a></li>
     <li><a href="../member/edit.jsp">정보변경</a></li>
<% } %>
	<li><a href="../club/1.jsp">개인정보처리방침</a></li>
	<li><a href="../club/2.jsp">이메일무단수집거부</a></li>
	<li><a href="">사이트맵</a></li>
</ul>
</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>
