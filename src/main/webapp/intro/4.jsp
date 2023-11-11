<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(4), .leftmenu li:nth-child(4) a, .leftmenu li:nth-child(4) a i {background-color: #005bac; color: white;}
td, th { width:90px; text-align:center !important; height:32px; }
.column4 {width:20px !important; }
table { border-collapse:collapse; page-break-after:always }
.b,.e,.f  { text-align:center }
.inlineStr,.s { text-align:left }
.n { text-align:right }
h3 {color:#005bac !important; font-weight:bolder !important; margin:60px 0 !important; border-left:8px solid #005bac; padding-left:10px;}
td.style1, th.style1 { font-size:25.0pt; }
td.style3 {border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important;}
th.style3 {border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important;}
td.style4, th.style4 {border-left:1px solid #d5d5d5 !important;  }
td.style5, th.style5 {border-right:1px solid #d5d5d5 !important;  }
td.style6, th.style6 {border-bottom:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;}
td.style7, th.style7, td.style33, th.style33 {border-bottom:1px solid #d5d5d5 !important;  }
td.style8, th.style8 {border-bottom:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important;}
td.style9, th.style9 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style10, th.style10 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important; color:white; background-color:#5B9BD5 }
td.style11, th.style11 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; }
td.style12, th.style12 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important;}
td.style13, th.style13 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important; }
td.style14, th.style14 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;  background-color:#DEEAF6 }
td.style16, th.style16 {border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style17, th.style17 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style19, th.style19, td.style24, th.style24 {border-right:1px solid #d5d5d5 !important; } 
td.style21, th.style21 {border-top:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style22, th.style22 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;  background-color:#ededed }
td.style23, th.style23 {border-bottom:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style25, th.style25 {border-bottom:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style26, th.style26 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;  background-color:#9CC2E5 }
td.style27, th.style27 {border-bottom:1px solid #d5d5d5 !important; border-right:1px solid #d5d5d5 !important; }
td.style31, th.style31 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;  background-color:#ADB9CA }
td.style32, th.style32, td.style34, th.style34 {border-bottom:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important; } 
td.style35, th.style35 {border-bottom:1px solid #d5d5d5 !important; border-top:1px solid #d5d5d5 !important; border-left:1px solid #d5d5d5 !important;  background-color:#c2eefe }
td.style36, th.style36 {border:1px solid #d5d5d5 !important; background-color:#e6f8ff; }
.table tr td {text-align:left !important; padding:20px 40px; line-height:30px;}
.table tr td b {margin-right:20px;}
.mainTab li {width:33.3%; text-align:center; font-weight:bolder; color:#d5d5d5; border-radius: 0 !important; padding:10px;}
.mainTab li.active {background-color:#005bac !important; color:white !important; }
.mainTab li:not(.mainTab .active) {border-bottom: 1px solid silver;}
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">임원소개 및 조직도</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  협회소개 <span class="sep">></span> 임원소개 및 조직도</span>
			</div>
			<div class="my-5">
				<h3>강서구배드민턴협회 조직도</h3>
				<table border="0" >
		          <tr class="row4">
		            <td class="column0" colspan="4">&nbsp;</td>
		            <td class="column4 style10 s style12" colspan="4">회장</td>
		            <td class="column8" colspan="5">&nbsp;</td>
		          </tr>
		          <tr class="row5">
		            <td class="column0" colspan="4">&nbsp;</td>
		            <td class="column4 style13 s style12" colspan="4">유충구</td>
		            <td class="column8" colspan="5">&nbsp;</td>
		          </tr>
		          <tr class="row6">
		            <td class="column0 style14 s style12" colspan="4">명예자문위원</td>
		            <td class="column4 style15 null"></td>
		            <td class="column5 style16 null"></td>
		            <td class="column6 style15 null" colspan="2"></td>
		            <td class="column8 style14 s style12" colspan="5">고문</td>
		          </tr>
		          <tr class="row7">
		            <td class="column0 style17 s">최동철</td>
		            <td class="column1 style17 s">장상기</td>
		            <td class="column2 style17 s">황동현</td>
		            <td class="column3 style17 s">경만선</td>
		            <td class="column4 style18 null"></td>
		            <td class="column5 style19 null"></td>
		            <td class="column6 style18 null" colspan="2"></td>
		            <td class="column8 style17 s">이범우</td>
		            <td class="column9 style17 s">박홍래</td>
		            <td class="column10 style17 s">김주식</td>
		            <td class="column11 style17 s">양동준</td>
		            <td class="column12 style17 s">최득집</td>
		          </tr>
		          <tr class="row8">
		            <td class="column0 style20 null" colspan="4"></td>
		            <td class="column4 style18 null"></td>
		            <td class="column5 style19 null"></td>
		            <td class="column6 style18 null" colspan="2"></td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style21 null"></td>
		            <td class="column10 style20 null" colspan="3"></td>
		          </tr>
		          <tr class="row9">
		            <td class="column0 style22 s style12" colspan="4">자문위원</td>
		            <td class="column4 style15 null"></td>
		            <td class="column5 style23 null"></td>
		            <td class="column6 style15 null"></td>
		            <td class="column7 style15 null"></td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style24 null"></td>
		            <td class="column10 style20 null" colspan="3"></td>
		          </tr>
		          <tr class="row10">
		            <td class="column0 style17 s">김옥균</td>
		            <td class="column1 style17 s">김광현</td>
		            <td class="column2 style17 s">김형곤</td>
		            <td class="column3 style17 s">이계원</td>
		            <td class="column4 style25 null"></td>
		            <td class="column5 style26 s style12" colspan="3">수석부회장</td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style27 null"></td>
		            <td class="column10 style20 null"  colspan="3"></td>
		          </tr>
		          <tr class="row11">
		            <td class="column0 style17 s">이순용</td>
		            <td class="column1 style17 null"></td>
		            <td class="column1 style17 null"></td>
		            <td class="column1 style17 null"></td>
		            <td class="column4 style15 null"></td>
		            <td class="column5 style13 s style12" colspan="3">김경현</td>
		            <td class="column8 style27 null"></td>
		            <td class="column9 style22 s style12" colspan="2">감사</td>
		            <td class="column11 style20 null" colspan="2"></td>
		          </tr>
		          <tr class="row12">
		            <td class="column0 style28 null style30" colspan="4"></td>
		            <td class="column4 style18 null"></td>
		            <td class="column5 style31 s style12" colspan="3">부회장</td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style17 s">조용준</td>
		            <td class="column10 style17 s">박기희</td>
		            <td class="column11 style20 null"></td>
		            <td class="column12 style20 null"></td>
		          </tr>
		          <tr class="row13">
		            <td class="column0 style20 null" colspan="5"></td>
		            <td class="column5 style17 s">김상남</td>
		            <td class="column6 style17 s">박순삼</td>
		            <td class="column7 style17 s">홍형락</td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style21 null"></td>
		            <td class="column10 style20 null" colspan="3"></td>
		          </tr>
		          <tr class="row14">
		            <td class="column0 style20 null" colspan="5"></td>
		            <td class="column5 style17 s">김희선</td>
		            <td class="column6 style17 s">안상희</td>
		            <td class="column7 style17 s">이민규</td>
		            <td class="column8 style32 null"></td>
		            <td class="column9 style22 s style12" colspan="4">사무국</td>
		          </tr>
		          <tr class="row15">
		            <td class="column0 style20 null"  colspan="2"></td>
		            <td class="column2 style33 null" colspan="3"></td>
		            <td class="column5 style17 s">이승용</td>
		            <td class="column6 style17 null"></td>
		            <td class="column6 style17 null"></td>
		            <td class="column8 style20 null"></td>
		            <td class="column9 style17 s">사무국장</td>
		            <td class="column10 style17 s">박정용</td>
		            <td class="column11 style17 s">재무팀장</td>
		            <td class="column12 style17 s">김정숙</td>
		          </tr>
		          <tr class="row16">
		            <td class="column0" colspan="2">&nbsp;</td>
		            <td class="column2 style34 null"></td>
		            <td class="column3" colspan="6">&nbsp;</td>
		            <td class="column9 style23 null"></td>
		          </tr>
		          <tr class="row17">
		            <td class="column0 style35 s style12" colspan="4">운영이사</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style35 s style12" colspan="6">클럽회장 ＆ 총무</td>
		          </tr>
		          <tr class="row18">
		            <td class="column0 style17 s">이원도</td>
		            <td class="column1 style17 s">김영호</td>
		            <td class="column2 style17 s">김은자</td>
		            <td class="column3 style17 s">박경환</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style36 s">클럽</td>
		            <td class="column8 style36 s">회장</td>
		            <td class="column9 style36 s">총무</td>
		            <td class="column10 style36 s">클럽</td>
		            <td class="column11 style36 s">회장</td>
		            <td class="column12 style36 s">총무</td>
		          </tr>
		          <tr class="row19">
		            <td class="column0 style17 s">박효경</td>
		            <td class="column1 style17 s">백미나</td>
		            <td class="column2 style17 s">김미량</td>
		            <td class="column3 style17 s">박진수</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">강서클럽</td>
		            <td class="column8 style17 s">전상춘</td>
		            <td class="column9 style17 s">이종섭</td>
		            <td class="column10 style17 s">골드클럽</td>
		            <td class="column11 style17 s">김홍철</td>
		            <td class="column12 style17 s">진정백</td>
		          </tr>
		          <tr class="row20">
		            <td class="column0 style17 s">오희정</td>
		            <td class="column1 style17 s">한상수</td>
		            <td class="column2 style17 s">김제국</td>
		            <td class="column3 style17 s">이희성</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">공항클럽</td>
		            <td class="column8 style17 s">이한이</td>
		            <td class="column9 style17 s">신성희</td>
		            <td class="column10 style17 s">궁산클럽</td>
		            <td class="column11 style17 s">이상기</td>
		            <td class="column12 style17 s">황용원</td>
		          </tr>
		          <tr class="row21">
		            <td class="column0 style17 s">최병철</td>
		            <td class="column1 style17 s">류제일</td>
		            <td class="column2 style17 s">박기형</td>
		            <td class="column3 style17 s">강명숙</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">마곡클럽</td>
		            <td class="column8 style17 s">정진술</td>
		            <td class="column9 style17 s">이상봉</td>
		            <td class="column10 style17 s">발산클럽</td>
		            <td class="column11 style17 s">안상희</td>
		            <td class="column12 style17 s">송인경</td>
		          </tr>
		          <tr class="row22">
		            <td class="column0 style17 s">김민서</td>
		            <td class="column1 style17 s">김상곤</td>
		            <td class="column2 style17 s">김정숙</td>
		            <td class="column3 style17 s">사용웅</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">방화클럽</td>
		            <td class="column8 style17 s">박광준</td>
		            <td class="column9 style17 s">서동식</td>
		            <td class="column10 style17 s">수명클럽</td>
		            <td class="column11 style17 s">김희선</td>
		            <td class="column12 style17 s">강수선</td>
		          </tr>
		          <tr class="row23">
		            <td class="column0 style17 s">이종섭</td>
		            <td class="column1 style17 s">류숙영</td>
		            <td class="column2 style17 s">이선종</td>
		            <td class="column3 style17 s">김시환</td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">수명산클럽</td>
		            <td class="column8 style17 s">최석홍</td>
		            <td class="column9 style17 s">조복곤</td>
		            <td class="column10 style17 s">신정클럽</td>
		            <td class="column11 style17 s">강호용</td>
		            <td class="column12 style17 s">박근홍</td>
		          </tr>
		          <tr class="row24">
		            <td class="column0 style17 s">한상수</td>
		            <td class="column1 style17 null"></td>
		            <td class="column2 style17 null"></td>
		            <td class="column3 style17 null"></td>
		            <td class="column4" colspan="3">&nbsp;</td>
		            <td class="column7 style17 s">아름클럽</td>
		            <td class="column8 style17 s">조성철</td>
		            <td class="column9 style17 s">김준범</td>
		            <td class="column10 style17 s">엠밸리클럽</td>
		            <td class="column11 style17 s">박준락</td>
		            <td class="column12 style17 null"></td>
		          </tr>
		          <tr class="row25">
		            <td class="column0" colspan="7">&nbsp;</td>
		            <td class="column7 style17 s">염창클럽</td>
		            <td class="column8 style17 s">송기옥</td>
		            <td class="column9 style17 null"></td>
		            <td class="column10 style17 s">제일클럽</td>
		            <td class="column11 style17 s">이혜란</td>
		            <td class="column12 style17 s">하태철</td>
		          </tr>
		          <tr class="row26">
		            <td class="column0" colspan="7">&nbsp;</td>
		            <td class="column7 style17 s">하나클럽</td>
		            <td class="column8 style17 s">김대용</td>
		            <td class="column9 style17 s">최서형</td>
		            <td class="column10 style17 s">한강클럽</td>
		            <td class="column11 style17 s">황혜성</td>
		            <td class="column12 style17 s">정지수</td>
		          </tr>
		          <tr class="row27">
		            <td class="column0" colspan="7">&nbsp;</td>
		            <td class="column7 style17 s">한마음클럽</td>
		            <td class="column8 style17 s">류시현</td>
		            <td class="column9 style17 s">박정수</td>
		            <td class="column10 style17 s">한울클럽</td>
		            <td class="column11 style17 s">이정학</td>
		            <td class="column12 style17 s">정성욱</td>
		          </tr>
		          <tr class="row28">
		            <td class="column0" colspan="7">&nbsp;</td>
		            <td class="column7 style17 s">화정클럽</td>
		            <td class="column8 style17 s">허대욱</td>
		            <td class="column9 style17 s">최철성</td>
		            <td class="column10 style17 s">올센클럽</td>
		            <td class="column11 style17 s">장인표</td>
		            <td class="column12 style17 s">김형원</td>
		          </tr>
		    	</table>
			</div>
			<div>
				<div style="height:40px;"></div>
				<h3>임원소개</h3>
				<ul class="nav nav-tabs mainTab">
                    <li class="nav-item nav-link active" href="#tab1" data-bs-toggle="tab">임원</li>
                    <li class="nav-item nav-link" href="#tab2" data-bs-toggle="tab">등기이사 / 감사</li>
                    <li class="nav-item nav-link" href="#tab3" data-bs-toggle="tab">대의원(클럽회장)</li>
                </ul>
                <div class="tab-content">
                <div class="tab-pane active" id="tab1">
				<table class="table table-hover table-bordered tab-list my-5 table-striped" >
					<tr>
						<td>
							<b>직위</b> 협회 회장 <br />
							<b>이름</b> 유충구(등기이사)<br />
							<b>소속</b> 한울클럽
						</td>
						<td>
							<b>직위</b> 고문<br />
							<b>이름</b> 이범우<br />
							<b>소속</b> 하나클럽
						</td>
						<td>
							<b>직위</b> 고문<br />
							<b>이름</b> 박홍례<br />
							<b>소속</b> 하나클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 고문 <br />
							<b>이름</b> 양동준<br />
							<b>소속</b> 골드클럽
						</td>
						<td>
							<b>직위</b> 고문<br />
							<b>이름</b> 최득집<br />
							<b>소속</b> 신정클럽
						</td>
						<td>
							<b>직위</b> 수석자문위원<br />
							<b>이름</b> 김옥균<br />
							<b>소속</b> 화정클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 자문위원 <br />
							<b>이름</b> 김광현<br />
							<b>소속</b> 강서구배드민턴협회
						</td>
						<td>
							<b>직위</b> 자문위원<br />
							<b>이름</b> 김형곤<br />
							<b>소속</b> 발산클럽
						</td>
						<td>
							<b>직위</b> 자문위원<br />
							<b>이름</b> 이순용<br />
							<b>소속</b> 궁산클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 자문위원 <br />
							<b>이름</b> 이계원<br />
							<b>소속</b> 제일클럽
						</td>
						<td>
							<b>직위</b> 협회수석부회장<br />
							<b>이름</b> 김경현 (등기이사)<br />
							<b>소속</b> 강서클럽
						</td>
						<td>
							<b>직위</b> 협회부회장<br />
							<b>이름</b> 김상남<br />
							<b>소속</b> 화정클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 협회부회장 <br />
							<b>이름</b> 박순삼<br />
							<b>소속</b> 하나클럽
						</td>
						<td>
							<b>직위</b> 협회부회장<br />
							<b>이름</b> 홍형락<br />
							<b>소속</b> 수명산클럽
						</td>
						<td>
							<b>직위</b> 협회부회장<br />
							<b>이름</b> 김희선 (겸직)<br />
							<b>소속</b> 수명클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 협회부회장 <br />
							<b>이름</b> 안상희 (겸직)<br />
							<b>소속</b> 발산클럽
						</td>
						<td>
							<b>직위</b> 협회부회장<br />
							<b>이름</b> 이민규<br />
							<b>소속</b> 올센클럽
						</td>
						<td>
							<b>직위</b> 협회부회장<br />
							<b>이름</b> 이승용 (등기이사)<br />
							<b>소속</b> 하나클럽
						</td>
					</tr>
				</table>
				</div>
				<div class="tab-pane" id="tab2">
				<table class="table table-hover table-bordered tab-list my-5 table-striped">
					<tr>
						<td>
							<b>직위</b> 협회 회장 <br />
							<b>이름</b> 유충구(등기이사)<br />
							<b>소속</b> 한울클럽
						</td>
						<td>
							<b>직위</b> 협회수석부회장<br />
							<b>이름</b> 김경현<br />
							<b>소속</b> 강서클럽
						</td>
						<td>
							<b>직위</b> 협회 부회장<br />
							<b>이름</b> 이승용<br />
							<b>소속</b> 하나클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 협회감사 <br />
							<b>이름</b> 박기희<br />
							<b>소속</b> 한울클럽
						</td>
						<td>
							<b>직위</b> 회계사 (외부감사)<br />
							<b>이름</b> 조용준<br />
							<b>소속</b> 나루세무회계컨설팅대표
						</td>
						<td></td>
					</tr>
				</table>
				</div>
				<div class="tab-pane" id="tab3">
				<table class="table table-hover table-bordered tab-list my-5 table-striped" >
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 전상춘<br />
							<b>소속</b> 강서클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 김홍철<br />
							<b>소속</b> 골드클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 이한이<br />
							<b>소속</b> 공항클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 이상기<br />
							<b>소속</b> 궁산클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 정진술<br />
							<b>소속</b> 마곡클럽
						</td>
						<td>
							<b>직위</b> 클럽회장 (부회장겸직)<br />
							<b>이름</b> 안상희<br />
							<b>소속</b> 발산클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 박광준<br />
							<b>소속</b> 방화클럽
						</td>
						<td>
							<b>직위</b> 클럽회장 (부회장겸직)<br />
							<b>이름</b> 김희선<br />
							<b>소속</b> 수명클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 최석홍<br />
							<b>소속</b> 수명산클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 강호용<br />
							<b>소속</b> 신정클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 조성철<br />
							<b>소속</b> 아름클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 박준락<br />
							<b>소속</b> 엠벨리클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 송기옥<br />
							<b>소속</b> 염창클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 이혜란<br />
							<b>소속</b> 제일클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 김대용<br />
							<b>소속</b> 하나클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 황혜성<br />
							<b>소속</b> 한강클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 류시현<br />
							<b>소속</b> 한마음클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 이정학<br />
							<b>소속</b> 한울클럽
						</td>
					</tr>
					<tr>
						<td>
							<b>직위</b> 클럽회장 <br />
							<b>이름</b> 허대욱<br />
							<b>소속</b> 화정클럽
						</td>
						<td>
							<b>직위</b> 클럽회장<br />
							<b>이름</b> 장인표<br />
							<b>소속</b> 올센클럽
						</td>
						<td></td>
					</tr>
				</table>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>