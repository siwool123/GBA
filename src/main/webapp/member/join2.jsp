<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강서구배드민턴협회</title>
<style>
.leftmenu li:nth-child(2), .leftmenu li:nth-child(2) a, .leftmenu li:nth-child(2) a i {background-color: #005bac; color: white;}
.frmbtn {width:200px; height:47px; font-size:16px; font-weight:bold; margin-right:10px;}
input, select {border:1px solid #dddddd; height:30px; padding-left:10px; margin-left:10px; outline:none;}
.red {color:red; font-weight:bolder; margin: 0 10px; }
.span1 {color:#b0b0b0;}
.btnb:hover {color:white;}
</style>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//다음 주소 api
function postOpen() {
    new daum.Postcode({
        oncomplete: function (data) {
            console.log(data);
            console.log(data.zonecode);
            console.log(data.address);

            let frm = document.registF;
            frm.zip.value = data.zonecode;
            frm.addr1.value = data.address;
            frm.addr2.focus();
        }
    }).open();
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
			<div style="border-bottom:1px solid black;padding-bottom:10px;"><b style="font-size:28px;">회원가입</b> 
			<span style="float:right !important;">
			<i class="bi bi-house-door-fill" style="font-size:18px; color:#dddddd"></i> <span class="sep">></span>멤버십<span class="sep">></span>회원가입</span>
			</div>	
			<p class="mt-5 mb-5" style="font-size:16px;">회원정보입력 : 회원님의 개인정보를 안전하게 보호하고 있으며, 회원님의 명백한 동의 없이는 공개 또는 제3자에게 제공되지 않습니다.</p>
			<form name="registF" action="registAction.jsp" method="post" onsubmit="return jvalidate(this);">
              <table class="userTable m-5">
                  <tr style="border-top: 2px solid grey;">
                      <td class="userTit" style="width:25%"><b class="red">*</b>회원명</td>
                      <td class="userVal" style="width:75%">
                          <input type="text" name="name" value="" size="40" maxlength="10" />
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b> 아이디</td>
                      <td class="userVal">
                          <input type="text" name="id" id="id" value="" maxlength="12" size="40" />
                          &nbsp;<span class="span1">&nbsp;&nbsp;&nbsp;* 8~12자리로 영문/숫자 조합</span>
                          <div id="idResult" class="mt-2 mb-2"></div>
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b>비밀번호</td>
                      <td class="userVal">
                          <input type="password" name="pw1" value="" size="40" maxlength="12" />
                          <span class="span1">&nbsp;&nbsp;&nbsp; * 8~12자리로 영문/숫자 조합</span>
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b>비밀번호 확인</td>
                      <td class="userVal">
                          <input type="password" name="pw2" value="" size="40" maxlength="12" />
                          &nbsp;&nbsp;&nbsp;<span id="pwResult"></span>
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b>생년월일</td>
                      <td class="userVal"><input type="date" name="birth" value="" size="40" />
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b>휴대폰번호</td>
                      <td class="userVal">
                          <select name="tel1" id="tel1" class="userSelect" style="width:120px; onkeyup="focusMove('tel1','tel2',3);">
                              <option value="010" selected>010</option>
                              <option value="011">02</option>
                              <option value="016">080</option>
                              <option value="017">031</option>
                              <option value="018">032</option>
                          </select>
                          <input type="tel" name="tel2" id="tel2" value="" maxlength="4" size="8" onkeyup="focusMove('tel2','tel3',4);" />
                          <input type="tel" name="tel3" id="tel3" value="" maxlength="4" size="8" onkeyup="focusMove('tel3','email1',4);" />
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b> 이메일</td>
                      <td class="userVal">
                          <input type="text" name="email1" value="" size="17" />
                          <span style="margin-right: 5px;">＠</span>
                          <input type="text" name="email2" value="" size="17" />
                          <select name="email_domain" onchange="inputEmail(this.form);" style="width: 134px;">
                              <option value="직접입력" selected>직접입력</option>
                              <option value="naver.com">naver.com</option>
                              <option value="nate.com">nate.com</option>
                              <option value="gmail.com">gmail.com</option>
                              <option value="daum.net">daum.net</option>
                              <option value="hanmail.net">hanmail.net</option>
                          </select>
                      </td>
                  </tr>
                  <tr>
                      <td class="userTit"><b class="red">*</b> 주소</td>
                      <td class="userVal">
                          <input type="text" placeholder="우편번호" name="zip" maxlength="5" value=""
                              style="background-color: #f1f1f1;" />
                          <a class="btnb py-2" onclick="postOpen();">검색</a>
                          <br><input type="text" style="margin:5px 6px 5px 0; background-color: #f1f1f1;"
                              name="addr1" maxlength="30" size="40" value="" />
                          <input type="text" name="addr2" maxlength="20" size="30" value="" />
                      </td>
                  <tr>
              </table>
            <div class="text-center">
			<input type="submit" value="확인" class="btnb mt-3 frmbtn" />
			<input type="reset" value="취소" class="btnw mt-3 frmbtn" />
			</div>
		</form>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
 </body>
</html>
