var optionArr = {
    1: ['한국소설', '외국소설', '한국에세이', '외국에세이', '장르문학', '고전문학/신화', '시', '희곡/시나리오', '문학이론/비평'],
    2: ['경영', '경제', '마케팅/세일즈', '재테크/투자', '창업/취업', 'CEO/리더쉽', '자기관리'],
    3: ['인문교양', '철학', '언어학/기호학', '심리학', '출판/도서/창작', '신화학', '문명/고고학'],
    4: ['예술의이해', '미술', '음악', '사진', '영화/연극', '무용/뮤지컬', '건축/디자인', '대중문화'],
    5: ['종교학', '기독교', '가톨릭', '불교', '세계종교', '역학'],
    6: ['역사학', '한국사', '서양사', '동양사', '주제별역사'],
    7: ['종교인', '사회운동가/혁명가', '여러인물이야기', '철학자/사상가', '과학자/의료인', '교육자', '여성인물', '경영/기업가', '자서전', '예술가', '정치인/군인', '연예인/운동선수', '언론인', '인물기타'],
    8: ['사회학', '행정학', '교육학', '정치/외교학', '법학', '통계학', '언론/미디어', '여성학', '지리학', '환경/생태', '사회사상', '국방/군사학'],
    9: ['과학의이해', '물리', '화학', '생명과학', '천문학', '수학', '지구과학', '의학/간호학', '농업/임학', '기술공학'],
    10: ['초등1~2', '초등3~4', '초등5~6', '한국동화', '외국동화', '동요/동시', '어린이학습', '어린이만화', '어린이취미/놀이', '세트/전집'],
    11: ['초등1학년', '초등2학년', '초등3학년', '초등4학년', '초등5학년', '초등6학년', '초등종합참고서', '중학1학년', '중학2학년', '중학3학년', '중학종합참고서', '고등1학년', '고등문제집', '고등자습서', '수능영역별', '고등영어종합', 'EBS교육방송', '대입/논술과면접'],
    12: ['국가고시', '공무원', '임용고시', '편입/검정/독학사', '공인중개사/주택관리사', '금융/경제/물류', '보건/위생/의학', '법무/사회', '취업/상식/적성검사', '운전/관광', '전자/전기', '건축/토목/기계', '가스/안전/환경', '음식/미용', '컴퓨터/IT', '한자', '기타'],
    13: ['게임/디카/입문/활용', 'OS/Networking', 'e비즈니스/창업', '오피스활용', '홈페이지/웹', '컴퓨터공학', '프로그래밍언어', '그래픽/멀티미디어', '프로그래밍 개발/방법론'],
    14: ['가정/육아', '경제/경영', '요리/건강', '여성/남성/패션', '여행/취미/스포츠', '연예/영화', '교양', '문화/예술', '자동차/과학/기술', '컴퓨터/게임/그래픽', '성인지(19+)', '수험/어학교재', '만화/애니메이션', '시사', '종교', '다이어리/달력', '사회과학'],
    15: ['경상계열', '공학계열', '자연과학계열', '의약간호계열', '농축산학계열', '법학계열', '사범계열', '사회과학계열', '인문계열', '어문학계열', '예체능계열', '생활환경계열'],
    16: ['가정생활', '요리', '육아', '임신/출산/태교', '인테리어/주거환경', '건강/다이어트/미용', '질병과예방', '패션/수공예', '자녀교육'],
    17: ['영어', '일본어', '중국어', '한문/한국어', '독일어/프랑스어/스페인어', '기타외국어'],
    18: ['국어사전', '중국어/한자/옥편', '영어사전', '일어사전', '독일어', '스페인어', '프랑스어', '기타외국어', '백과/연감', '전문사전'],
    19: ['문학', '유아/어린이', 'ELT/사전', '경제/경영', '실용', '예술/디자인', '컴퓨터/기술', '잡지', '베스트']
}

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

    // sticky 로고 버튼
    $(window).scroll(function () {
        if ($(this).scrollTop() > 200) $('#stickyLogo').show().css({ "position": "fixed" });
        else $('#stickyLogo').hide();
    });
    // 관심분야 선택
    $("#etc1").change(function () {
        $("#etc2 option:selected").length = 0;
        let sValue = $("#etc1 option:selected").val();
        for (var i = 0; i < optionArr[sValue].length; i++) {
            let cOption = $("<option value=" + optionArr[sValue][i] + ">" + optionArr[sValue][i] + "</option>");
            $("#etc2").append(cOption);
        }
    });
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