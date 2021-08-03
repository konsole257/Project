<h3 class="tit">신규 장학생 신청</h3>

<div class="menu">
    <div class="inner">
        <a href="#claimant">1. 신청정보</a>
        <a href="#family">2. 가족정보</a>
        <a href="#policy">3. 수집동의</a>
        <a href="#confirm-file" class="btn-mute btn-file" onclick="fn.addActive('.confirm-file');">파일첨부 확인</a>

        <div class="confirm-file active" onclick="fn.removeActive('.confirm-file');">
            <button type="button" class="btn-mute btn-close">닫기</button>

            <div class="txt-info">
                <div>
                    <strong>
                    수당재단 장학생 신청 시 아래 필수 파일첨부을 확인해 주세요.<br>
                    미 첨부 시 장학생 신청이 불가합니다.
                    </strong>

                    <p>
                        <strong class="bullet-black">통장사본 1부</strong>
                        <span class="depth2">- 장학금 수령 계좌 통장 사본</span>
                    </p>
                    <p>
                        <strong class="bullet-black">전체 학기 성적 증명서 1부</strong>
                        <span class="depth2">- 학사시스템 확인 또는 교무처 문의</span>
                    </p>
                    <p>
                        <strong class="bullet-black">학교장 추천서 1부</strong>
                        <span class="depth2">- 수당재단 홈페이지 > 커뮤니티 > 자료실</span>
                    </p>
                </div>

                <div>
                    <strong>
                    선택1과 선택2 항목 중  한 가지만 선택하여 파일첨부
                    </strong>

                <p>
                    <strong class="bullet-black">선택 1 : 학자금 지원구간 통지서 1부</strong>
                    <span class="depth2">- 한국장학재단 홈페이지 > 장학금 > 증명서 발급 > 학자금 지원구간 통지서 발급</span>
                </p>
                <p>
                    <strong class="bullet-black">선택 2 : 부모 각각의 지방세 세목별 과세증명서 각 1부</strong>
                    <span class="depth2">- 지방세 세목별 과세증명서 온라인 정부24 또는 동사무소 문의</span>
                    <strong class="depth2">부모 각각의 건강 · 장기요양보험료 납부확인서 각 1부</strong>
                    <span class="depth2">- 건강 · 장기요양보험료는 온라인 국민건강보험공단 또는 지역 국민 건강보험공단 문의</span>
                </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="form">
    <form>
        <aside class="temporary">
            <button type="button">임시저장</button>

            <p class="txt">
                임시저장 후<br>
                <b>
                신청내역<br>
                확인/수정<br>
                </b>
                에서 확인할<br>
                수 있습니다.
            </p>
        </aside>

        <!-- 신청인 정보 // -->
        <fieldset id="claimant" class="form-fieldset">
            <legend>신청인 정보</legend>

            <table class="form-table">
                <caption class="hide">성명, 성명(한자), 생년월일, 휴대폰 번호, 한국장학재단 고객번호, 이메일, 자녀 학자금 지원 여부</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>성명(한글)</span></th>
                        <td>
                            <input type="text" title="성명(한글) 입력" value="홍길동" disabled>
                        </td>

                        <th><span>성명(한자)</span></th>
                        <td>
                            <div class="bundle bundle-chn">
                                <input type="text" title="성명(한자) 입력" class="input-chn">

                                <div class="tooltip">
                                    <button type="button" class="btn-mute btn-tooltip" onclick="fn.tooltip(this);">툴팁보기</button>
                                    <div class="txt">
                                        <p>이름에 한자가 없는 경우 한글로 입력해 주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th><span>생년월일</span></th>
                        <td>
                            <span class="datepicker">
                                <input type="text" title="생년월일 입력" readonly>
                            </span>
                        </td>

                        <th><span>휴대폰 번호</span></th>
                        <td>
                            <input type="number" pattern="\d*" title="휴대폰 번호 입력" value="010123456778" disabled>
                        </td>
                    </tr>

                    <tr>
                        <th><span>한국장학재단 고객번호</span></th>
                        <td>
                            <div class="bundle bundle-number">
                                <input type="number" title="한국장학재단 고객번호 입력" class="input-number" pattern="\d*" maxlength="10" oninput="fn.numberMaxLength(this);" placeholder="숫자만 입력해 주세요. (10자리)">

                                <div class="tooltip">
                                    <button type="button" class="btn-mute btn-tooltip" onclick="fn.tooltip(this);">툴팁보기</button>
                                    <div class="txt">
                                        <p class="bullet-black">한국장학재단 접속 > 로그인 > 마이페이지 에서 고객 번호를 확인해 주세요.</p>
                                    </div>
                                </div>
                            </div>
                        </td>

                        <th><span>이메일</span></th>
                        <td>
                            <input type="text" title="이메일 입력" placeholder="ex) sudang@naver.com">
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 신청인 정보 -->

        <!-- 학교 정보 // -->
        <fieldset class="form-fieldset">
            <legend>학교 정보</legend>

            <table class="form-table">
                <caption class="hide">학교, 학과/학부, 학년</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>학교</span></th>
                        <td>
                            <input type="text" title="학교 입력" placeholder="ex) 삼양대학교">
                        </td>

                        <th><span>학과</span></th>
                        <td>
                            <input type="text" title="학과 입력" placeholder="ex) 바이오공학과">
                        </td>
                    </tr>

                    <tr>
                        <th><span>학년</span></th>
                        <td>
                            <span class="select">
                                <select title="학년 선택">
                                    <option>선택</option>
                                    <option>1학년</option>
                                    <option>2학년</option>
                                    <option>3학년</option>
                                    <option>4학년</option>
                                    <option>기타</option>
                                </select>
                            </span>
                        </td>

                        <th><span>학기</span></th>
                        <td>
                            <div class="bundle bundle-grade">
                                <span class="select select-grade">
                                    <select title="학년 선택">
                                        <option>선택</option>
                                        <option>1학기</option>
                                        <option>2학기</option>
                                    </select>
                                </span>

                                <label><input type="checkbox"><span>등록 예정</span></label>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 학교 정보 -->

        <!-- 등록금 조달 상황 // -->
        <fieldset class="form-fieldset">
            <legend>등록금 조달 상황</legend>

            <textarea placeholder="ex) 부모님 지원, 장학금, 학자금대출, 아르바이트 등" class="textarea-tuition"></textarea>
        </fieldset>
        <!-- // 등록금 조달 상황 -->

        <!-- 장학금 수령계좌 정보 // -->
        <fieldset class="form-fieldset">
            <legend>장학금 수령계좌 정보</legend>

            <table class="form-table">
                <caption class="hide">예금주, 은행명, 계좌번호, 장학생 신청자 등록금 금액, 통장 사본 파일첨부</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>예금주</span></th>
                        <td>
                            <input type="text" title="예금주 입력">
                        </td>

                        <th><span>은행명</span></th>
                        <td>
                            <input type="text" title="은행명 입력">
                        </td>
                    </tr>

                    <tr>
                        <th><span>계좌번호</span></th>
                        <td>
                            <input type="number" pattern="\d*" title="계좌번호 입력" placeholder="숫자만 입력해 주세요.">
                        </td>

                        <th><span>장학생 신청자<br>등록금 금액</span></th>
                        <td>
                            <input type="text" pattern="\d*" title="장학생 신청자 등록금 금액 입력" oninput="fn.addCommas(this);" placeholder="숫자만 입력해 주세요.">
                        </td>
                    </tr>

                    <tr>
                        <th class="required"><span>통장 사본 파일첨부</span></th>

                        <td colspan="3">
                            <span class="file file-bank">
                                <input type="text" onclick="fn.fileBtn(this);">
								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
							    <input type="file" title="통장 사본 파일첨부" onchange="fn.file(this);">
							</span>

                            <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 장학금 수령계좌 정보 -->

        <!-- 이전 학기 성적 // -->
        <fieldset class="form-fieldset">
            <legend>이전 학기 성적</legend>

            <div class="txt-area">
                <p class="bullet-gray">이전 학기 성적은 1년(1학기, 2학기) 성적을 입력해 주세요.</p>
                <p class="bullet-gray">휴학 등의 사유로 직전 학기 성적이 없는 경우, 휴학 전 1년(1학기/2학기) 성적을 입력 해주세요.</p>
                <p class="bullet-gray">전체학기 성적증명서를 첨부해 주세요.(학사시스템 확인 또는 교무처 문의)</p>
            </div>

            <table class="form-table">
                <caption class="hide">년도, 학년, 학기, 만점, 이수학점, 학점, 사유, 전체학기 성적증명서 파일첨부</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>년도</span></th>
                        <td>
                            <span class="select">
                                <select title="년도 선택">
                                    <option>선택</option>
                                    <option>2010년</option>
                                    <option>2011년</option>
                                    <option>2012년</option>
                                    <option>2013년</option>
                                    <option>2014년</option>
                                    <option>2015년</option>
                                    <option>2016년</option>
                                    <option>2017년</option>
                                    <option>2018년</option>
                                    <option>2019년</option>
                                    <option>2020년</option>
                                    <option>직접입력</option>
                                </select>
                            </span>
                        </td>

                        <th><span>학년</span></th>
                        <td>
                            <span class="select">
                                <select title="학년 선택">
                                    <option>선택</option>
                                    <option>1학년</option>
                                    <option>2학년</option>
                                    <option>3학년</option>
                                    <option>4학년</option>
                                    <option>기타</option>
                                </select>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <th><span>학기</span></th>
                        <td>
                            <span class="select">
                                <select title="학기 선택">
                                    <option>선택</option>
                                    <option>1학기</option>
                                    <option>2학기</option>
                                </select>
                            </span>
                        </td>

                        <th><span>취득학점</span></th>
                        <td>
                            <input type="text" title="취득학점 입력" placeholder="ex) 140">
                        </td>
                    </tr>

                    <tr>
                        <th><span>만점</span></th>
                        <td>
                            <span class="select">
                                <select title="만점 선택">
                                    <option>선택</option>
                                    <option>4.5</option>
                                    <option>4.3</option>
                                    <option>4.0</option>
                                </select>
                            </span>
                        </td>

                        <th><span>평균학점</span></th>
                        <td>
                            <input type="text" title="학점 입력" placeholder="ex) 4.3">
                        </td>
                    </tr>
                </tbody>

                <tbody>
                    <tr>
                        <th><span>년도</span></th>
                        <td>
                            <span class="select">
                                <select title="년도 선택">
                                    <option>선택</option>
                                    <option>2010년</option>
                                    <option>2011년</option>
                                    <option>2012년</option>
                                    <option>2013년</option>
                                    <option>2014년</option>
                                    <option>2015년</option>
                                    <option>2016년</option>
                                    <option>2017년</option>
                                    <option>2018년</option>
                                    <option>2019년</option>
                                    <option>2020년</option>
                                    <option>직접입력</option>
                                </select>
                            </span>
                        </td>

                        <th><span>학년</span></th>
                        <td>
                            <span class="select">
                                <select title="학년 선택">
                                    <option>선택</option>
                                    <option>1학년</option>
                                    <option>2학년</option>
                                    <option>3학년</option>
                                    <option>4학년</option>
                                    <option>기타</option>
                                </select>
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <th><span>학기</span></th>
                        <td>
                            <span class="select">
                                <select title="학기 선택">
                                    <option>선택</option>
                                    <option>1학기</option>
                                    <option>2학기</option>
                                </select>
                            </span>
                        </td>

                        <th><span>취득학점</span></th>
                        <td>
                            <input type="text" title="취득학점 입력" placeholder="ex) 140">
                        </td>
                    </tr>

                    <tr>
                        <th><span>만점</span></th>
                        <td>
                            <span class="select">
                                <select title="만점 선택">
                                    <option>선택</option>
                                    <option>4.5</option>
                                    <option>4.3</option>
                                    <option>4.0</option>
                                </select>
                            </span>
                        </td>

                        <th><span>평균학점</span></th>
                        <td>
                            <input type="text" title="학점 입력" placeholder="ex) 4.3">
                        </td>
                    </tr>
                </tbody>

                <tbody>
                    <tr>
                        <th><span>사유</span></th>
                        <td colspan="3">
                            <input type="text" title="사유 입력" placeholder="ex) 휴학">
                            <small>휴학 등의 사유로 연도 공백이 생길 경우 사유를 꼭 작성해 주세요.</small>
                        </td>
                    </tr>

                    <tr>
                        <th class="required"><span>전체학기 성적증명서<br> 파일첨부</span></th>
                        <td colspan="3">
                            <span class="file file-result">
                                <input type="text" onclick="fn.fileBtn(this);">
								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
							    <input type="file" title="전체학기 성적증명서 파일첨부" onchange="fn.file(this);">
							</span>

                            <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 이전 학기 성적 -->

        <!-- 학교장 추천서 // -->
        <fieldset class="form-fieldset">
            <legend>학교장 추천서</legend>

            <div class="txt-area">
                <p class="bullet-gray">수당재단 홈페이지 > 커뮤니티 > 자료실에서 다운로드 및 작성 후 첨부해 주세요.</p>
            </div>

            <table class="form-table">
                <caption class="hide">학교장 추천서 파일첨부</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th class="required"><span>학교장 추천서 파일첨부</span></th>
                        <td colspan="3">
                            <span class="file file-recommend">
                                <input type="text" onclick="fn.fileBtn(this);">
								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
							    <input type="file" title="통장 사본 파일첨부" onchange="fn.file(this);">
							</span>

                            <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 학교장 추천서 -->

        <!-- 학업계획서 // -->
        <fieldset class="form-fieldset plan-fieldset">
            <legend>학업계획서</legend>

            <ul class="plan-list">
                <li>
                    <p class="question-plan">가. 대학생활 중 학습계획(전공과목 및 교양과목에 대한 학업계획)</p>
                    <textarea class="textarea-plan" title="대학생활 중 학습계획 입력" placeholder="텍스트를 입력해 주세요."></textarea>
                    <div class="char-length">0/1000</div>
                </li>
                <li>
                    <p class="question-plan">나. 과외활동계획(동아리, 체육, 봉사활동 등)</p>
                    <textarea class="textarea-plan" title="과외활동계획 입력" placeholder="텍스트를 입력해 주세요."></textarea>
                    <div class="char-length">0/1000</div>
                </li>
                <li>
                    <p class="question-plan">다. 대학 졸업 후 사회 진출 포부(직업관)</p>
                    <textarea class="textarea-plan" title="대학 졸업 후 사회 진출 포부 입력" placeholder="텍스트를 입력해 주세요."></textarea>
                    <div class="char-length">0/1000</div>
                </li>
                <li>
                    <p class="question-plan">라. 대학 재학 또는 졸업 후 사회와 국가에 대한 봉사활동 계획</p>
                    <textarea class="textarea-plan" title="대학 재학 또는 졸업 후 사회와 국가에 대한 봉사활동 계획 입력" placeholder="텍스트를 입력해 주세요."></textarea>
                    <div class="char-length">0/1000</div>
                </li>
                <li>
                    <p class="question-plan">마. 본인의 인생관</p>
                    <textarea class="textarea-plan" title="본인의 인생관" placeholder="텍스트를 입력해 주세요."></textarea>
                    <div class="char-length">0/1000</div>
                </li>
            </ul>
        </fieldset>
        <!-- // 학업계획서 -->

        <!-- 가족 사항 // -->
        <fieldset id="family" class="form-fieldset family-fieldset">
            <legend>가족 사항</legend>

            <ul class="family-list">
                <li>
                    <strong>가족<span>1</span></strong>
                    <table class="form-table">
                        <caption class="hide">관계, 성명, 생년월일, 직업, 회사명</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:460px;">
                            <col style="width:180px;">
                            <col style="width:380px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>관계</span></th>
                                <td>
                                    <input type="text" title="관계 입력">
                                </td>

                                <th><span>성명</span></th>
                                <td>
                                    <input type="text" title="성명 입력">
                                </td>
                            </tr>

                            <tr>
                                <th><span>생년월일</span></th>
                                <td>
                                    <span class="datepicker">
                                        <input type="text" title="생년월일 입력" readonly>
                                    </span>
                                </td>

                                <th><span>직업</span></th>
                                <td>
                                    <input type="text" title="직업 입력">
                                </td>
                            </tr>

                            <tr>
                                <th><span>회사명</span></th>
                                <td colspan="3">
                                    <div class="bundle bundle-company">
                                        <input type="text" title="회사명 입력" class="input-company">
                                        <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>

            <!--
                가족 추가 함수
                familyListAdd();

                가족 삭제 함수
                familyListDel();
            -->
            <button type="button" class="btn-small-stroke-lightgray-middle btn-add" onclick="familyListAdd();">추가</button>
            <script>
                var familyListDel = function(getThis){
                    var $li = getThis.parentNode,
                        $familyList = document.querySelector('.family-list');

                    $familyList.removeChild($li);

                    var familyListIdx = $familyList.childElementCount;

                    for (familyListIdx; familyListIdx >= 1; familyListIdx--) {
                        $familyList.children[familyListIdx-1].children[0].children[0].innerHTML = familyListIdx;
                    }
                }

                var familyListAdd = function(){
                    var $familyList = document.querySelector('.family-list');
                    var li = document.createElement('li'),
                        familyListIdx = $familyList.childElementCount+1;

                    var familyList = '';
                        familyList += '<strong>가족<span>'+familyListIdx+'</span></strong>';
                        familyList += '<button type="button" class="btn-del" onclick="familyListDel(this);">삭제</button>';
                        familyList += '<table class="form-table">';
                        familyList += '    <caption class="hide">관계, 성명, 생년월일, 직업, 회사명</caption>';
                        familyList += '    <colgroup>';
                        familyList += '        <col style="width:180px;">';
                        familyList += '        <col style="width:460px;">';
                        familyList += '        <col style="width:180px;">';
                        familyList += '        <col style="width:380px;">';
                        familyList += '    </colgroup>';
                        familyList += '    <tbody>';
                        familyList += '        <tr>';
                        familyList += '            <th><span>관계</span></th>';
                        familyList += '            <td>';
                        familyList += '                <input type="text" title="관계 입력">';
                        familyList += '            </td>';
                        familyList += '            <th><span>성명</span></th>';
                        familyList += '            <td>';
                        familyList += '                <input type="text" title="성명 입력">';
                        familyList += '            </td>';
                        familyList += '        </tr>';
                        familyList += '        <tr>';
                        familyList += '            <th><span>생년월일</span></th>';
                        familyList += '            <td>';
                        familyList += '                <span class="datepicker">';
                        familyList += '                    <input type="text" title="생년월일 입력" readonly>';
                        familyList += '                </span>';
                        familyList += '            </td>';
                        familyList += '            <th><span>직업</span></th>';
                        familyList += '            <td>';
                        familyList += '                <input type="text" title="직업 입력">';
                        familyList += '            </td>';
                        familyList += '        </tr>';
                        familyList += '        <tr>';
                        familyList += '            <th><span>회사명</span></th>';
                        familyList += '            <td colspan="3">';
                        familyList += '                <div class="bundle bundle-company">';
                        familyList += '                    <input type="text" title="회사명 입력" class="input-company">';
                        familyList += '                    <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>';
                        familyList += '                </div>';
                        familyList += '            </td>';
                        familyList += '        </tr>';
                        familyList += '    </tbody>';
                        familyList += '</table>';

                    li.innerHTML = familyList;
                    $familyList.appendChild(li);

                    $('.family-list li:last-child .datepicker input').datepicker({
                        changeYear: true,
                        changeMonth: true,
                        dateFormat: "yy.mm.dd",
                        yearRange: "1940:2030",
                        monthNamesShort:
                            [ "1", "2", "3", "4", "5", "6",
                            "7", "8", "9", "10", "11", "12" ],
                        showMonthAfterYear:true
                    });
                }
            </script>

            <table class="form-table">
                <caption class="hide">자녀 학자금 지원 여부</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>자녀 학자금 지원 여부</span></th>
                        <td colspan="3">
                            <div class="bundle bundle-radio">
                                <label><input type="radio" name="support" checked><span>지원</span></label>
                                <label><input type="radio" name="support"><span>미지원</span></label>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 가족 사항 -->

        <div class="income-area">
            <div class="txt-area">
                <p class="bullet-gray">한국장학재단의 소득 분위(정보 입력 및 파일첨부) 또는 부모 각각의 지방세 세목별 과세 증명서/건강 · 장기요양보험료 납부확인서(정보 입력 및 파일첨부) 중 선택하여 입력할 수 있습니다.</p>
            </div>

            <div class="tab-menu">
                <a href="#tab-income" class="active">한국장학재단소득분위</a>
                <a href="#tab-parent">과세/건강보험료</a>
            </div>

            <!-- 한국장학재단 소득 분위 // -->
            <div id="tab-income" class="tab-contents active">
                <fieldset class="form-fieldset income-fieldset">
                    <legend>한국장학재단소득분위</legend>

                    <div class="txt-area">
                        <p class="bullet-gray">한국장학재단 > 장학금 > 증명서 발급 > 학자금 지원구간 통지서 발급에서 확인 및 첨부해 주세요.</p>
                    </div>

                    <table class="form-table">
                        <caption class="hide">년도, 학년, 학기, 만점, 이수학점, 학점, 사유, 전체학기 성적증명서 파일첨부</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:460px;">
                            <col style="width:180px;">
                            <col style="width:380px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>한국장학재단 소득 분위</span></th>
                                <td colspan="3">
                                    <input type="number" pattern="\d*" title="한국장학재단 소득 분위 입력" placeholder="숫자만 입력해 주세요">
                                </td>
                            </tr>

                            <tr>
                                <th class="required"><span>학자금 지원구간 <br>파일첨부</span></th>
                                <td colspan="3">
                                    <span class="file file-result">
                                        <input type="text" onclick="fn.fileBtn(this);">
        								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
        							    <input type="file" title="학자금 지원구간 파일첨부" onchange="fn.file(this);">
        							</span>

                                    <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
            </div>
            <!-- // 한국장학재단 소득 분위 -->

            <!-- 부모(父母) 각각의 지방세 세목별 과세 // -->
            <div id="tab-parent" class="tab-contents">
                <fieldset class="form-fieldset parent-fieldset">
                    <legend>부모 각각의 지방세 세목별 과세</legend>

                    <div class="txt-area">
                        <p class="bullet-gray">전년도(1,2 분기) 지방세 세목별 과세(납세)증명서는 정부24(https://www.gov.kr) 또는 동사무소에서 확인 및 첨부해 주세요.</p>
                    </div>

                    <table class="form-table">
                        <caption class="hide">부(父) 재산세 세액 합계, 부(父) 세목별 과세 증명서 파일첨부, 모(母) 재산세 세액 합계, 모(母) 세목별 과세 증명서 파일첨부</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:460px;">
                            <col style="width:180px;">
                            <col style="width:380px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>부(父) 재산세 세액 합계</span></th>
                                <td colspan="3">
                                    <div class="bundle bundle-tax">
                                        <input type="text" pattern="\d*" oninput="fn.addCommas(this);" title="부(父) 재산세 세액 합계 입력" class="input-tax" placeholder="숫자만 입력해 주세요">
                                        <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th class="required"><span>부(父) 세목별 과세<br> 증명서 파일첨부</span></th>
                                <td colspan="3">
                                    <span class="file file-tax">
                                        <input type="text" onclick="fn.fileBtn(this);">
        								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
        							    <input type="file" title="부(父) 세목별 과세 증명서 파일첨부" onchange="fn.file(this);">
        							</span>

                                    <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                                </td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <th><span>모(母) 재산세 세액 합계</span></th>
                                <td colspan="3">
                                    <div class="bundle bundle-tax">
                                        <input type="text" pattern="\d*" oninput="fn.addCommas(this);" title="모(母) 재산세 세액 합계 입력" class="input-tax" placeholder="숫자만 입력해 주세요">
                                        <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th class="required"><span>모(母) 세목별 과세<br> 증명서 파일첨부</span></th>
                                <td colspan="3">
                                    <span class="file file-tax">
                                        <input type="text" onclick="fn.fileBtn(this);">
        								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
        							    <input type="file" title="모(母) 세목별 과세 증명서 파일첨부" onchange="fn.file(this);">
        							</span>

                                    <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
                <!-- // 부모(父母) 각각의 지방세 세목별 과세 -->

                <!-- 부모(父母) 각각의 건강 · 장기요양보험료 // -->
                <fieldset class="form-fieldset parent-fieldset">
                    <legend>부모 각각의 건강보험료</legend>

                    <div class="txt-area">
                        <p class="bullet-gray">건강보험료는 국민건강보험(https://www.nhis.or.kr) 또는 각 지역 국민건강보험건공단에서 확인 및 첨부해 주세요.(건강보험료 합계는 전년도 1년 납입 합계 금액 으로 입력 및 파일첨부) </p>
                    </div>

                    <table class="form-table">
                        <caption class="hide">부(父) 건강보험료 합계</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:460px;">
                            <col style="width:180px;">
                            <col style="width:380px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>부(父) 건강보험료 합계</span></th>
                                <td colspan="3">
                                    <div class="bundle bundle-tax">
                                        <input type="text" pattern="\d*" oninput="fn.addCommas(this);" title="부(父) 건강보험료 합계 입력" class="input-tax" placeholder="숫자만 입력해 주세요">
                                        <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th class="required"><span>부(父) 건강보험료<br> 납부확인서 파일첨부</span></th>
                                <td colspan="3">
                                    <span class="file file-tax">
                                        <input type="text" onclick="fn.fileBtn(this);">
        								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
        							    <input type="file" title="부(父) 건강보험료 납부확인서 파일첨부" onchange="fn.file(this);">
        							</span>

                                    <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                                </td>
                            </tr>
                        </tbody>

                        <tbody>
                            <tr>
                                <th><span>모(母) 건강보험료 합계</span></th>
                                <td colspan="3">
                                    <div class="bundle bundle-tax">
                                        <input type="text" pattern="\d*" oninput="fn.addCommas(this);" title="모(母) 건강보험료 합계 입력" class="input-tax" placeholder="숫자만 입력해 주세요">
                                        <label><input type="checkbox" onchange="chkToggle(this);"><span>해당없음</span></label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th class="required"><span>모(母) 건강보험료<br> 납부확인서 파일첨부</span></th>
                                <td colspan="3">
                                    <span class="file file-tax">
                                        <input type="text" onclick="fn.fileBtn(this);">
        								<span class="btn-small-fill-green btn-file" onclick="fn.fileBtn(this);">파일선택</span>
        							    <input type="file" title="모(母) 건강보험료 납부확인서 파일첨부" onchange="fn.file(this);">
        							</span>

                                    <small>pdf, jpg, png 파일만 첨부 가능합니다.</small>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </fieldset>
            </div>
            <!-- // 부모(父母) 각각의 건강 · 장기요양보험료 -->
        </div>

        <!-- 수집 &middot; 이용 &middot; 제공에 관한 사항 // -->
        <fieldset id="policy" class="form-fieldset policy-fieldset">
            <legend>수집 &middot; 이용 &middot; 제공에 관한 사항</legend>

            <div class="agree-area">
                <p>
                    <strong>1) 수집 · 이용 목적</strong>
                    <span>장학금 지원, 수당상 수상자 선정, 연구비 지원, 학술·사회문화 발전에 기여한 개인의 지원 등 기타 재단 목적과 부합되는 부대사업 용</span>
                </p>

                <p>
                    <strong>2) 수집 · 이용할 항목</strong>
                    <span>
                        성명, 주민등록번호 등 고유식별정보, 생년월일, 소속, 지위, 연락처(자택, 근무처, 휴대전화), 주소(자택, 근무처), 은행계좌번호, 학력사항, 학적사항, 이메일주소, 가족관계 및 가족
                        인적사항 성적 등 지원서에 기재된 정보와 지원시 제공한 정보(서류)
                    </span>
                </p>

                <p>
                    <strong>3) 보유 · 이용 · 제공 기간</strong>
                    <span>
                        원칙적으로 개인정보 수집 및 이용목적이 달성될 때까지 보유 · 이용 · 제공함
                        단, 관계법령의 규정, 재단의 수혜자 관리상 필요한 경우 일정 기간 동안 보유 · 이용 · 제공 합니다.
                    </span>
                </p>

                <div class="txt-info">
                    <strong>동의 거부권 및 동의 거부에 따른 불이익 안내</strong>
                    위 개인정보의 수집 · 이용 · 제공에 관한 동의는 거부할 수 있으며, 다만, 동의하지 않은 경우 장학생선발,수당상수상자 선정 등에 불이익을 받을 수 있습니다.
                </div>

                <div class="check-area">
                    <label><input type="checkbox"><span>동의함</span></label>
                    <label><input type="checkbox"><span>동의하지 않음</span></label>
                </div>
            </div>

            <p class="txt">귀 재단의 장학생으로서 명예를 간직하고 학업에 전념할 것을 보호자 연명으로 서약하며 이에 장학금 지급원을 제출합니다.</p>

            <table class="form-table">
                <caption class="hide">신청일, 성명</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:460px;">
                    <col style="width:180px;">
                    <col style="width:380px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>신청일</span></th>
                        <td>
                            2020.06.29
                        </td>

                        <th><span>성명</span></th>
                        <td>
                            <input type="text" title="성명 입력" value="홍길동" disabled>
                        </td>
                    </tr>

                    <tr>
                        <th colspan="3"><span>보호자</span></th>
                        <td>
                            <input type="text" title="보호자 입력" placeholder="ex) 홍길동">
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="confirm-area">
                <p class="txt">‘최종제출’ 체크 후 확인 클릭 시 수정이 불가하오니 미입력, 오입력, 파일첨부 등 확인 후 최종 제출하여 주시기 바랍니다.</p>
                <label><input type="checkbox"><span>최종제출</span></label>
            </div>
        </fieldset>
        <!-- // 수집 &middot; 이용 &middot; 제공에 관한 사항 -->

        <div class="btn-area">
            <button type="button" class="btn-stroke btn-temporary">임시저장</button>
            <button type="submit" class="btn-fill-green btn-submit">최종제출</button>
        </div>
    </form>
</div>


<!-- 팝업 : 동의하지않음 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-applyAgree",
        "class": "popup-applyAgree",
        "type": "alert",
        "content": "./pages/popup/applyAgree.asp"
    }
})}}
<!-- // 팝업 : 동의하지않음 -->

<!-- 팝업 : 필수 첨부파일 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-applyRequiredFile",
        "class": "popup-applyRequiredFile",
        "type": "alert",
        "content": "./pages/popup/applyRequiredFile.asp"
    }
})}}
<!-- // 팝업 : 필수 첨부파일 -->

<!-- 팝업 : 임시저장 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-applyTemporary",
        "class": "popup-applyTemporary",
        "type": "alert",
        "content": "./pages/popup/applyTemporary.asp"
    }
})}}
<!-- // 팝업 : 임시저장 -->

<!-- 팝업 : 최종제출 선택 후 임시저장 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-applyChecked",
        "class": "popup-applyChecked",
        "type": "alert",
        "content": "./pages/popup/applyChecked.asp"
    }
})}}
<!-- // 팝업 : 최종제출 선택 후 임시저장 -->

<!-- 팝업 : 최종제출 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-apply",
        "class": "popup-apply",
        "type": "confirm",
        "content": "./pages/popup/apply.asp"
    }
})}}
<!-- // 팝업 : 최종제출 -->
