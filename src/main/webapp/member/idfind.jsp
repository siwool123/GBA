<%@page import="utils.JSFunction"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String userName = request.getParameter("user_name");
String userEmail = request.getParameter("user_email");

System.out.println(userName+" : "+userEmail);
MemberDAO dao = new MemberDAO();
MemberDTO dto = dao.idfind(userName, userEmail);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(1), .leftmenu li:nth-child(1) a, .leftmenu li:nth-child(1) a i {background-color: #005bac; color: white;}
.btnb {width:40% !important; heigh:45px !important; padding:15px 50px !important;}
ul.mt-5 li {margin:10px 0;}
#idfindresult, #idfindresult b {font-size:18px; line-height:30px;}
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">아이디 찾기</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>아이디 찾기</span>
			</div>	
		<% if(dto.getId() != null){	%>
		<div id="idfindresult" class="text-center my-5 py-5"><b><%= dto.getName() %></b> 님, <br />
		아이디는 <b><%= dto.getId() %> 입니다.</b></div>
		<div class="my-5 text-center  py-5">
			<a href="../member/login.jsp" class="btnb" style="margin-right:20px;">로그인</a>
			<a href="../member/join1.jsp" class="btnb">회원가입</a>
		</div>
		<% }else{ JSFunction.alertBack("회원이름과 이메일 주소가 존재하지 않습니다. 다시 입력해주세요.", out);} %>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>
