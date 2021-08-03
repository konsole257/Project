<h3 class="tit">연구(논문)지원</h3>

<div class="form">
    <form>
        <!-- 신청인 정보 // -->
        <fieldset class="form-fieldset info-fieldset">
            <legend>신청인 정보</legend>

            <table class="form-table">
                <caption class="hide">성명, 성명(한자), 생년월일, 휴대폰 번호, 이메일</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:400px;">
                    <col style="width:180px;">
                    <col style="width:320px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>성명(한글)</span></th>
                        <td>
                            <input type="text" title="성명(한글) 입력">
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
                            <input type="number" pattern="\d*" title="휴대폰 번호 입력" placeholder="숫자만 입력해 주세요.">
                        </td>
                    </tr>

                    <tr>
                        <th><span>이메일</span></th>
                        <td colspan="3">
                            <input type="text" title="이메일 입력" placeholder="ex) yangyoung@naver.com">
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 신청인 정보 -->

        <!-- 소속기관 // -->
        <fieldset class="form-fieldset">
            <legend>소속기관</legend>

            <table class="form-table">
                <caption class="hide">소속명 (학교명), 소속기관 전화번호, 직위</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:400px;">
                    <col style="width:180px;">
                    <col style="width:320px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>소속명 (학교명)</span></th>
                        <td colspan="3">
                            <input type="text" title="소속명 (학교명) 입력" placeholder="ex) 삼양대학교">
                        </td>
                    </tr>

                    <tr>
                        <th><span>소속기관<br> 전화번호</span></th>
                        <td>
                            <input type="number" pattern="\d*" title="소속기관 전화번호 입력" placeholder="숫자만 입력해 주세요.">
                        </td>

                        <th><span>직위</span></th>
                        <td>
                            <input type="text" title="직위 입력">
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 소속기관 -->

        <!-- 소속기관 주소 // -->
        <fieldset class="form-fieldset">
            <legend>소속기관 주소</legend>

            <table class="form-table">
                <caption class="hide">우편번호, 기본 주소, 상세 주소</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:400px;">
                    <col style="width:180px;">
                    <col style="width:320px;">
                </colgroup>

                <tbody>
                    <tr>
                        <th><span>우편번호</span></th>
                        <td colspan="3">
                            <div class="bundle bundle-code">
                                <input type="text" title="우편번호 입력" class="input-code">
                                <button type="button" class="btn-small-fill-gray btn-code">주소검색</button>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th><span>기본 주소</span></th>
                        <td colspan="3">
                            <input type="text" title="기본 주소 입력">
                        </td>
                    </tr>

                    <tr>
                        <th><span>상세 주소</span></th>
                        <td colspan="3">
                            <input type="text" title="상세 주소 입력">
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <!-- // 소속기관 주소 -->

        <!-- 학력 정보 // -->
        <fieldset class="form-fieldset achieve-fieldset">
            <legend>학력 정보</legend>

            <ul class="achieve-list">
                <li>
                    <strong>학력<span>1</span></strong>
                    <table class="form-table">
                        <caption class="hide">입학일, 졸업일, 학교명, 전공</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:400px;">
                            <col style="width:180px;">
                            <col style="width:320px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>입학일</span></th>
                                <td>
                                    <span class="datepicker">
                                        <input type="text" title="입학일 입력">
                                    </span>
                                </td>

                                <th><span>졸업일</span></th>
                                <td>
                                    <span class="datepicker">
                                        <input type="text" title="졸업일 입력">
                                    </span>
                                </td>
                            </tr>

                            <tr>
                                <th><span>학교명</span></th>
                                <td colspan="3">
                                    <input type="text" title="학교명 입력" placeholder="ex) 삼양대학교">
                                </td>
                            </tr>

                            <tr>
                                <th><span>전공</span></th>
                                <td>
                                    <input type="text" title="전공 입력" placeholder="ex) 바이오공학과">
                                </td>

                                <th><span>학위</span></th>
                                <td>
                                    <span class="select">
                                        <select title="학위 선택">
                                            <option>선택</option>
                                            <option>전문학사</option>
                                            <option>학사</option>
                                            <option>석사</option>
                                            <option>박사</option>
                                            <option>기타</option>
                                        </select>
                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>

            <!--
                학력 추가 함수
                achieveListAdd();

                학력 삭제 함수
                achieveListDel();
            -->
            <button type="button" class="btn-small-stroke-lightgray-middle btn-add" onclick="achieveListAdd();">추가</button>
            <script>
                var achieveListDel = function(getThis){
                    var $li = getThis.parentNode,
                        $achieveList = document.querySelector('.achieve-list');

                    $achieveList.removeChild($li);

                    var achieveListIdx = $achieveList.childElementCount;

                    for (achieveListIdx; achieveListIdx >= 1; achieveListIdx--) {
                        $achieveList.children[achieveListIdx-1].children[0].children[0].innerHTML = achieveListIdx;
                    }
                }

                var achieveListAdd = function(){
                    var $achieveList = document.querySelector('.achieve-list');
                    var li = document.createElement('li'),
                        achieveListIdx = $achieveList.childElementCount+1;

                    var achieveList = '';
                        achieveList += '<strong>학력<span>'+achieveListIdx+'</span></strong>';
                        achieveList += '<button type="button" class="btn-del" onclick="achieveListDel(this);">삭제</button>';
                        achieveList += '<table class="form-table">';
                        achieveList += '    <caption class="hide">입학일, 졸업일, 학교명, 전공</caption>';
                        achieveList += '    <colgroup>';
                        achieveList += '        <col style="width:180px;">';
                        achieveList += '        <col style="width:400px;">';
                        achieveList += '        <col style="width:180px;">';
                        achieveList += '        <col style="width:320px;">';
                        achieveList += '    </colgroup>';
                        achieveList += '    <tbody>';
                        achieveList += '        <tr>';
                        achieveList += '            <th><span>입학일</span></th>';
                        achieveList += '            <td>';
                        achieveList += '                <span class="datepicker">';
                        achieveList += '                    <input type="text" title="입학일 입력">';
                        achieveList += '                </span>';
                        achieveList += '            </td>';
                        achieveList += '            <th><span>졸업일</span></th>';
                        achieveList += '            <td>';
                        achieveList += '                <span class="datepicker">';
                        achieveList += '                    <input type="text" title="졸업일 입력">';
                        achieveList += '                </span>';
                        achieveList += '            </td>';
                        achieveList += '        </tr>';
                        achieveList += '        <tr>';
                        achieveList += '            <th><span>학교명</span></th>';
                        achieveList += '            <td colspan="3">';
                        achieveList += '                <input type="text" title="학교명 입력" placeholder="ex) 삼양대학교">';
                        achieveList += '            </td>';
                        achieveList += '        </tr>';
                        achieveList += '        <tr>';
                        achieveList += '            <th><span>전공</span></th>';
                        achieveList += '            <td>';
                        achieveList += '                <input type="text" title="전공 입력" placeholder="ex) 바이오공학과">';
                        achieveList += '            </td>';
                        achieveList += '            <th><span>학위</span></th>';
                        achieveList += '            <td>';
                        achieveList += '                <span class="select">';
                        achieveList += '                    <select title="학위 선택">';
                        achieveList += '                        <option>선택</option>';
                        achieveList += '                        <option>전문학사</option>';
                        achieveList += '                        <option>학사</option>';
                        achieveList += '                        <option>석사</option>';
                        achieveList += '                        <option>박사</option>';
                        achieveList += '                        <option>기타</option>';
                        achieveList += '                    </select>';
                        achieveList += '                </span>';
                        achieveList += '            </td>';
                        achieveList += '        </tr>';
                        achieveList += '    </tbody>';
                        achieveList += '</table>';

                    li.innerHTML = achieveList;
                    $achieveList.appendChild(li);

                    $('.achieve-list li:last-child .datepicker input').datepicker({
                        dateFormat: "yy.mm.dd",
                        changeMonth: true,
                        changeYear: true,
                    });
                }
            </script>
        </fieldset>
        <!-- // 학력 정보 -->

        <!-- 경력 정보 // -->
        <fieldset class="form-fieldset career-fieldset">
            <legend>경력 정보</legend>

            <ul class="career-list">
                <li>
                    <strong>경력<span>1</span></strong>
                    <table class="form-table">
                        <caption class="hide">시작일, 종료일, 기관, 직위</caption>

                        <colgroup>
                            <col style="width:180px;">
                            <col style="width:400px;">
                            <col style="width:180px;">
                            <col style="width:320px;">
                        </colgroup>

                        <tbody>
                            <tr>
                                <th><span>시작일</span></th>
                                <td>
                                    <span class="datepicker">
                                        <input type="text" title="시작일 입력">
                                    </span>
                                </td>

                                <th><span>종료일</span></th>
                                <td>
                                    <span class="datepicker">
                                        <input type="text" title="종료일 입력">
                                    </span>
                                </td>
                            </tr>

                            <tr>
                                <th><span>기관</span></th>
                                <td>
                                    <input type="text" title="기관 입력">
                                </td>

                                <th><span>직위</span></th>
                                <td>
                                    <input type="text" title="직위 입력">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>

            <!--
                경력 추가 함수
                careerListAdd();

                경력 삭제 함수
                careerListDel();
            -->
            <button type="button" class="btn-small-stroke-lightgray-middle btn-add" onclick="careerListAdd();">추가</button>
            <script>
                var careerListDel = function(getThis){
                    var $li = getThis.parentNode,
                        $careerList = document.querySelector('.career-list');

                    $careerList.removeChild($li);

                    var careerListIdx = $careerList.childElementCount;

                    for (careerListIdx; careerListIdx >= 1; careerListIdx--) {
                        $careerList.children[careerListIdx-1].children[0].children[0].innerHTML = careerListIdx;
                    }
                }

                var careerListAdd = function(){
                    var $careerList = document.querySelector('.career-list');
                    var li = document.createElement('li'),
                        careerListIdx = $careerList.childElementCount+1;

                    var careerList = '';
                        careerList += '<strong>경력<span>'+careerListIdx+'</span></strong>';
                        careerList += '<button type="button" class="btn-del" onclick="careerListDel(this);">삭제</button>';
                        careerList += '<table class="form-table">';
                        careerList += '    <caption class="hide">시작일, 종료일, 기관, 직위</caption>';
                        careerList += '    <colgroup>';
                        careerList += '        <col style="width:180px;">';
                        careerList += '        <col style="width:400px;">';
                        careerList += '        <col style="width:180px;">';
                        careerList += '        <col style="width:320px;">';
                        careerList += '    </colgroup>';
                        careerList += '    <tbody>';
                        careerList += '        <tr>';
                        careerList += '            <th><span>시작일</span></th>';
                        careerList += '            <td>';
                        careerList += '                <span class="datepicker">';
                        careerList += '                    <input type="text" title="시작일 입력">';
                        careerList += '                </span>';
                        careerList += '            </td>';
                        careerList += '            <th><span>종료일</span></th>';
                        careerList += '            <td>';
                        careerList += '                <span class="datepicker">';
                        careerList += '                    <input type="text" title="종료일 입력">';
                        careerList += '                </span>';
                        careerList += '            </td>';
                        careerList += '        </tr>';
                        careerList += '        <tr>';
                        careerList += '            <th><span>기관</span></th>';
                        careerList += '            <td>';
                        careerList += '                <input type="text" title="기관 입력">';
                        careerList += '            </td>';
                        careerList += '            <th><span>직위</span></th>';
                        careerList += '            <td>';
                    careerList += '                    <input type="text" title="직위 입력">';
                        careerList += '            </td>';
                        careerList += '        </tr>';
                        careerList += '    </tbody>';
                        careerList += '</table>';

                    li.innerHTML = careerList;
                    $careerList.appendChild(li);
                }
            </script>
        </fieldset>
        <!-- // 경력 정보 -->

        <!-- 연구분야 // -->
        <fieldset class="form-fieldset">
            <legend>연구분야</legend>

            <textarea placeholder="텍스트를 입력해 주세요. " class="textarea-research"></textarea>
            <div class="char-length">0/1000</div>
        </fieldset>
        <!-- // 연구분야 -->

        <!-- 추천 배경 // -->
        <fieldset class="form-fieldset">
            <legend>추천 배경</legend>

            <textarea placeholder="텍스트를 입력해 주세요. " class="textarea-recommend"></textarea>
            <div class="char-length">0/1000</div>
        </fieldset>
        <!-- // 추천 배경 -->

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
                        성명, 주민등록번호 등 고유식별정보, 생년월일, 소속, 지위, 연락처(자택, 근무처, 휴대전화), 주소(자택, 근무처), 은행계좌번호, 학력사항, 학적사항, 이메일
                        주소, 가족관계 및 가족 인적사항 성적 등 지원서에 기재된 정보와 지원시 제공한 정보(서류)
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

            <p class="txt">본인은 2020년도 귀 재단의 연구(논문)을 지원합니다.</p>

            <table class="form-table">
                <caption class="hide">신청일, 성명</caption>

                <colgroup>
                    <col style="width:180px;">
                    <col style="width:400px;">
                    <col style="width:180px;">
                    <col style="width:320px;">
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
                </tbody>
            </table>
        </fieldset>
        <!-- // 수집 &middot; 이용 &middot; 제공에 관한 사항 -->

        <div class="btn-area">
            <button type="submit" class="btn-fill-blue btn-submit">확인</button>
        </div>
    </form>
</div>


<!-- 팝업 : 동의하지않음 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-thesisApplyAgree",
        "class": "popup-thesisApplyAgree",
        "type": "alert",
        "content": "./pages/popup/thesisApplyAgree.asp"
    }
})}}
<!-- // 팝업 : 동의하지않음 -->

<!-- 팝업 : 최종제출 // -->
{{include('./components/popup.html', {
    "prop": {
        "id": "popup-thesisApply",
        "class": "popup-thesisApply",
        "tit": "아래 내용을 꼭 확인해 주세요.",
        "content": "./pages/popup/thesisApply.asp"
    }
})}}
<!-- // 팝업 : 최종제출 -->
