document.addEventListener('DOMContentLoaded', function () {
    var swiper1 = new Swiper('.swiper-container', {
        slidesPerView: 4, // 한 번에 보여지는 슬라이드 개수
        spaceBetween: 10, // 슬라이드 사이의 간격 (픽셀)
        navigation: {
            nextEl: '.bi-chevron-right', // 다음 버튼 클래스명
            prevEl: '.bi-chevron-left', // 이전 버튼 클래스명
        },
        autoplay: {
        delay: 3000,
        disableOnInteraction: false, // 사용자와의 상호작용이 있을 때 자동 이동 중지하지 않음
    	},
    	//speed:5000,
    	loop: true, // 무한 루프 활성화
    	loopAdditionalSlides: 1,
    });
    
     var swiper2 = new Swiper('.swiper-container', {
        slidesPerView: 4, // 한 번에 보여지는 슬라이드 개수
        spaceBetween: 10, // 슬라이드 사이의 간격 (픽셀)
        navigation: {
            nextEl: '.photoright', // 다음 버튼 클래스명
            prevEl: '.photoleft', // 이전 버튼 클래스명
        },
        autoplay: {
        delay: 3000,
        disableOnInteraction: false, // 사용자와의 상호작용이 있을 때 자동 이동 중지하지 않음
    	},
    	//speed:5000,
    	loop: true, // 무한 루프 활성화
    	loopAdditionalSlides: 1,
    });
});

$(function () {
    // 메인메뉴 열기버튼
    $("#mynavbar ul li, .cate3").mouseover(function () {
        $(".cate3").css("display", "block");
    });
    $("#mynavbar ul li, .cate3").mouseout(function () {
        $(".cate3").css("display", "none");
    });
    $("ul.m1 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m1").css("border-bottom", "3px solid #005bac");
    });
    $("ul.m2 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m2").css("border-bottom", "3px solid #005bac");
    });
    $("ul.m3 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m3").css("border-bottom", "3px solid #005bac");
    });
    $("ul.m4 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m4").css("border-bottom", "3px solid #005bac");
    });
    $("ul.m5 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m5").css("border-bottom", "3px solid #005bac");
    });
    $("ul.m6 li").mouseover(function () {
		$("#mynavbar ul li").css("border", "none");
        $("li.m6").css("border-bottom", "3px solid #005bac");
    });
    
    // pageTop 버튼
//    $(window).scroll(function () {
//        if ($(this).scrollTop() > 200) $('#ptop').fadeIn();
//        else $('#ptop').fadeOut();
//    });
//    $("#ptop").click(function() { 
//		$('html, body').animate({ scrollTop : 0 }, 1000); // 속도 400 return false; 
//	}); 

    // 약관동의 전부 선택
    $("#chkAll").click(function () {
        if ($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
        else $("input[name=chk]").prop("checked", false);
    });
    $("input[name=chk]").click(function () {
        var total = $("input[name=chk]").length;
        var checked = $("input[name=chk]:checked").length;
        if (total != checked) $("#chkAll").prop("checked", false);
        else $("#chkAll").prop("checked", true);
    });
    $("#chkAll2").click(function () {
        if ($("#chkAll2").is(":checked")) $("input[name=chk2]").prop("checked", true);
        else $("input[name=chk2]").prop("checked", false);
    });
    $("input[name=chk2]").click(function () {
        var total = $("input[name=chk2]").length;
        var checked = $("input[name=chk2]:checked").length;
        if (total != checked) $("#chkAll2").prop("checked", false);
        else $("#chkAll2").prop("checked", true);
    });
    $("#chkAll3").click(function () {
        if ($("#chkAll3").is(":checked")) $("input[name=chk3]").prop("checked", true);
        else $("input[name=chk3]").prop("checked", false);
    });
    $("input[name=chk3]").click(function () {
        var total = $("input[name=chk3]").length;
        var checked = $("input[name=chk3]:checked").length;
        if (total != checked) $("#chkAll3").prop("checked", false);
        else $("#chkAll3").prop("checked", true);
    });
    // 숫자만 입력
    $(".number").keyup(function () {
        if (isNaN($(this).val()) == true) $(this).val('');
    });
    // 파일업로드
    $("#fileInput").on('change', function () {  // 값이 변경되면
        if (window.FileReader) {  // modern browser
            var filename = $(this)[0].files[0].name;
        } else {  // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop();//파일명만 추출
        }
        // 추출한 파일명 삽입
        $("#userfile").val(filename);
    });
    // 공지사항.faq 페이지 넘기기 
    $(".pageno").click(function () {
        $(".active1").removeClass("active1");
        $(this).addClass("active1");
    });
    $(".page-link:last").click(function () {
        if ($(".active1").text() == $(".pageno").length) {
            alert("마지막 페이지입니다.");
            return;
        }
        $(".active1").removeClass("active1").next().addClass("active1");
    });

    $(".fa-angle-left").click(function () {
        if ($(".active1").text() == 1) {
            alert("첫번째 페이지입니다.");
            return;
        }
        $(".active1").removeClass("active1").prev().addClass("active1");
    });

    $(".fa-angles-right").click(function () {
        $(".active1").removeClass("active1");
        $(".pageno:last").addClass("active1");
    });
    $(".fa-angles-left").click(function () {
        $(".active1").removeClass("active1");
        $(".pageno:first").addClass("active1");
    });
    // id 중복확인결과출력
    $("#idSearch").click(function () {
        let idVal = $("input[name=id]").val();
        for (var i = 0; i < idVal.length; i++) {
            if (idVal.length >= 6 && idVal.length <= 20 && isNaN(idVal.charAt(0)) == true) {
                $("#idResult").text("사용가능한 아이디입니다.");
                $("input[name=id]").prop('readonly', true);
            }
        }
    });
    var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/g;
    $("input[name=id]").keyup(function () {
        if (regExp.test($(this).val())) {
            $("input[name=id]").val('');
        }
    });
    //콤마찍기
    function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }
    // 상품상세페이지 가격 계산
    var num = 1, tprice = 15120;
    $("#plus").click(function () {
        num++;
        tprice += 15120;
        $("#bookNum").val(num);
        $("#total").text(comma(tprice));
    });
    $("#minus").click(function () {
        num--;
        tprice -= 15120;
        $("#bookNum").val(num);
        $("#total").text(comma(tprice));
        if (num == 1) $(this).attr("disabled", true);
    });
    $('.tab1 li:first a').click(function () {
        var section11 = $('.anchor1').offset().top;
        $('html, body').animate({ scrollTop: section11 }, 1000);
    });

    $('.tab1 li:even a').click(function () {
        var section22 = $('.anchor2').offset().top;
        $('html, body').animate({ scrollTop: section22 }, 1000);
    });
    $('.tab1 li:last a').click(function () {
        var section33 = $('.anchor3').offset().top;
        $('html, body').animate({ scrollTop: section33 }, 1000);
    });
    // 리뷰 상세보기 토글
    $(".moreBtn").click(function () {
        $(".thumbnail").toggle();
        $(".reviewH").toggle();
        $(this).children('i').toggleClass('fa-square-plus').toggleClass('fa-square-minus');
        if ($(this).children('span').text() == '펼치기') $(this).children('span').text('접기');
        else $(this).children('span').text('펼치기');
    });
    // 제품상세페이지 리뷰정책 툴팁열고닫기
    $('.reviewP').click(function () {
        $('.tooltip_inner').toggle();
    });
    $('.btn_tooltip_close').click(function () {
        $('.tooltip_inner').hide();
    });
    // 문의사항 작성페이지에서 textarea 태그내에 키업이벤트시 글자수 카운팅 > 표시
    $('textarea').keyup(function (e) {
        var content = $(this).val();
        $('#ta_count').html(content.length);
        if (content.length > 500) {
            $(this).val(content.substring(0, 500));
            $('#ta_count').html("500");
        }
    });
    // 제품상세페이지 리뷰작성 시 공감태그 선택
    $('.reviewTag li').click(function () {
        $('.reviewTag li').css({ 'background-color': 'white', 'color': '#3b3b3b' });
        $(this).css({ 'background-color': '#3b3b3b', 'color': 'white' });

    });
    // 제품상세페이지 리뷰작성시 별점매기기
    $(".starPoint .fa-star").click(function () {
        $(this).addClass("starActive");
        $(this).prevAll().addClass("starActive");
        var starNum = $(".starActive").length;
        $(".starCount").text(starNum);
    });

    // 아이디/비번 검사 로직
    $(".loginBtn").click(() => {
        if ($("#user_id").val() == "") {
            alert("아이디를 입력해주세요.");
            $("#user_id").focus(); return;
        } else if ($("#user_pw").val() == "") {
            alert("비밀번호를 입력해주세요.");
            $("#user_pw").focus(); return;
        } else {
            alert("로그인에 성공하였습니다!");
            sessionStorage.setItem("login", "true");
            // location.href = "./barovone_main.html";
            $("#isLogin").html("로그아웃");
            $("#myModal").modal("hide");
        }
    });
    $(".close").click(function () {
        $("#myModal").modal("hide");
    });
    // 메인페잊 상단 로그아웃 버튼 클릭시 모달 정지, 세션스토리지 삭제 후 초기화
    $("#isLogin").click(function () {
        if ($(this).text() == "로그아웃") {
            $("#myModal").modal("hide");
            alert("로그아웃되었습니다.");
            sessionStorage.clear();
            $("#cnt").empty(); $(".cartM").empty();
            $(this).text("로그인");
        }
    });
});
// 로그인 레이어 팝업 띄우기
function openLoginPop() {
    if (("#isLogin").text() == "로그인") {
        $('#myModal_login').modal('show');
        $('#myModal_login').on('shown.bs.modal', function () { //after show process
            $('#user_id').focus();
        });
    }
}
// 아이템에 마우스오버시 장바구니, 좋아요 아이콘 표시
function bestOver(num) {
    document.getElementById("over" + num).style.visibility = "visible";
    document.getElementById("over" + num).style.transition = "visibility 1s ease 1s";
}
function bestOut(num) {
    document.getElementById("over" + num).style.visibility = "hidden";
    document.getElementById("over" + num).style.transition = "visibility 1s ease 1s";
}

function formValidate(frm) {
    if (frm.id.value == '') {
        alert("아이디를 입력해주세요.");
        frm.id.focus();
        return false;
    }
    if (frm.id.value.length < 8 || frm.id.value.length > 12) {
        alert("아이디는 8~12자 사이만 가능합니다.");
        frm.id.focus();
        return false;
    }
    if (isNaN(frm.id.value.charAt(0)) == false) {
        alert('아이디는 숫자로 시작할 수 없습니다.');
        frm.id.focus();
        return false;
    }
    if (frm.id.readOnly == false) {
        alert('아이디 중복확인이 필요합니다.');
        return false;
    }
    //패스워드 입력 확인
    if (frm.pass1.value == '') {
        alert("패스워드를 입력해주세요."); frm.pass1.focus(); return false;
    }
    if (frm.pass2.value == '') {
        alert("패스워드 확인을 위해 재입력해주세요."); frm.pass2.focus(); return false;
    }
    if (frm.pass1.value != frm.pass2.value) {
        alert('패스워드가 일치하지 않습니다. 다시 입력해주세요.');
        frm.pass1.value = '';
        frm.pass2.value = '';
        frm.pass1.focus();
        return false;
    }
    else {
        alert("로그인에 성공하였습니다!");
        sessionStorage.setItem("login", "true");
        location.href = "./barovone_main.html";
    }

}

function inputEmail(frm) {
    var choiceDomain = frm.email_domain.value;
    if (choiceDomain == '') {
        frm.email1.focus();
    }
    else if (choiceDomain == '직접입력') {
        frm.email2.value = '';
        frm.email2.readOnly = false;
        frm.email2.focus();
    }
    else {
        frm.email2.value = choiceDomain;
        frm.email2.readOnly = true;
    }
}
function focusMove(x, y, z) {
    if (document.getElementById(x).value.length >= z) {
        document.getElementById(y).focus();
    }
}
function validate(frm){ 
    if(!frm.agree1.checked || !frm.agree2.checked) {alert("이용약관과 개인정보취급방침에 동의해주세요."); return false;}
}//가입시 체크 확인 

//회원가입시 폼값인증
function jvalidate(frm) {
	if (frm.name.value == '') {
        alert("이름을 입력해주세요.");
        frm.name.focus(); return false;
    }
    var textColor = window.getComputedStyle(document.getElementById('idResult'), null).getPropertyValue("color");
    if (textColor=='rgb(255, 0, 0)') {
        alert('아이디가 적합하지 않습니다.'); frm.id.focus(); return false;
    }
    //패스워드 입력 확인
    if (frm.pw1.value == '') {
        alert("비밀번호를 입력해주세요."); frm.pw1.focus(); return false;
    }
    if (frm.pw1.value.length < 8 || frm.pw1.value.length > 12) {
        alert("비밀번호는 8~12자 사이만 가능합니다.");
        frm.pw1.focus(); return false;
    }
    if (frm.pw2.value == '') {
        alert("비밀번호 확인을 위해 재입력해주세요."); frm.pw2.focus(); return false;
    }
    if(frm.birth.value=='') {
		alert("생년월일을 입력해주세요."); frm.birth.focus(); return false;
	}
    if(frm.tel1.value==''||frm.tel2.value==''||frm.tel3.value=='') {
		alert("전화번호를 입력해주세요."); frm.tel1.focus(); return false;
	}
	if(frm.email1.value==''||frm.email2.value=='') {
		alert("이메일 주소를 입력해주세요."); frm.email1.focus(); return false;
	}
	if(frm.zip.value==''||frm.addr1.value==''||frm.addr2.value=='') {
		alert("주소를 입력해주세요."); frm.zip.focus(); return false;
	}
}
function inputEmail(frm) {
    var choiceDomain = frm.email_domain.value;
    if (choiceDomain == '') {
        frm.email1.focus();
    }
    else if (choiceDomain == '직접입력') {
        frm.email2.value = '';
        frm.email2.readOnly = false;
        frm.email2.focus();
    }
    else {
        frm.email2.value = choiceDomain;
        frm.email2.readOnly = true;
    }
}
function focusMove(x, y, z) {
    if (document.getElementById(x).value.length >= z) {
        document.getElementById(y).focus();
    }
}
$(function () {
	$('input[name=pw2]').keyup(function () {
        if ($(this).val()!=$("input[name=pw1]").val()) {
			$("#pwResult").text("비밀번호가 일치하지 않습니다.").css("color", "red");
        }else $("#pwResult").text("비밀번호가 일치합니다.").css("color", "green");
    });
	$('input[name=id]').keyup(function(){
		let params = {id:$('#id').val()}, id = $(this).val();
		$.post('idcheck.jsp', params, function(resD){console.log('콜백데이터', resD);
			if(resD==1) $('#idResult').html('이미 존재하는 아이디입니다.').css('color', 'red');
			else if(resD==0 && id.length>7 && id.length<13 && isNaN(id.charAt(0))){
				$('#idResult').html('사용 가능한 아이디 입니다.').css('color', 'green');
			}else $('#idResult').html('아이디는 영문소문자로 시작하는 8~12자로 작성해주세요.').css('color', 'red');
		});
	});
});

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