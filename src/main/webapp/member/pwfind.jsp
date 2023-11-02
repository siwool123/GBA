<%@page import="java.util.Properties"%>
<%@page import="utils.JSFunction"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<% 

String userId = request.getParameter("user_id");
String userName = request.getParameter("user_name");
String userEmail = request.getParameter("user_email");

System.out.println(userName+" : "+userEmail);
MemberDAO dao = new MemberDAO(application);
MemberDTO dto = dao.pwfind(userId, userName);
dao.close();

if(dto.getPw()== null){
	JSFunction.alertBack("미등록 회원입니다. 회원가입을 진행해주세요.", out);
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비번찾기</title>
</head>
<body>
<center>
<div id="wrap">
	<img src="../images/member/sub_image.jpg" id="main_visual" />
	<div class="contents_box">
		<div class="left_contents">
		</div>
		<div class="right_contents">
<% if(dto.getPw() != null){		%>
		<p style="padding:10px"><b><%= userName %> 님,</b> <br />
		아이디 <%= userId %> 에 해당하는 비밀번호는 <b><%= dto.getPw() %></b> 입니다.</p>
		<p style="text-align:right; padding-right:10px;">
			<a href="login.jsp" style="border:1px solid red; padding:0 20px;"><img src="../images/lnb01.gif" /></a>
			<a href="join01.jsp"><img src="../images/login_btn03.gif" /></a>
		</p>
<% } %>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</center>
 </body>
</html>