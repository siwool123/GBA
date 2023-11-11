<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(2), .leftmenu li:nth-child(2) a, .leftmenu li:nth-child(2) a i {background-color: #005bac; color: white;}
h3 {color:#005bac !important; font-weight:bolder !important; margin-top:30px !important; border-left:8px solid #005bac; padding-left:10px;}
#vision li {margin:40px 0 !important; font-size:17px; line-height:40px;}
.mainTab li {width:50%; text-align:center; font-weight:bolder; color:#d5d5d5; border-radius: 0 !important; padding:10px;}
.mainTab li.active {background-color:#005bac !important; color:white !important; }
.mainTab li:not(.mainTab .active) {border-bottom: 1px solid silver;}
.tab-pane ul li {margin:20px 0 !important; font-size:17px; line-height:30px;}
blockquote:before {content: "\201C"; font-size: 3em; font-family: Georgia; color: #bcbcbc; margin-right: 10px;}
blockquote:after {content: "\201D"; font-size: 3em; font-family: Georgia; color: #bcbcbc; margin-left: 10px;}
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">협회개요</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  협회소개 <span class="sep">></span> 협회개요</span>
			</div>
			<div class="p-5">
				<h3>협회 슬로건</h3>
				<blockquote style="background-color:#ededed; font-size:17px; font-weight:bolder; text-align:center; padding:10px 0 30px 0; margin:30px 0 90px 0;">건강을 더하고 기쁨을 나누는 서울특별시강서구배드민턴협회</blockquote>
				<h3>설립취지</h3>
				<ul id="vision" style="margin-bottom:80px;">
					<li>강서구내 배드민턴 동호인를 중심으로 각 구역별 20여개의 클럽이 
현재 사단법인 서울특별시강서구배드민턴협회에 가입되어있어  배드민턴 동호인의 건강과 체력 증진을 위하여 자발적이고 일상적인 체육활동을 하고 있습니다.
					<br /> </li>
					<li>서울특별시강서구배드민턴협회는 공익을 목적으로 한 체육 단체로서 배드민턴 동호인의 생활체육에 관한 활동의 방향을 제시하며, 각종 대회개최 및 클럽간의 소통 등을 하고 있으나 변화하는 시대에 발맞추고 앞으로의 생활체육 수요에 부응하는 저변확대와 자생력을 확보하고 각 클럽의 활성화 따른 재정지원을 위해서  배드민턴 생활체육에 관한 사업을 목적으로 하는 비영리 사단법인 설립이 꼭 필요하여 계획하게 되었습니다.
					<br /></li>
					<li>그리고 서울시 및 구청의 지원금으로 유소년 지원은 물론 강서구의 배드민턴 활성화에 최선의 노력을 다할것이며  기업이나 단체로부터 각종 협찬 및 기부를 공익적 목적으로 받아 
생활체육의 배드민턴 활성화에 공공성과 투명성,재정확보로 건강한 사업경영을 이루어 나갈것입니다.</li>
				</ul>
				
				<h3>사업내용</h3>
				<ul class="nav nav-tabs mainTab my-5">
                    <li class="nav-item nav-link active" href="#tab1" data-bs-toggle="tab">주요사업 목표</li>
                    <li class="nav-item nav-link" href="#tab2" data-bs-toggle="tab">주요대회</li>
                </ul>
                <div class="tab-content">
                <div class="tab-pane active" id="tab1">
                <ul>
                	<li>가. 강서구민 및 동호인 대상 배드민턴 대회 개최 및 주관과 국내외 배드민턴 단체 교류</li>
                	<li>나. 강서구 공공시설  배드민턴  관리, 운영</li>
                	<li>다. 강서구내 의료기관과 업무 협약 및 기부를 받아 배드민턴 동호인의 건강과 관련된 권익증진에 힘쓰며 사회적 기업들의 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 다양한 형태의 기부를 지원받아 기부금과 기부용품 일부를 지역에 기부하고 재정이 어려운 클럽등을 돕는다</li>
                	<li>라. 강서구 협회 미가입 클럽 가입 유치 및 기존클럽 신규 회원 유치</li>
                	<li>마. 배드민턴대회 개최 수익금 및 다목적체육관 위탁 운영 수익, 클럽  가입비의 수익 사업</li>
                </ul>
                <div class="text-center my-5"><img src="../images/vision.png" /></div>
                </div>
				<div class="tab-pane" id="tab2">
				<ul>
					<li>매년 서울특별시강서구배드민턴협회에서 주최하는 협회장기배드민턴대회 , 구청장기배드민턴대회, 3 : 3배드민턴대회, 한국건강관리협회장배 배드민턴대회 , 
각종 사대회에 강서구 배드민턴 동호인들이 모여 기량을 뽐내며 시합에 참여하고 모든 클럽이 한자리에 모여 화합과 교류의장이 열리는 지역축제로 자리매김 하였습니다.</li>
					<li>각종 대회에는 강서구청장을 비롯하여 지역구 국회의원 , 체육회임원 등등 내빈들도 함께 하시며 자리를 빛내주십니다.</li>
					<li>또한 서울시 배드민턴 협회와도 협력하여 일년에 여러차례 서울시 배드민턴협회에서 주최하는 서울시대회에 강서구 배드민턴 동호인들이 다수 출전하여 우수한 성적으로 입상하며 서울시내에 넘버원 강서구로 발전중에 있습니다.</li>
				</ul>
				</div>                
                </div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>