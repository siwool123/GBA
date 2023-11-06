<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String savedId = CookieManager.readCookie(request, "savedId");
String cookie = "";
if(!savedId.equals("")) cookie = "checked";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(1), .leftmenu li:nth-child(1) a, .leftmenu li:nth-child(1) a i {background-color: #005bac; color: white;}
.btnw {margin-left: 30px;}
</style>
</head>
<script>
//로그인페이지 : 아이디/비번 검사 로직
function validateForm(fm) {
	//입력값이 공백인지 확인후 경고창, 포커스이동, 폼값전송 중단처리를 한다.
    if (!fm.user_id.value) {
        alert("아이디를 입력하세요.");
        fm.user_id.focus();
        return false;
    }
    if (fm.user_pw.value == "") {
        alert("비밀번호를 입력하세요.");
        fm.user_pw.focus();
        return false;
    }
}
</script>
 <body>
 <%@ include file="../include/header.jsp" %>
 <div class="container-fluid subvisual"></div>
<div class="container">
	<div class="row">
		<div class="col-sm-2">
			<%@ include file="../include/leftmenu_login.jsp" %>
		</div>
		<div class="col-sm-10 p-5 mt-3" style="padding-right:0 !important;">
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">로그인</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>로그인</span>
			</div>	
		<%if (session.getAttribute("UserId") == null) {  %>	
			<div class="row" style="border:6px solid #ededed; margin:80px 10px 30px 10px; padding:80px;">
				<div class="col-sm-6">
					<div style="font-size:80px; color:#ededed; font-weight:bolder; line-height:96px;"> LOGIN</div>
					<div style="font-size:20px; font-weight:bold; margin-bottom:10px;">회원 로그인</div>
					<div>회원님 아이디와 비밀번호를 입력해주세요.</div>
				</div>
				<div class="col-sm-6">
					
					<form action="loginproc.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this);">	
						<div class="login" ><i class="bi bi-person"></i>
						<input type="text" name="user_id" value="<%= savedId %>" placeholder="아이디를 입력해주세요." />
						</div>
						<div class="login" ><i class="bi bi-lock"></i>
						<input type="password" name="user_pw" value="" placeholder="비밀번호를 입력해주세요." />
						</div>
						<label style="line-height:50px; padding-left:10px;"> <input type="checkbox" name="idsave" value="y" <%= cookie %> style="margin:0 10px;" /> 아이디 저장</label>
						<input type="submit" value="로그인" class="btnb" style="width:360px; height:47px;" />
					</form>
					
				</div>
			</div>	
			<div class="row">
			<div class="col-sm-6 text-center">
			아직 회원이 아니신가요? <a href="../member/join1.jsp" class="btnw">회원가입</a></div> 
			<div class="col-sm-6">
			아이디와 비밀번호를 잊으셨나요? <a href="../member/id_pw.jsp" class="btnw">아이디/비밀번호 찾기</a>
			</div>
			</div>
		<% }else{%>	<!-- 로그인 후 -->	 
			<p style="padding:10px"><span style="font-weight:bold; color:#333;"><%= session.getAttribute("UserName") %> 님,</span> 반갑습니다.<br />로그인 하셨습니다.</p>
		<%} %>	
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>
