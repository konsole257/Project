<div class="btn-area">
    <a href="#qna-write" class="btn smaller fill black btn-write" onclick="fn.popupOpen('#qna-write');">문의하기</a>
</div>

<ul class="fold-list">
    <li><!-- 답변이 없을경우 class="noreply" -->
        <a href="javascript:void(0);" onclick="fn.toggleClass(this);">
            <em>답변완료</em>
            <strong>회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?회원가입 시 본인 인증 문자메세지를 수신하지 못했는데 어떻게 해야 하나요?</strong>
            <div>
                <p class="id">bbp***</p>
                <p class="date">2018.12.17</p>
            </div>
        </a>
        <div class="acont">
            회원가입 시 휴대폰번호 인증 서비스를 위해 인증 문자를 전송하였는데 수신하지 못하신 경우,<br>
            인증 문자가 정상적으로 전송되었으나 고객님의 휴대폰에 0505 번호로 스팸 설정이 되어있는 경우 인증 문자가 차단되어 수신이 불가합니다.<br>
            <br>
            고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다. 고객님의 단말기 또는 이용하시는 통신사의 고객센터로 문의하시어 0505 번호가 스팸으로 차단되어 있는지 확인해주시고, 차단 해제 후 다시 시도해 주시기 바랍니다.<br>

            <div>
                <p class="id">관리자</p>
                <p class="date">2018.12.17</p>
            </div>
        </div>
    </li>
    <li class="noreply">
        <a href="javascript:void(0);" onclick="fn.toggleClass(this);">
            <em>답변대기</em>
            <strong>제품이 저에게 맞지 않는 것 같은데 어떻게 해야 하나요?</strong>
            <div>
                <p class="id">bbp***</p>
                <p class="date">2018.12.17</p>
            </div>
        </a>
    </li>
</ul>

<div class="pagination">
	<a href="#" class="btn-first">처음</a>
	<a href="#" class="btn-prev">이전</a>
	<span class="num">
		<a href="#" class="active">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#">4</a>
		<a href="#">5</a>
	</span>
	<a href="#" class="btn-next">다음</a>
	<a href="#" class="btn-last">끝</a>
</div>

<!-- 팝업 : 문의하기 // -->
<div id="qna-write" class="popup qna-write">
	<div class="inner">
		<header class="header">
			<h2 class="tit">문의하기</h2>

			<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
		</header>

		<div class="contents">
            <form class="form-area">
                <fieldset>
                    <div class="input-area">
                        <div>
            				<div>
            					<span class="field-tit">문의 내용</span>
            					<span class="field-input">
            						<span class="inner">
                                        <textarea title="입력"></textarea>
            						</span>
            					</span>
            				</div>
            			</div>

                        <div>
            				<div>
            					<span class="field-tit">공개 여부</span>
            					<span class="field-input state">
            						<span class="inner">
                                        <label><input type="radio" name="state" checked><span>공개</span></label>
                                        <label><input type="radio" name="state"><span>비공개</span></label>
            						</span>
            					</span>
            				</div>
            			</div>
                    </div>
                </fieldset>
            </form>
		</div>

		<div class="btn-area">
			<button type="button" class="btn fill black btn-close" onclick="fn.popupClose(function(){ fn.popupOpen('#qna-complete') });">등록</button>
		</div>
	</div>
</div>
<!-- // 팝업 : 문의하기 -->

<!-- 팝업 : 문의하기 완료 // -->
<div id="qna-complete" class="alert qna-complete">
	<div class="inner">
		<div class="contents">
		문의 등록이 완료되었습니다.
		</div>

		<div class="btn-area">
			<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
		</div>
	</div>
</div>
<!-- // 팝업 : 문의하기 완료 -->
