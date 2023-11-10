<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../member/IsLoggedIn.jsp" %>
<% 
String id = request.getParameter("id");
System.out.println(id);
MemberDAO dao = new MemberDAO();
MemberDTO dto = dao.viewMember(id);
String sessionId = session.getAttribute("UserId").toString();

int delResult = 0;
if(sessionId.equals(id)){
	delResult = dao.dropout(id);
	dao.close();
	System.out.println(id +" / "+delResult);
	if(delResult==1) {
		JSFunction.alertLocation("회원탈퇴가 완료되었습니다. 그동안 강서구배드민턴협회를 이용해주셔서 감사합니다. ", "../main/main.jsp", out);
		session.removeAttribute("UserId");
		session.removeAttribute("UserName");
		session.invalidate();
	}else JSFunction.alertBack("회원탈퇴에 실패했습니다.", out);
}else{JSFunction.alertBack("회원 본인만 탈퇴할 수 있습니다.", out); return;}
%>
<meta charset="UTF-8">
<title>회원탈퇴 완료</title>
<body>
	<div>
	<h3>회원탈퇴가 되었습니다.</h3>
		<h3>그동안 강서구배드민턴협회를 이용해주셔서 감사합니다.</h3>
		<a href="../main/main.jsp">홈으로</a>
	</div>
</body>
</html>