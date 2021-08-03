<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="info";
	String path4="info";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="지원신청";
	String path4tit="모집안내";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="youth">
		<div class="info temp">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/info.jsp"><strong>모집안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">모집안내</h2>
					<p class="con_tit_txt">꿈과 열정을 갖고 미래를 꿈꾸는 청소년들을 기다립니다.</p>

          <q>
            '도심 속 일터학교'  유스스탠드에서<br />
            2016년도 교육생을 모집합니다.
          </q>

					<!-- -->
          <section>
            <h3>1. 모집개요</h3>

            <dl class="horizon">
              <dt>사업명</dt>
              <dd>2016 YOUTH STAND 모집 </dd>
            </dl>

            <div class="btn_area">
              <a href="/download/youth_recruit.hwp" target="_blank" class="midium type1 btn_download">유스스탠드 지원 양식</a>
            </div>

            <dl class="vertical">
              <dt>모집요약</dt>
              <dd>2016 청소년 자립지원 ‘도심 속 일터학교’  YOUTH STAND 모집</dd>
              <dd>언더스탠드에비뉴 및 아웃턴십 네트워크를 연계한 ‘일.학습 병행’</dd>

              <dt>모집분야</dt>
              <dd>제과제빵&amp;파티쉐, 티소믈리에, 애견미용, 네일아트, 편집샵 판매</dd>

              <dt>협력기관</dt>
              <dd>성동구 등 지자체, 청소년 관련 사회복지단체, 외부 교육훈련 단체 등</dd>
            </dl>
          </section>

          <section>
            <h3>2. 선발계획</h3>

            <dl class="vertical">
              <dt>선발 대상</dt>
              <dd>언더스탠드에비뉴 및 아웃턴십을 연계한 일.학습 병행에 참여할 청소년</dd>

              <dt>선발 인원</dt>
              <dd>과정별 2~3명 (총 15명 내외)</dd>

              <dt>선발 나이</dt>
              <dd>18~24세 서울에 거주하는 청소년 (남.여 구분없음)</dd>

              <dt>우선 순위</dt>
              <dd>교육 및 취업과정(주5일 이상)에 성실하고 적극적으로 참여할 마음가짐이 있는 청소년</dd>
              <dd>저소득층 가정 청소년 (가정형태 및 가정소득증명 제출)</dd>
              <dd>모집 분야에 대한 기초 소양 및 기술이 있는 청소년 (3. 모집 상세내용 참고)</dd>
              <dd>지자체, 청소년 관련 기관 및 단체 추천 청소년</dd>
              <dd>모집 분야별 기초(태도.인성.에티켓 교육포함), 전문교육 진행</dd>
              <dd>교육과 병행한 현장 인턴십 및 아웃턴십 진행</dd>
              <dd>언더스탠드에비뉴 맘스탠드 및 소셜스탠드, 티카페, 네일샵, 애견샵 연계 우선 채용</dd>

              <dt>교육 및 채용 내용</dt>
              <dd>모집 분야별 기초(태도.인성.에티켓 교육포함), 전문교육 진행 </dd>
              <dd>교육과 병행한 현장 인턴십 및 아웃턴십 진행 </dd>
              <dd>언더스탠드에비뉴 맘스탠드 및 소셜스탠드, 티카페, 네일샵, 애견샵 연계 우선 채용 </dd>

              <dt>모집 기간</dt>
              <dd>상시모집</dd>

              <dt class="doc">제출 서류</dt>
              <dd class="btn_area">
                <a href="/download/youth_recruit.hwp" target="_blank" class="midium type1 btn_download">유스스탠드 지원 양식</a>
              </dd>

              <dt>필수서류</dt>
              <dd>YOUTH STAND 지원서 및 자기소개서 (해당양식) / 사진1매(그림파일, 상반신)</dd>
              <dd>YOUTH STAND 진로개발 계획서 (해당양식)</dd>
              <dd>YOUTH STAND 개인정보 동의서 (해당양식)</dd>
              <dd>모집과정 관련 자격증 및 추천서, 수료증 등</dd>
              <dd>주민등록등본 및 가족관계증명서 각1통</dd>

              <dt>선택서류</dt>
              <dd>가정형태증명서 (기초생활수급. 차상위계층. 한부모가정 증명서) </dd>
              <dd>가정소득증명서 (보호자 건강보험료 납부 확인서, 재산증명서) </dd>
              <dd>청소년 직업흥미검사 및 직업인성검사 결과지(워크넷 이용 검사/출력)<br />워크넷 주소 : <a href="http://www.work.go.kr/jobMain.do" target="_blank">http://www.work.go.kr/jobMain.do</a> / 직업심리검사 실시</dd>

              <dt>제출 방법</dt>
              <dd>우편 및 이메일 제출</dd>

              <dt>선발 방법</dt>
              <dd>1차 서류심사, 2차 면접심사</dd>

              <!--<dt>선발 공지</dt>
              <dd>2016년 4월 20일 (수) ‘언더스탠드에비뉴’ 홈페이지 공지 및 개별연락</dd>

              <dt>오리테이션</dt>
              <dd>2016년 4월 22일(금) 예정 ※ 필히 참석 </dd>

              <dt>유의사항 </dt>
              <dd>제출된 서류는 일체 반환하지 않습니다. </dd>
              <dd>제출된 모든 내용은 사실에 근거하여 작성해야 합니다. 허위기재 사실 확인 시 선발 대상자에서 제외되며 선발 대상에 선정되었을 경우라도<br />
                선정이 취소될 수 있습니다.</dd>-->
            </dl>
          </section>

          <section>
            <h3>3. 모집 상세내용 (자격요건/채용프로세스)</h3>

            <dl class="vertical">
              <dt>1) 자격요건 (우선선발 기준) </dt>
              <dd>신청 과정별 2개월 이상 교육이수 및 수료자 (자격증 보유자 우선선발)</dd>
              <dd>신청 과정별 동종 혹은 유사기관 2개월 이상 근무경험</dd>
              <dd>신청 과정별 동종 혹은 유사 학교, 교육기관 재학 또는 수료.졸업 예정자</dd>

              <dt class="edu">2) 교육 및 채용 프로세스</dt>
              <dd class="table_wrap">
                <table>
                  <caption></caption>

                  <colgroup>
                    <col />
                    <col />
                    <col />
                    <col />
                    <col />
                  </colgroup>

                  <tbody>
                    <tr>
                      <th scope="row">구분</th>
                      <td>1단계</td>
                      <td>2단계</td>
                      <td>3단계</td>
                      <td>4단계</td>
                    </tr>

                    <tr>
                      <th scope="row">명칭</th>
                      <td>Enrichment</td>
                      <td>Empowerment</td>
                      <td>Employment</td>
                      <td>Establishment</td>
                    </tr>

                    <tr>
                      <th scope="row">기간</th>
                      <td>1주 (5일)</td>
                      <td>3개월/주 5일</td>
                      <td>2개월/주 5일</td>
                      <td></td>
                    </tr>

                    <tr>
                      <th scope="row">내용</th>
                      <td>오리엔테이션</td>
                      <td>기초교육</td>
                      <td>전문교육</td>
                      <td>현장채용</td>
                    </tr>

                    <tr>
                      <th scope="row">상세내용</th>
                      <td>
                        - 인성 교육<br />
                        - 에티켓 교육<br />
                        - 멘토 배정<br />
                      </td>
                      <td>
                        - 이론 교육<br />
                        - 기초현장 교육<br />
                        - M.T 2회<br />
                      </td>
                      <td>
                        - 인턴십 배정<br />
                        - 고객 응대<br />
                        - 전문 교육<br />
                      </td>
                      <td>
                        - 근무지 결정<br />
                        - 채용 / 근무<br />
                      </td>
                    </tr>

                    <tr>
                      <th scope="row">지원 및 근무조건</th>
                      <td>교통비.식비 지원 </td>
                      <td>6,030원 시급 적용<br /> 교통비.식비 지원</td>
                      <td>인턴십 계약</td>
                      <td>근로계약 체결</td>
                    </tr>

                    <tr>
                      <th scope="row">기타</th>
                      <td colspan="4">교육시간 및 요일은 협의 후 결정</td>
                    </tr>
                  </tbody>
                </table>
              </dd>
            </dl>
          </section>
					<!-- -->
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
