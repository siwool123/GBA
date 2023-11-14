<%@page import="utils.BoardPage"%>
<%@page import="utils.JSFunction"%>
<%@page import="m1notice.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="m1notice.NoticeDAO"%>
<%@page import="membership.MemberDTO"%>
<%@page import="membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String tname = request.getParameter("tname") != null ? request.getParameter("tname") : "";
String UserId = session.getAttribute("UserId") != null ? session.getAttribute("UserId").toString() : "";
MemberDAO mdao = new MemberDAO();
MemberDTO mdto = null;
if(tname != null && UserId != null) {mdto = mdao.viewMember(UserId);}

NoticeDAO dao = new NoticeDAO(); //DAO객체 생성을 통해 DB에 연결한다. 

Map<String, Object> param = new HashMap<String, Object>(); // 검색어가 있는 경우 클라이언트가 선택한 필드명과 검색어를 저장할 Map컬렉션을 생성한다. 

param.put("tname", tname); //현재 게시판에서 사용하는 테이블을 Map컬렉션에 저장*/

/* 검색폼에서 입력한 검색어와 필드명을 파라미터로 받아온다. 해당 <form> 태그의 전송방식은 get, action 속성은 없는 상태이므로 현재 페이지로 폼값이 전송된다. */
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null) {
	/* 클라이언트가 입력한 검색어가 있는경우에만 Map컬렉션에 컬럼명과 검색어를 추가한다. 해당 값은 DB처리를 위한 Model객체로 전달된다. */
  param.put("searchField", searchField);
  param.put("searchWord", searchWord);
}

//Map컬렉션을 인수로 게시물의 갯수를 카운트한다. 
int totalCount = dao.selectCnt(param);

/* #paging관련 코드 추가 start# */

/* web.xml에 설정한 컨텍스트 초기화 파라미터를 읽어온다.
초기화 파라미터는 String으로 저장되므로 산술연산을 위해 int형으로 변환해야한다. */
int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
if(tname.equals("photogallery")||tname.equals("videogallery")) pageSize = 9;
int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));

/* 전체 페이지수를 계산한다. 
(전체게시물의 갯수 / 페이지당 출력할 게시물 갯수) => 결과값의 올림처리
가령 게시물의 갯수가 51개라면 나눴을때 결과가 5.1이된다. 이때 무조건 올림처리하여 6페이지로 설정하게된다. 
만약 totalCount를 double형으로 변환하지 않으면 정수가 결과가 나오게 되므로 5페이지가 된다. 이 부분을 주의해야한다. */ 
int totalPage = (int)Math.ceil((double)totalCount / pageSize); 

/*목록에 처음 진입했을때는 페이지 관련 파라미터가 없는 상태이므로 무조건
1page로 지정한다. 만약 파라미터 pageNum이 있다면 request내장객체를 통해 받아온후 페이지번호로 지정한다.
List.jsp => 이와같이 파라미터가 없는 상태일때는 null
List.jsp?pageNum= => 이와같이 파라미터는 있는데 값이 없을때는 빈값으로체크된다. 따라서 아래 if문은 2개의 조건으로 구성해야한다. */
int pageNum = 1; 
String pageTemp = request.getParameter("pageNum");
if (pageTemp != null && !pageTemp.equals("")) pageNum = Integer.parseInt(pageTemp); 

/*게시물의 구간을 계산한다. 
각 페이지의 시작번호와 종료번호를 현재 페이지 번호와 페이지사이즈를 통해 계산한 후 DAO로 전달하기 위해 Map컬렉션에 추가한다. */
int start = (pageNum - 1) * pageSize;
param.put("start", start);
param.put("pageSize", pageSize);
/* #paging관련 코드 추가 end# */

//목록에 출력할 게시물을 인출하여 반환받는다. 
List<NoticeDTO> boardLists = dao.selectListPage(param);
dao.close(); 
mdao.close(); //DB 자원 해제 
String uri = request.getRequestURI()+"?tname="+tname;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
th {background:#f4f4f4 !important;}
th, td {padding:15px !important;}
<% if(tname != null ){
if(tname.equals("notice") || tname.equals("photogallery") || tname.equals("data") || tname.equals("activity")) { %>
.leftmenu li:nth-child(1), .leftmenu li:nth-child(1) a, .leftmenu li:nth-child(1) a i {background-color: #005bac; color: white;}
<% } else if(tname.equals("freeboard") || tname.equals("videogallery") || tname.equals("perform") || tname.equals("news")) { %>
.leftmenu li:nth-child(2), .leftmenu li:nth-child(2) a, .leftmenu li:nth-child(2) a i {background-color: #005bac; color: white;}
<% } else if(tname.equals("qna")) { %> 
.leftmenu li:nth-child(3), .leftmenu li:nth-child(3) a, .leftmenu li:nth-child(3) a i {background-color: #005bac; color: white;}
<% }} %>
</style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid subvisual"></div>

<div class="container">
	<div class="row">
		<div class="col-sm-2">
<% if(tname != null ){
if(tname.equals("notice") || tname.equals("freeboard") || tname.equals("qna")) { %>
			<%@ include file="../include/leftmenu_community.jsp" %>  
<% } else if(tname.equals("photogallery") || tname.equals("videogallery")) { %>		
			<%@ include file="../include/leftmenu_gallery.jsp" %>
<% } else if(tname.equals("data") || tname.equals("perform")) { %>	
			<%@ include file="../include/leftmenu_data.jsp" %>
<% } else if(tname.equals("activity") || tname.equals("news")) { %>	
			<%@ include file="../include/leftmenu_club.jsp" %>
<% }} %>
		</div>
		<div class="col-sm-10 p-5 mt-3" style="padding-right:0 !important;">
<% if(tname != null && tname.equals("notice")) { %>		
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">공지사항</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  커뮤니티 <span class="sep">></span>공지사항</span>
			</div>
<% } else if(tname != null && tname.equals("freeboard")) { %>
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">자유게시판</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  커뮤니티 <span class="sep">></span>자유게시판</span>
			</div>
<% } else if(tname != null && tname.equals("qna")) { %>
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">Q & A</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  커뮤니티 <span class="sep">></span>Q & A</span>
			</div>
<% } else if(tname != null && tname.equals("photogallery")) { %>
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">포토갤러리</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  갤러리 <span class="sep">></span>포토갤러리</span>
			</div>
<% } else if(tname != null && tname.equals("videogallery")) { %>		
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">영상갤러리</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  갤러리 <span class="sep">></span>영상갤러리</span>
			</div>
<% } else if(tname != null && tname.equals("data")) { %>	
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">협회운영자료</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  자료실 <span class="sep">></span>협회운영자료</span>
			</div>
<% } else if(tname != null && tname.equals("perform")) { %>	
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">운영실적</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  자료실 <span class="sep">></span>운영실적</span>
			</div>
<% } else if(tname != null && tname.equals("activity")) { %>
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">소속클럽현황</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  클럽소개 <span class="sep">></span>소속클럽현황</span>
			</div>
<% } else if(tname != null && tname.equals("news")) { %>		
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">클럽소식</b> 
				<span style="float:right !important;">
				<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>  클럽소개 <span class="sep">></span>클럽소식</span>
			</div>
<% } %>			
			<div>
			<div class="py-5" style="background-color:#f4f4f4; padding:0 120px; font-size:16px;">
				<form method="get" >
					<input type="hidden" name="tname" value="<%= tname %>" />
					<select name="searchField" style="height:40px; width:20%;padding-left:10px;">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="searchWord" placeholder="검색어를 입력하세요." style="border:1px solid #e3e3e3; height:40px; width:65%;padding-left:10px; margin:0 10px;" />
					<button type="submit" style="width:10%; height:40px; background-color:#005bac; border:none;"><i style="color:white;" class="fa-solid fa-magnifying-glass"></i></button>
				</form>
			</div>
<!-- 포토갤러리, 이미지개럴리의 경우 리스트 레이아웃 다르게 출력 3x3 -->
<ul class="boardList" width="100%" style="height:460px; margin:20px 0; border-bottom:1px solid #e2e3e5;">
<% if(tname != null && (tname.equals("photogallery") || tname.equals("videogallery"))) { 
	if(boardLists.isEmpty()){ %>	
		<div align="center">등록된 게시물이 없습니다.</div>
	<% }else{
		int virtualNum = 0;
		int countNum = 0;
		for(NoticeDTO dto : boardLists){
			virtualNum = totalCount-((pageNum-1)*pageSize+countNum++); %>
	<li style="float:left; border:1px solid #d1d1d1; width:240px; height:160px;">
	<a href="sub01_view.jsp?tname=<%=tname %>&idx=<%= dto.getIdx()%>">
		<img src="../Uploads/<%= dto.getSfile() %>" />
	    <div style="padding: 18px 10px;">
	    	<div style="line-height: 24px; font-size: 18px; margin-bottom:20px;"><%= JSFunction.titleCut(dto.getTitle(), 16) %></div>
			<div style="color:grey;">
			<span><i class="fa-solid fa-user"></i>&nbsp;&nbsp;<%= dto.getName() %></span> 
			<span style="float: right;"><%= dto.getPostdate() %></span>
			</div>
	    </div>
	</a></li>
	<% } } %>
	</ul>
<%} else { %>
<table class="table table-hover">
   <thead>
     <tr align="center">
       <th width="10%">번호</th>
       <th width="42%">제목</th>
       <th width="15%">작성자</th>
       <th width="15%">작성일</th>
       <th width="10%">조회수</th>
       <th width="8%">첨부</th>
     </tr>
   </thead>
   <tbody>
<% if(boardLists.isEmpty()){ %>	
	<tr><td colspan="6" align="center">등록된 게시물이 없습니다.</td></tr>
<% }else{
	int virtualNum = 0;
	int countNum = 0;
	for(NoticeDTO dto : boardLists){
		virtualNum = totalCount-((pageNum-1)*pageSize+countNum++); %>
     <tr>
       <td align="center">
	 <% if(dto.getNotice()==1){ %>      
	       <i class="bi bi-volume-up-fill" style="color:grey;"></i>
	<% } else { %>
	<%= virtualNum %>
	<% } %>
       </td>
       <td align="left"><a href="view.jsp?tname=<%=tname %>&idx=<%= dto.getIdx()%>"><%= JSFunction.titleCut(dto.getTitle(), 25)  %></a></td>
       <td align="center"><%= dto.getName() %></td>
       <td align="center"><%= dto.getPostdate() %></td>
       <td align="center"><%= dto.getVisitcnt() %></td>
       <td align="center">
		<% if(dto.getOfile()!=null) { %>
			<a href="down.jsp?tname=<%= tname %>&idx=<%= dto.getIdx()%>&ofile=<%= dto.getOfile() %>&sfile=<%= dto.getSfile() %>"><i class="fa-solid fa-paperclip"></i></a>
		<% } %>
		</td>
     </tr>
<% } } %>
   </tbody>
</table>
<%} %>
<table width="100%">
	<tr>
		<td width="20%">총 <%= totalCount %> 개   [ <%= pageNum %> / <%= totalPage %> 페이지 ]</td>
		<td width="*" class="text-center">
		<%= BoardPage.pagingImg(totalCount, pageSize, blockPage, pageNum, uri) %>
		</td>
		<td width="15%" align="right">
<% if(mdto != null && tname != null && (tname.equals("notice") && mdto.getGrade()==1 || tname.equals("freeboard")&& mdto.getGrade()>=1|| tname.equals("qna")&& mdto.getGrade()>=1|| 
tname.equals("photogallery") && mdto.getGrade()==1 || tname.equals("videogallery")&& mdto.getGrade()==1 || tname.equals("data")&& mdto.getGrade()==1 || 
tname.equals("perform")&& mdto.getGrade()==1 || tname.equals("activity")&& mdto.getGrade()==1 || tname.equals("news")&& mdto.getGrade()==1 )){ %>		
		<button type="button" class="btnb" onclick="location.href='write.jsp?tname=<%=tname %>';" >글쓰기</button>
<% } %>
		</td>
	</tr>
</table>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>