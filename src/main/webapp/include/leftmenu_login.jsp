<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="lefttop">멤버십</div>
<ul class="leftmenu">
<% if (session.getAttribute("UserId") == null) { %>
    <li><a href="../member/login.jsp">로그인 <i class="fa fa-angle-right"></i></a></li>
    <li><a href="../member/join1.jsp">회원가입 <i class="fa fa-angle-right"></i></a></li>
<% } else { %>
	<li><a href="../member/logout.jsp" >로그아웃 <i class="fa fa-angle-right"></i></a></li>
    <li><a href="../member/edit.jsp">정보변경<i class="fa fa-angle-right"></i></a></li>
<% } %>
    <li><a href="../member/privacy.jsp">개인정보처리방침 <i class="fa fa-angle-right"></i></a></li>
    <li><a href="../member/email.jsp">이메일무단수집거부 <i class="fa fa-angle-right"></i></a></li>
    <li><a href="../member/sitemap.jsp">사이트맵 <i class="fa fa-angle-right"></i></a></li>
</ul>
<div class="bankL mt-4">
	<div>협회입금계좌 <img src="../images/bank_y.png" alt="농협" style="width:90px;" /> </div>
	<div style="font-size:18px; font-weight:bolder;">301-0336-4728-31</div>
	<div>사)서울특별시강서구<br/>배드민턴협회</div>
</div>