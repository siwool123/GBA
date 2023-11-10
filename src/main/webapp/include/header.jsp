<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강서구배드민턴협회</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f101226514.js" crossorigin="anonymous"></script>
<!-- swiper 플러그인 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<link rel="shortcut icon" href="./images/favicon.ico" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<script src="../js/gba.js"></script>
<link href="../css/gba.css" rel="stylesheet" type="text/css" />
</head>
<body id="pageTop">
<div class="border-top border-bottom" style="height: 36px; background-color:#005bac;">
        <div class="container topR">
            <ul id="topR">
<% if (session.getAttribute("UserId") == null) { %>
		<!-- 로그인전 -->
                <li class="btn3"><a href="../member/login.jsp" >로그인</a></li>
                <li class="btn3"><a href="../member/join1.jsp">회원가입</a></li>
<% } else { %>
		<!-- 로그인후 -->
				<li class="btn3"><a href="../member/logout.jsp" >로그아웃</a></li>
                <li class="btn3"><a href="../member/edit.jsp">정보변경</a></li>
<% } %>
                <li class="btn3 cc"><a href="../member/sitemap.jsp">사이트맵</a></li>
            </ul>
        </div>
    </div>
    <div class="navbar-expand-sm sticky-top borer-bottom" >
        <div class="container">
            <a href="../main/main.jsp" class="ci-banner"><img src="../images/gba.png" alt="logo" style="width:140px; margin-top: 12px;" ></a>
            <div id="mynavbar">
                <ul>
                    <li class="m1">협회소개</li>
                    <li class="m2">대회안내</li>
                    <li class="m3">커뮤니티</li>
                    <li class="m4">갤러리</li>
                    <li class="m5">자료실</li>
                    <li class="m6">클럽소개</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid cate3 border">
    <div class="container">
    <div class="sub1">
        <ul class="sub2 text-center m1">
            <li><a href="../intro/1.jsp">회장인사말</a></li>
            <li><a href="../intro/2.jsp">협회개요</a></li>
            <li><a href="../intro/3.jsp">연혁</a></li>
            <li><a href="../intro/4.jsp">임원소개 및 조직도</a></li>
            <li><a href="../intro/5.jsp">협회규정</a></li>
        </ul>
        <ul class="sub2 text-center m2">
            <li><a href="../contest/1.jsp">대회일정</a></li>
            <li><a href="../contest/2.jsp">대회규정</a></li>
            <li><a href="../contest/3.jsp">참가신청안내</a></li>
        </ul>
        <ul class="sub2 text-center m3">
            <li><a href="">공지사항</a></li>
            <li><a href="">자유게시판</a></li>
            <li><a href="">Q & A</a></li>
        </ul>
        <ul class="sub2 text-center m4">
            <li><a href="">포토갤러리</a></li>
            <li><a href="">영상갤러리</a></li>
        </ul>
        <ul class="sub2 text-center m5">
            <li><a href="">협회운영자료</a></li>
            <li><a href="">운영실적</a></li>
        </ul>
        <ul class="sub2 text-center m6">
            <li><a href="">소속클럽현황</a></li>
            <li><a href="">클럽소식</a></li>
        </ul>
	</div>
    </div>
    </div>
   <a id="ptop" href="#pageTop" style="opacity:0.5 !important"><i class="bi bi-chevron-up"></i><br/>TOP</a>
</body>
</html>