<%@page import="utils.JSFunction"%>
<%@page import="membership.MemberDAO"%>
<%@page import="membership.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw1");
String name = request.getParameter("name");
String email = request.getParameter("email1")+"@"+request.getParameter("email2");
String birth = request.getParameter("birth");
String phone = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
String add1 = request.getParameter("zip");
String add2 = request.getParameter("addr1");
String add3 = request.getParameter("addr2");

/* 회원가입 성공한경우 > 세션 영역에 회원아이디와 이름을 저장 > 로그인페이지로 '이동' 한다.
회원가입 실패한 경우 > request 영역에 에러메세지 저장 > 회원가입 페이지로 '포워드' 한다.  */
int result = 0;
MemberDTO dto = new MemberDTO();
dto.setId(id);
dto.setPw(pw);
dto.setName(name);
dto.setEmail(email);
dto.setBirth(birth);
dto.setPhone(phone);
dto.setAdd1(add1);
dto.setAdd2(add2);
dto.setAdd3(add3);

MemberDAO dao = new MemberDAO();
result = dao.join(dto);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(2), .leftmenu li:nth-child(2) a, .leftmenu li:nth-child(2) a i {background-color: #005bac; color: white;}
.btnb {width:200px; height:47px; font-size:16px; font-weight:bold; }
.btnb:hover {color:white;}
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">회원가입</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>회원가입</span>
			</div>	
			<div class="text-center fw-bold" style="background-color: #f7f7f7; margin:80px 10px 30px 10px; padding:80px;">
			<%if (result==1) {  %>
				<span style="font-size:30px; color:#b0b0b0;"> <b style="font-size:30px; color:black;">강서구배드민턴협회</b> 웹사이트의<br/>
				회원가입이 성공적으로 완료되었습니다.</span><br/><br/>
				
				<div style="font-size:18px;"> 가입하신 회원님의 아이디는 <b style="border-bottom:1px solid grey; font-size:18px; margin:0 10px;"><%= dto.getId() %></b> 입니다.</div><br/><br/>
				
				회원탈퇴는 언제든지 가능하며 탈퇴 후 일정기간이 지나면 회원님의<br/>
				소중한 정보는 모두 삭제됩니다.
				
		<% }else{ %>		 
			회원가입에 실패했습니다.
		<% JSFunction.alertBack("회원가입에 실패하였습니다.", out);} %>	
			</div>
			<div class="text-center"><a href="../main/main.jsp" class="btnb mt-3" style="padding:12px 60px; ">홈으로</a> </div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>