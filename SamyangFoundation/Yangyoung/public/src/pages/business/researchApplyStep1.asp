<h3 class="tit">휴대폰번호 인증</h3>

<div class="form">
    <form>
        <filedset>
            <legend class="hide">휴대폰번호 인증</legend>

            <div class="row name">
                <span>
                    <input type="text" title="이름 입력" placeholder="이름">
                </span>
            </div>

            <div class="row phone">
                <span>
                    <!--
                        경고메세지 호출
                        fn.caution('add', '.phone', '숫자만 입력해 주세요.');

                        경고메세지 삭제
                        fn.caution('remove', '.phone');
                    -->
                    <input type="number" title="휴대폰 번호 입력" pattern="\d*" placeholder="휴대폰 번호(숫자만)" onkeyup="if( this.value.length === 11 ) { document.querySelector('.btn-confirm').removeAttribute('disabled'); } else { document.querySelector('.btn-confirm').setAttribute('disabled', 'true'); }">

                    <!--
                        경고메세지 호출
                        fn.caution('add', '.confirm', '인증번호 입력 시간이 초과하였습니다.');

                        경고메세지 삭제
                        fn.caution('remove', '.confirm');

                        타이머 호출
                        fn.confirmTimer('03:00', function(){ 타이머 완료 후 실행할 함수 });

                        팝업 호출
                        fn.popupOpen('#popup-researchImpossible');
                        fn.popupOpen('#popup-researchNodata');
                    -->
                    <button type="button" class="btn-fill-gray-small btn-confirm" disabled onclick="document.querySelector('.input-confirm').removeAttribute('disabled'); fn.caution('remove', '.confirm'); fn.confirmTimer('00:03', function(){ fn.caution('remove', '.confirm'); fn.caution('add', '.confirm', '인증번호 입력 시간이 초과하였습니다.'); });">인증</button>
                </span>
            </div>

            <div class="row confirm">
                <span>
                    <input type="number" title="인증번호 입력" pattern="\d*" placeholder="인증번호" class="input-confirm" disabled>
                </span>
            </div>

            <!--
                경고메세지 호출
                fn.caution('add', '.confirm', '인증번호를 확인해 주세요.');

                경고메세지 삭제
                fn.caution('remove', '.confirm');
            -->
            <button type="submit" class="btn-fill-blue-full btn-submit" onclick="fn.caution('add', '.confirm', '인증번호를 확인해 주세요.'); return false;">확인</button>
        </filedset>
    </form>
</div>

<!-- 팝업 : 신청 불가 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-researchImpossible",
        "class": "popup-researchImpossible",
        "type": "alert",
        "content": "./pages/popup/researchImpossible.asp"
    }
})}}
<!-- // 팝업 : 신청 불가 -->

<!-- 팝업 : 장학생 신청 이력 없음 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-researchNodata",
        "class": "popup-researchNodata",
        "type": "alert",
        "content": "./pages/popup/researchNodata.asp"
    }
})}}
<!-- // 팝업 : 장학생 신청 이력 없음 -->
