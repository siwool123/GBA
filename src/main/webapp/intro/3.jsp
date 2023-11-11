<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(3), .leftmenu li:nth-child(3) a, .leftmenu li:nth-child(3) a i {background-color: #005bac; color: white;}
.ceo li, .right {margin:30px 0 !important; font-size:17px;}
.bl {font-weight:bolder !important; margin-top:30px !important; border-left:8px solid #005bac; padding-left:10px;}
.gr {border-left:8px solid #ededed; }
</style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid subvisual"></div>

<div class="container">
	<div class="row">
		<div class="col-sm-2">
			<%@ include file="../include/leftmenu_intro.jsp" %>
		</div>
		<div class="col-sm-10 p-5 mt-3" style="padding-right:0 !important;">
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">연혁</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  협회소개 <span class="sep">></span>연혁</span>
			</div>
			<div class="my-5">
				<table class="table-hover">
					<tr><th colspan="3" class="gr year">1980s</th></tr>
					<tr>
						<th class="bl">1987년 </th>
						<td>강서구새마을배드민턴중앙연합회 창단</td>
						<td>박재근 회장 선출</td>
					</tr>
					<tr><th colspan="3" class="gr"></th></tr>
					<tr>
						<th class="bl">1988년 </th>
						<td>강서구 새마을배드민턴중앙연합회 정기대의원총회</td>
						<td>안구전 회장 선출</td>
					</tr>
					<tr><th colspan="3" class="gr"></th></tr>
					<tr>
						<th class="bl">1989년 </th>
						<td>강서구 새마을배드민턴중앙연합회 정기대의원총회</td>
						<td>김영배 회장 선출</td>
					</tr>
					<tr><th colspan="3" class="gr year">1990s</th></tr>
					<tr>
						<th class="bl">1990년 </th>
						<td>생활체육강서구배드민턴연합회로 변경, 정기대의원총회</td>
						<td>1대 유기종 회장 선출</td>
					</tr>
					<tr><th colspan="3" class="gr"></th></tr>
					<tr>
						<th class="bl">1993년 </th>
						<td>생활체육강서구배드민턴연합회 정기대의원총회</td>
						<td>2대 이인두 회장 선출 / 2년</td>
					</tr>
					<tr><th colspan="3" class="gr"></th></tr>
					<tr>
						<th class="bl">1989년 </th>
						<td>강서구 새마을배드민턴중앙연합회 정기대의원총회</td>
						<td>김영배 회장 선출</td>
					</tr>
				</table>
			</div>
			
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>