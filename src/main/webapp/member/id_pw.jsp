<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(1), .leftmenu li:nth-child(1) a, .leftmenu li:nth-child(1) a i {background-color: #005bac; color: white;}
.btnw, .bi-search {margin-left: 10px;}
.bi-search {color:#dddddd;}
ul.mt-5 li {margin:10px 0;}
.col-sm-5 b {color:#005bac; font-size:24px; line-height:45px;}
</style>
</head>
<script>
function validateForm(form) {
    if (!form.user_name.value) {
        alert("회원이름을 입력하세요.");
        form.user_name.focus();
        return false;
    }
    if (form.user_email.value == "") {
        alert("이메일 주소를 입력하세요.");
        form.user_email.focus();
        return false;
    }
}
function validateForm2(form) {
	if (!form.user_id.value) {
        alert("아이디를 입력하세요.");
        form.user_id.focus();
        return false;
    }
    if (!form.user_name.value) {
        alert("회원이름을 입력하세요.");
        form.user_name.focus();
        return false;
    }
    if (form.user_email.value == "") {
        alert("이메일 주소를 입력하세요.");
        form.user_email.focus();
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">아이디 / 비밀번호 찾기</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>아이디 / 비밀번호 찾기</span>
			</div>	
			<div class="row" style="margin-top:80px;">
				<div class="col-sm-5 border-end" style="margin:0 60px 0 40px; padding-right:60px; ">
					<b class="mb-3">아이디 찾기</b><i class="bi bi-search"></i><br />
					회원가입시 등록하신 회원이름과 이메일을 입력해주세요.
					<form action="idfind.jsp" method="post" name="idfindForm" onsubmit="return validateForm(this);" >		
						<ul class="mt-5 mb-5">
							<li><div class="login" ><i class="bi bi-person-badge"></i><input type="text" name="user_name" placeholder="회원이름을 입력해주세요." /></div></li>
							<li><div class="login" ><i class="bi bi-envelope"></i></i><input type="text" name="user_email" placeholder="이메일을 입력해주세요." /></div></li>
						</ul>
						<input type="submit" value="아이디찾기" class="btnb" style="width:100%; height:47px;" />
						<div class="mt-5"> 아직 회원이 아니신가요? <a href="../member/join1.jsp" class="btnw">회원가입</a></div>
					</form>
				</div>
				<div class="col-sm-5">
				<b class="mb-3">비밀번호 찾기</b><i class="bi bi-search"></i><br />
					회원가입시 등록하신 아이디, 회원이름, 이메일을 입력해주세요.
					<form action="pwfind.jsp" method="post" name="pwfindForm" onsubmit="return validateForm2(this);" >
						<ul class="mt-5 mb-5">
							<li><div class="login"><i class="bi bi-person"></i><input type="text" name="user_id" placeholder="아이디를 입력해주세요." /></div></li>
							<li><div class="login"><i class="bi bi-person-badge"></i><input type="text" name="user_name" placeholder="회원이름을 입력해주세요." /></div></li>
							<li><div class="login"><i class="bi bi-envelope"></i><input type="text" name="user_email" placeholder="이메일을 입력해주세요." /></div></li>
						</ul>
						<input type="submit" value="비밀번호찾기" class="btnb" style="width:100%; height:47px;" />
					</form>
				</div>
			</div>	
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>
