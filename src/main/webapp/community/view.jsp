<%@page import="fileupload.FileDTO"%>
<%@page import="fileupload.FileDAO"%>
<%@page import="java.util.Arrays"%>
<%@page import="m1notice.CommentDTO"%>
<%@page import="m1notice.CommentDAO"%>
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
int idx = Integer.parseInt(request.getParameter("idx"));
MemberDAO mdao = new MemberDAO();
MemberDTO mdto = null;
if(tname != null && UserId != null) {mdto = mdao.viewMember(UserId);}

NoticeDAO dao = new NoticeDAO(); //DAO객체 생성을 통해 DB에 연결한다. 
dao.plusCnt(idx, tname, "visitcnt"); //조회수1증가

int[] maxmin = new int[2];
maxmin = dao.maxmin(tname); //게시글번호 최대값, 최소값을 배열로 받아온다
int prevIdx = dao.previousIdx(idx, tname); //이전 게시글 제목과 링크 달기위해 게시글번호 받아오기
int nextIdx = dao.nextIdx(idx, tname); //다음게시글번호 받아오기
NoticeDTO dto = dao.view(idx, tname); //현재게시물dto 받아오기
NoticeDTO pdto = dao.view(prevIdx, tname); //이전게시물dto받아오기
NoticeDTO ndto = dao.view(nextIdx, tname); //다음게시물dto받아오기
dao.close();
mdao.close();

CommentDAO cdao = new CommentDAO();
FileDAO fdao = new FileDAO();
List<CommentDTO> commentLists = cdao.selectList(tname, idx); //해당게시물의 답변목록 받아오기
List<FileDTO> fileLists = fdao.fileList(idx); //첨부파일 목록 받아오기
cdao.close();
fdao.close();
//첨부파일 확장자 추출 및 이미지 타입 확인
String[] imgStr = {"png", "jpg", "gif", "jpeg"};
List<String> imgList = Arrays.asList(imgStr);
for(FileDTO fdto : fileLists) {
	String ext = "", fileName = fdto.getSfile();
	if(fileName!=null) ext = fileName.substring(fileName.lastIndexOf(".")+1);		
	if(imgList.contains(ext)) fdto.isimage = true; //첨부파일이 이미지이면 본문에 표시
}
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
<% } %>
</style>
<script type="text/javascript">
//게시물삭제위한js함수 > confirm함수는 대화창에서 예 클릭시 true반환된다.
/* form 태그의 name속성통해 DOM을 얻어온다.> 전송방식과 전송경로를 지정한다 > submit 함수로 폼값전송 > 폼태그하위의 hidden타입설정된 일련번호전송 */
function validateForm(form) { 
    if (form.content.value == "") {
        alert("답글 내용을 입력하세요.");
        form.content.focus();
        return false;
    }
}
function deletePost() {
    if (confirm("정말로 삭제하시겠습니까?")) {
        var form = document.viewFrm;
        form.method = "post";
        form.action = "DeleteProcess.jsp?tname=<%=tname%>&idx=<%=idx%>";
        form.submit();
    }
}
$(function () {
	$(".editComment").click(function(){ //답글수정시 답글작성폼 숨겨지고 답글수정폼 표시됨
		$(this).hide();
		$(this).next().hide();
		$(this).parent().parent().next().hide();
		$(this).parent().parent().next().next().show();
	});
	$('.boardLike').click(function(){
		alert("게시글 좋아요 1 증가");
		$(this).css('color', 'red');
		let params = {idx:$('#idx').val()};
		$.post('LikeProcess.jsp?tname=<%= tname %>', params, function(resD){
			console.log('콜백데이터', resD);
			let plusCnt = parseInt($('.blikecnt').html())+1;
			$('.blikecnt').html(plusCnt);
		});
	});
	$('.commentLike').click(function(){
		alert("답글 좋아요 1 증가");
		$(this).css('color', 'red');
		let commentId = $(this).data('cidx'), sid = $('span').data('cidx'); 
		// 클릭된 버튼의 data-cidx 속성을 통해 답글 ID를 가져옵니다. > 나머지 코드는 답글 ID를 사용하여 클릭된 버튼과 관련된 답글의 좋아요 숫자를 업데이트합니다.
		let likeCnt = $(this).next(), likeCnt2 = parseInt($(this).next().text()); // 현재 좋아요 숫자를 가져옵니다.
	    likeCnt.text(likeCnt2+1);
		var params = {comment_idx:commentId};
		$.post('ReviewLike.jsp', params, function(resD){
			console.log('commentId값, cnt값', commentId, likeCnt2);
		});
	});
	$('#content1').keyup(function(){
		$('#ccount').html($(this).val().length);
		if($(this).val().length>400){
			alert("내용을 400자 이내로 입력해주세요.");
			$(this).val($(this).val().substring(0,400));
		}
	});
});
</script>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid subvisual"></div>
<div class="container">
	<div class="row">
		<div class="col-sm-2">

<% if(tname != null) {
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
<table class="table">
<thead><tr><th colspan="5">
	<% if(dto.getNotice()==1){ %>      
	       <i class="bi bi-volume-up-fill" style="color:grey;"></i>
	<% } %>
<h5><%= dto.getTitle() %></h5></th></tr></thead>
<tbody>
	<tr>
		<td style="width:20%;"><span class="column"> 작성자</span> <%= dto.getName() %></td>
		<td style="width:20%;"> <%= dto.getPostdate() %></td>
		<td style="width:20%;"><span class="column">조회수 </span> <%= dto.getVisitcnt() %></td>
		<td style="width:20%;"><span class="column">작성번호 </span> <%= dto.getIdx() %></td>
		<td style="width:20%;" align="right"><span class="column">좋아요 </span><i class="fa-solid fa-heart boardLike"></i> <span class="blikecnt"> <%= dto.getLikecnt() %></span></td>
	</tr>
	<tr>
		<td colspan="5">
		<div class="mt-5 mb-5"> <%= dto.getContent().replace("\r\n", "<br/>") %></div>
		<% if(!fileLists.isEmpty()){
			for(FileDTO fdto : fileLists){
				if(fdto.isimage) { %>
			<p class="text-center mt-5"><img src="../Uploads/<%= fdto.getSfile() %>" style="max-width:100%" /></p>
		<% }}} %>
		</td>
	</tr>
	<tr>
		<td colspan="5">
<% if(!fileLists.isEmpty()){
	for(FileDTO fdto : fileLists){ %>
			<i class="fa-solid fa-paperclip"></i>
			<a href="down.jsp?tname=<%= tname %>&bidx=<%= fdto.getBidx()%>&fidx=<%= fdto.getFidx()%>&ofile=<%= fdto.getOfile() %>&sfile=<%= fdto.getSfile() %>"><%= fdto.getOfile() %></a><br />
		<% }} %>
		</td>
	</tr>
</tbody>
</table>
<!-- 답글목록출력 (답변작성자 본인에게만 수정,삭제버튼 표시 > 수정 클릭시 기존답글 숨겨지고 그내용입력된 textarea창과 작성완료버튼 표시됨) -->
<div><i class="bi bi-chat-left-text"></i> 답글 <%= commentLists!=null? commentLists.size() : 0 %></div>
<table class="table table-borderless comment" width="90%">
<% if(!commentLists.isEmpty()){%>
	<% for(CommentDTO cdto : commentLists){ %>
	<tr>
		<td width="8%"><i class="fa-solid fa-face-smile" style="font-size:40px; color:grey;"></i></td>
		<td width="64%"><%= cdto.getName() %> <span style="color:gray; margin-left:20px;"><%= cdto.getPostdate() %></span>
	<% if(cdto.getName().equals(mdto.getName())){ %>
<button class="editComment" class="hideContent btnb">수정</button>&nbsp;
<form name="commentDelFm" method="post" action="CommentDelete.jsp" style="display:inline;">
<input type="hidden" name="cidx" id="cidx"  value="<%= cdto.getCidx() %>" />	
<input type="hidden" name="idx" value="<%= idx %>" />
		<button type="submit" onclick="confirm("정말로 리뷰를 삭제하시겠습니까?");" class="hideContent btnb">삭제</button>
</form>	
	<% } %>
		</td>
		<td align="right">좋아요 <i class="fa-solid fa-heart commentLike" data-cidx="<%= cdto.getCidx() %>"></i> 
		<span class="clikecnt" data-cidx="<%= cdto.getCidx() %>"><%= cdto.getLikecnt() %></span>
		<input type="hidden" name="cidx" id="cidx"  value="<%= cdto.getCidx() %>" />
		</td>
	</tr>
	<tr class="border-bottom" class="hideCon" data-cidx="<%= cdto.getCidx() %>">
		<td></td>
		<td colspan="2" class="hideCon" data-cidx="<%= cdto.getCidx() %>"><%= cdto.getContent().replace("\r\n", "<br/>") %><br /><br />
		<% String ext2 = "", fileName2 = cdto.getSfile(); //첨부파일 확장자 추출 및 이미지 타입 확인
		boolean isImage2 = false;
		if(fileName2!=null) ext2 = fileName2.substring(fileName2.lastIndexOf(".")+1);
		if(Arrays.asList("png", "jpg", "gif", "jpeg").contains(ext2)) isImage2 = true; //답글첨부파일이 이미지이면 본문에 표시
		if(cdto.getOfile()!=null && isImage2==true) { %>
		<img src="../Uploads/<%= cdto.getSfile() %>" style="max-width:300px;margin-bottom:20px;" />
		<% } %>
		</td>
	</tr>
<!-- 답글수정폼 -->	
<tr style="display:none;" class="unhide" class="border-bottom" data-cidx="<%= cdto.getCidx() %>"><td colspan="3"> 답글수정 </td></tr>
<tr style="display:none;" class="unhide" class="border-bottom" data-cidx="<%= cdto.getCidx() %>">
<form name="commentEditFrm" method="post" action="CommentEdit.jsp?tname=<%= tname %>"  data-cidx="<%= cdto.getCidx() %>" enctype="multipart/form-data" multiple>
<input type="hidden" name="cidx" value="<%= cdto.getCidx() %>" />
<input type="hidden" name="idx" value="<%= idx %>" />
<input type="hidden" name="prevROfile" value="<%= cdto.getOfile() %>" />
<input type="hidden" name="prevRSfile" value="<%= cdto.getSfile() %>" />
		<td width="8%"></td>
		<td><textarea name="content" style="width:100%;height:100px;padding:10px;"><%= cdto.getContent() %></textarea><br/>
		<% String ext3="", fileName3 = cdto.getSfile(); //첨부파일 확장자 추출 및 이미지 타입 확인
		if(fileName3!=null) ext3 = fileName3.substring(fileName3.lastIndexOf(".")+1);
		boolean isImage3 = false;
		if(imgList.contains(ext3)) isImage3 = true; //리뷰에 첨부이미지 있으면 본문에 표시
		if(cdto.getOfile()!=null && isImage3==true) { %>
		<img src="../Uploads/<%= cdto.getSfile() %>" style="max-width:100px;margin-top:20px;" />
		<% } %>
		<input type="file" name="cofile" id="cofile" multiple class="form-control form-control-sm" accept=".jpg, .png, .gif, .jpeg" /><br/>
		<div>개별 파일 용량은 1MB까지, 총 5MB 까지 파일 업로드 가능합니다.</div>
		</td>
		<td align="right"><button type="submit" class="btnb">수정완료</button></td>
</form>
</tr>
<% }} %>
</table>
<!-- 답변작성폼 -->
<form name="commentFrm" method="post" action="CommentWrite.jsp?tname=<%= tname %>&idx=<%=idx%>" onsubmit="return validateForm(this);" enctype="multipart/form-data" multiple>
<div class="text-center bg-dark" style="color:white;line-height:26px;width:100%;" >답글작성</div>
<table class="table comment">
<tr>
	<td width="5%" class="pt-4"><i class="fa-solid fa-face-smile" style="font-size:40px; color:grey;"></i></td>
	<td class="py-4"><textarea name="content" style="width:100%;height:100px;padding:10px;" id="content1"></textarea><br/><br/>
	<input type="file" name="rofile" id="rofile" multiple class="form-control form-control-sm" accept=".jpg, .png, .gif" />
	<div>첨부 이미지 : 개별 파일 용량은 3MB까지이며, .jpg, .jpeg, .png, .gif 파일만 업로드 가능합니다.</div>
	</td>
	<td align="right" width="15%" class="pt-4"><button type="submit" class="btnb">답글입력</button><br /><br /><span id="ccount">0</span> / 400</td>
</tr>
</table>
</form>
<!-- 이전/다음페이지 타이틀및링크, 수정,삭제,목록 버튼 표시 테이블 -->
<table class="table table-borderless">
	<colgroup>
	    <col width="33%">
	    <col width="33%">
	    <col width="33%">
  	</colgroup>
	<tr align="center">
		<td align="left">
<% if(idx<maxmin[0]){ %>
		<a href="view.jsp?tname=<%= tname %>&idx=<%= prevIdx %>"><i class="fa fa-angle-left"></i> 
		<%= JSFunction.titleCut(pdto.getTitle(), 16) %></a>
<% } %>
		</td>
		<td align="center">
		<form name="viewFrm"><input type="hidden" name="idx" value="<%= idx %>" />
		<button type="button" class="btnb" onclick="location.href='list.jsp?tname=<%= tname %>';">목록보기</button>
	<% if(dto.getName().equals(mdto.getName())){ %>
		<button type="button" class="btnb" onclick="location.href='edit.jsp?tname=<%= tname %>&idx=<%= idx %>';">수정하기</button>
		<!-- 삭제버튼누르면 js함수 호출. 해당함수는 submit()통해 폼값을서버로전송 -->
		<button type="button" onclick="deletePost();">삭제하기</button>
		</form> 
	<%	} %>
		</td>
		<td align="right">
<% if(idx>maxmin[1]){ %>
		<a href="view.jsp?tname=<%= tname %>&idx=<%= nextIdx %>"><%= JSFunction.titleCut(ndto.getTitle(), 16) %> <i class="fa fa-angle-right"></i></a> 
<% } %>
		</td>
	</tr>
</table>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>