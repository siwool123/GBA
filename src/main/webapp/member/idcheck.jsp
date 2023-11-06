<%@page import="java.io.PrintWriter"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("EUC-KR");
String id = request.getParameter("id");

MemberDAO dao = new MemberDAO(application);
if(dao.checkId(id)==1) System.out.println("이미 존재하는 아이디입니다.");
else System.out.println("사용가능한 아이디입니다.");
out.write(dao.checkId(id)+"");
%>