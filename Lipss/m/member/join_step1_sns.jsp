<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="member">
<div id="wrap" class="join_step1">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->
	<h1 id="subTitle">SNS 회원가입</h1>

	<!-- content// -->
	<main id="contents">

		<section>
			<!-- 필수정보// -->
			<div class="area">
				<h3>필수 정보</h3>
				<div class="name_area">
					<input title="이름 입력" placeholder="이름 (Full name)" type="text" class="inp_type1" />
					<div>
						<label for="sex_m"><input id="sex_m" type="radio" name="sex" class="rdo_boxtype" checked="checked" /><span>남</span></label>
						<label for="sex_f"><input id="sex_f" type="radio" name="sex" class="rdo_boxtype" /><span>여</span></label>
					</div>
				</div>

				<div class="email_area">
					<input type="text" title="이메일 입력" placeholder="E-mail" class="inp_type1" />
					<span class="at">@</span>
					<div class="select email">
						<select title="이메일 도메인 선택">
							<option>직접입력</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
							<option>naver.com</option>
						</select>
						<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력" />
					</div>
				</div>
				<button type="button" name="button" class="btn mgt8">중복확인<span>Check</span></button>
			</div>
			<!-- //필수정보 -->

			<!-- 추가정보// -->
			<div class="area add_area">
				<h3>추가 정보(선택)</h3>
				<input title="생년월일 입력" placeholder="생년월일 (Date of Birth / 생년월일8자리 : YYMMDD)" type="text" class="inp_type1 brith" />

				<div>
					<strong>마케팅 정보 수신 동의</strong>
					<label><input type="checkbox" class="chk_type1" /><span>E-mail</span></label>
					<label><input type="checkbox" class="chk_type1" /><span>SMS</span></label>
				</div>
			</div>
			<!-- //추가정보 -->

			<!-- 이용약관 안내// -->
			<div class="area">
				<h3>이용약관 안내</h3>
				<div class="agree_area">
					<label><input type="checkbox" class="chk_type1 all" /><span>전체 동의</span></label>
					<label><input type="radio" name="lang" class="rdo_type1 kor" checked="checked"/><span>한국어</span></label>
					<label><input type="radio" name="lang" class="rdo_type1 eng" /><span>ENGLISH</span></label>
				</div>
				<!-- 이용약관 : 한국어// -->
				<div class="agree_lang kor">
					<div class="agree_cont active">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>서비스 이용약관 <b>(필수)</b></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							제1조 (목적)<br />
							<br />
							이 약관은 ㈜LIPSS(이하 “회사”라 한다)가 제공하는 모든 인터넷 서비스와 통합멤버십 서비스(이하`서비스`라 한다)의 이용조건 및 절차에 관한 기본적인 사항 등을 규정하는데 그 목적이 있습니다.<br />
							<br />
							제2조 (정의)<br />
							<br />
							① “몰” 이란 주식회사 지엔코가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 “재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 지엔코스타일(GNCO STYLE), 코벳블랑(COVETBLAN) 등 온라인몰을 운영하는 사업자의 의미로도 사용합니다.<br />
							<br />
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
							<br />
							③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />
							<br />
							④ “비회원”이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑤ “SNS 로그인 회원”이라 함은 회원에 가입하지 않고 페이스북, 인스타그램, 네이버, 구글 등의 계정을 이용하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑥ “적립금”이라 함은 “몰”의 회원이 “몰”에서 상품을 구매할 경우 각 상품별로 해당 적립율에 따른 일정금액이 적립되는 것을 말합니다.<br />
							<br />
							⑦ “마일리지”라 함은 각 “몰”에서 활동 시 제공되는 활동 포인트를 말합니다.<br />
							<br /><br />
							제3조 (약관의 명시와 개정)<br />
							<br />
							① “회사”는 이 약관의 내용과 상호, 영업소 소재지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등), 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 “몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />
							<br />
							② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>개인정보 수집, 이용 동의 <b>(필수)</b></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							<!-- 수정 : 2018.06.07 // -->
							<strong>제1조 총칙</strong><br>
							1. 개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보 (당해 정보만을 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다)를 말합니다. <br>
							2. 한국후지필름(이하 ‘회사’라 합니다)에서 운영하는 립스 쇼핑몰(http://lipss.kr) (이하 통칭하여’사이트’라 합니다.)”은 회원의 개인정보보호를 가장 중요시하며, 『정보통신망이용촉진 및 정보보호 등에 관한 법률』, 『개인정보보호법』등의 관련 법률을 준수하고 있으며, 그에 의거한 개인정보처리방침을 정하여 이용자의 권익보호에 최선을 다하고 있습니다.<br>
							3. 당사는 개인정보처리방침을 통하여 회원께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다.<br>
							4. 당사는 개인정보처리방침을 사이트 첫 화면에 공개함으로써 회원께서 언제나 편리하게 보실 수 있도록 조치하고 있습니다.<br>
							<br>
							<strong>제2조 개인정보의 수집 항목 및 방법</strong><br>
							1. 당사는 “립스” 간편 회원 및 일반 회원 가입(이하 “간편회원” 이라고 합니다) 에게 회원가입을 위한 본인확인, 결제 서비스, 다양하고 편리한 서비스를 제공하기 위해 아래의 방법을 통해 개인정보를 수집하고 있습니다.<br>
							 ① “립스” 간편회원 가입 시(필수): 이름, 아이디, 패스워드, 휴대전화번호, 전자우편주소<br>
							 ② 일반 회원 가입 시(필수): 이름, 아이디, 패스워드, 휴대전화번호, 전자우편주소, 성별, 생년월일<br>
							 ③ 개인정보의 수집방법<br>
							  - 쇼핑몰, 상담게시판, 전화, 배송 요청<br>
							  - 로그분석 프로그램을 통한 생성정보수집, ‘쿠키(cookie)에 의한 정보 수집 <br>
							2. 비회원 고객<br>
							당사에서 운영하는 “립스” 쇼핑몰에서는 회원 외에도 비회원 고객 또한 상품을 구매할 수 있습니다. 이러한 경우 배송, 대금결제, 서비스 안내 등을 위해 최소한의 개인정보(주문자이름, 주소, 연락처, 이메일, 수령인정보, 대금결제 및 환불에 관한 정보 등)만을 요청하여 동의를 구합니다.<br>
							3. 허위 정보 입력 시 당사의 조치<br>
							회원은 자신의 정보에 대해 정확성 및 적법성을 보장해야 합니다. 만약 이를 위반하여 타인의 정보를 도용하는 등 각종 방법으로 허위 정보를 입력할 경우 당사는 해당 회원은 관계법령에 따라 신고 할 수 있으며 강제 탈퇴를 시킬 수도 있습니다.<br>
							<br>
							<strong>제3조 개인정보 수집/이용 목적</strong><br>
							당사는 서비스 제공을 위하여 필요한 최소한의 범위 내에서 다음 각 항목과 같은 목적으로 개인정보를 수집하고 있습니다.<br>
							1. 회원관리<br>
							① 회원제서비스를 위한 본인확인, 약관위반 회원에 대한 이용제한 및 서비스부정이용 행위 제재<br>
							② 공지/불만처리 등을 위한 원활한 의사소통의 경로 확보<br>
							③ 가입 및 탈퇴 의사 확인<br>
							2. 서비스 제공을 위한 계약 이행 및 정산<br>
							① 상품 및 서비스에 대한 주문 및 접수 확인, 대금 결제, 고객센터 운영 등<br>
							3. 신규 서비스 개발 및 마케팅 활용<br>
							① 서비스이용에 대한 분석작업 및 신규서비스 개발<br>
							② 회원에 대한 맞춤형 서비스, 각종 편의서비스 및 혜택 제공<br>
							③ 상품 및 서비스 안내, 이벤트정보 및 참여기회 제공(SMS, 전자우편 등)<br>
							④ 제휴행사 및 서비스 홍보를 위한 마케팅 활용, 마케팅을 위한 고객정보 분석 및 서비스개발<br>
							<br>
							<strong>제4조 개인정보 제공 및 공유</strong><br>
							1. 회원의 개인정보를 제공하거나 공유하는 경우에는 회원에게 제공 받거나 공유하는 자가 누구이며, 제공 또는 공유되는 개인정보 항목이 무엇인지, 개인정보를 제공하거나 공유하는 목적이 무엇인지, 보유 및 이용기간 등에 대해 개별적으로 사이트, 전자우편 또는 서면, 신청서 등을 통해 고지한 후 이에 대하여 별도 동의를 구합니다.<br>
							2. 당사는 회원의 개인정보를 사전 동의 없이 제3자에게 제공하지 않습니다.<br>
							<br>
							<strong>제5조 개인정보의 위탁처리</strong><br>
							1. 서비스 향상을 위해서 고객님의 개인정보를 위탁업체에 수집, 취급, 관리 등을 위탁할 수 있으며, 관계법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 규정하고 있습니다<br>
							① 수탁자, 수탁범위, 공유정보의 범위 등에 관한 사항을 서면, 전자우편 또는 웹사이트를 통해 게시<br>
							② 위탁계약시 서비스제공자의 개인정보보호 관련 지시엄수, 개인정보에 관한 비밀유지, 제3자 제공의 금지 및 사고시의 책임부담, 위탁기간, 처리 종료후의 개인정보의 반환 또는 파기 등을 규정하고 당해 계약내용을 서면 또는 전자적으로 보관<br>
							<br>
							<table>
								<thead>
									<tr>
										<th>수탁자</th>
										<th>위탁업무 내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											롯데로지스틱스㈜<br>
											KT, 엔에이치엔한국사이버결제 주식회사<br>
											코너스톤, 크레딕스<br>
											모스트피플
										</td>
										<td>
											상품배송 업무<br>
											SMS 전송, 카드결제<br>
											전산시스템의 구축 및 유지보수<br>
											고객상담 업무일체
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<strong>제6조 개인정보의 보유, 이용기간 및 파기</strong><br>
							1. 당사는 개인정보의 수집목적 또는 제공받은 목적이 달성된 때에는 회원의 개인정보를 지체 없이 파기합니다.<br>
							법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 관리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.<br>
							① 계약 또는 청약철회 등에 관한 기록 : 5년 보관<br>
							② 대금결제 및 재화 등의 공급에 관한 기록 : 5년 보관<br>
							③ 소비자 불만 또는 분쟁처리에 관한 기록 : 3년 보관<br>
							2. 개인정보의 파기절차 및 방법<br>
							① 파기시점<br>
							- 회원가입정보의 경우 : 회원탈퇴하거나 회원에서 제명된 때<br>
							- 장기 서비스 미 이용고객의 경우 : 최근 1년간 서비스 이용이 없을 경우 파기 30일 이전 회원에게 고지 후 동의가 없을 때<br>
							- 대금지급정보의 경우 : 대금의 완제일 또는 채권소멸시효기간이 만료된 때<br>
							- 배송정보의 경우 : 물품 또는 서비스가 인도되거나 제공된 때<br>
							② 파기방법<br>
							-종이에 출력된 개인정보 : 분쇄기로 분쇄하거나 소각<br>
							-전자적 파일 형태로 저장된 개인정보 : 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제<br>
							<br>
							<strong>제7조 개인정보의 열람, 정정 탈퇴 및 동의 철회 방법</strong><br>
							1. 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 탈퇴를 요구할 수 있습니다.<br>
							2. 이용자의 개인정보 조회, 수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을, 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br>
							3. 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.<br>
							4. 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 “회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다<br>
							<br>
							<strong>8조. 쿠키(cookie)의 운영 및 활용</strong><br>
							1. 당사는 개인화된 서비스를 제공하기 위하여 ‘쿠키(cookie)’를 사용하기도 합니다. ‘쿠키(cookie)’는 HTTP서버에서 사용자의 브라우저에 보내는 아주 작은 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다. 쿠키는 귀하의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다.<br>
							2. 당사는 다음과 같은 목적으로 쿠키를 사용합니다.<br>
							가. 회원과 비회원의 접속 빈도나 방문 시간 등을 분석하고 이용자의 취향과 관심분야를 파악하여 타겟(Target) 마케팅 및 서비스 개편 등의 척도로 활용합니다.<br>
							나. 당사가 진행하는 각종 이벤트에서 회원의 참여 정도 및 방문 수를 파악하여 차별적인 응모 기회를 부여하고 개인의 관심 분야에 따라 차별화된 정보를 제공하기 위한 자료로 이용됩니다.<br>
							다. 쇼핑한 품목들에 대한 정보와 관심 있게 둘러본 품목들에 대한 자취를 추적하여 다음 번 쇼핑 때 개인 맞춤 서비스를 제공하는데 이용합니다. 쿠키 브라우저의 종료시나 로그 아웃시 만료됩니다. 쿠키는 하루가 지나면 만료되며, 브라우저의 '쿠키삭제'시 삭제하실 수 있습니다.<br>
							<br>
							* 쿠키의 설치 및 거부<br>
							- 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 귀하는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br>
							- 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스 이용에 어려움이 있을 수 있습니다.<br>
							- 쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)<br>
							(1) [도구] 메뉴에서 [인터넷 옵션]을 선택<br>
							(2) [개인정보]를 클릭<br>
							(3) [고급]을 클릭<br>
							(4) 쿠키 허용여부를 선택<br>
							<br>
							<strong>제9조 개인정보보호 책임자</strong><br>
							1. 당사는 회원의 개인정보를 보호하고 개인정보와 관련한 불만사항 및 문의를 처리하기 위하여 아래와 같이 관련 부서 및 개인정보보호책임자를 지정하고 있습니다.<br>
							<br>
							<table>
								<thead>
									<tr>
										<th>구분</th>
										<th>담당</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>개인정보보호책임자</td>
										<td>안병규 팀장/마케팅팀 (bingkui@fujifilm.co.kr) 02) 3282-7150</td>
									</tr>

									<tr>
										<td>개인정보보호담당자</td>
										<td>정수웅 매니저/디자인전략담당 (swjung@fujifilm.co.kr) (02) 3282-7161 </td>
									</tr>
								</tbody>
							</table>
							<br>
							2. 기타 개인정보침해에 대한 신고 또는 상담이 필요하신 경우에는 아래 기관으로 문의하시기 바랍니다.<br>
							- 개인정보침해신고센터 (http://privacy.kisa.or.kr/ 국번없이 118)<br>
							- 개인정보분쟁조정위원회 (http://www.kopico.go.kr/ 1833-6972)<br>
							- 대검찰청 사이버수사과 (http://www.spo.go.kr / 02-3480-3570)<br>
							- 경찰청 사이버안전국 (http://cyberbureau.police.go.kr / 경찰민원콜센터 182)<br>
							<br>
							<strong>제10조. 개인정보 안전성 확보 조치</strong><br>
							회사는 회원의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.<br>
							 1. 개인정보 취급 직원의 최소화 및 교육개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br>
							2. 내부관리계획의 수립 및 시행개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.<br>
							3. 개인정보의 암호화: 이용자의 개인정보 중 비밀번호는 암호화 되어 저장 및 관리되고 있어 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하는 등의 별도 보안기능을 사용하고 있습니다.<br>
							4. 해킹 등에 대비한 기술적 대책은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신•점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.<br>
							5. 개인정보에 대한 접근 제한개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br>
							6. 비인가자에 대한 출입 통제개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br>
							<br>
							<strong>제11조 아동의 개인정보보호</strong><br>
							당사는 법정 대리인의 동의가 필요한 만 14세 미만 아동의 회원가입을 받고 있지 않습니다.<br>
							<br>
							<strong>제12조 광고성 정보 전송</strong><br>
							당사는 회원의 사전 동의를 받지 않으면 영리목적의 광고성 정보를 전송하지 않습니다.<br>
							당사는 상품정보 안내 등 온라인 마케팅을 위해 광고성 정보를 전자우편 등으로 전송하는 경우 정보통신망법의 규정에 따라 제목란 및 본문란에 다음 사항과 같이 회원께서 쉽게 알아 볼 수 있도록 조치합니다.<br>
							가. 제목란 : (광고)라는 문구를 제목란에 표시합니다.<br>
							나. 본문란 : 이용자가 수신거부의 의사표시를 할 수 있는 전송자의 명칭, 전자우편 주소, 전화번호 및 주소 등 이용자가 수신거부의 의사를 쉽게 표시할 수 있는 방법을 명시합니다.<br>
							<br>
							<strong>제13조 고지의 의무</strong><br>
							현 개인정보처리방침의 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지를 통해 고지할 것입니다.<br>
							<!-- // 수정 : 2018.06.07 -->
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>마케팅 정보 활용 동의 <span>(선택)</span></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							제1조 (목적)<br />
							<br />
							이 약관은 ㈜LIPSS(이하 “회사”라 한다)가 제공하는 모든 인터넷 서비스와 통합멤버십 서비스(이하`서비스`라 한다)의 이용조건 및 절차에 관한 기본적인 사항 등을 규정하는데 그 목적이 있습니다.<br />
							<br />
							제2조 (정의)<br />
							<br />
							① “몰” 이란 주식회사 지엔코가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 “재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 지엔코스타일(GNCO STYLE), 코벳블랑(COVETBLAN) 등 온라인몰을 운영하는 사업자의 의미로도 사용합니다.<br />
							<br />
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
							<br />
							③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />
							<br />
							④ “비회원”이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑤ “SNS 로그인 회원”이라 함은 회원에 가입하지 않고 페이스북, 인스타그램, 네이버, 구글 등의 계정을 이용하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑥ “적립금”이라 함은 “몰”의 회원이 “몰”에서 상품을 구매할 경우 각 상품별로 해당 적립율에 따른 일정금액이 적립되는 것을 말합니다.<br />
							<br />
							⑦ “마일리지”라 함은 각 “몰”에서 활동 시 제공되는 활동 포인트를 말합니다.<br />
							<br /><br />
							제3조 (약관의 명시와 개정)<br />
							<br />
							① “회사”는 이 약관의 내용과 상호, 영업소 소재지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등), 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 “몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />
							<br />
							② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>개인정보 제공 <span>(선택)</span></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							제1조 (목적)<br />
							<br />
							이 약관은 ㈜LIPSS(이하 “회사”라 한다)가 제공하는 모든 인터넷 서비스와 통합멤버십 서비스(이하`서비스`라 한다)의 이용조건 및 절차에 관한 기본적인 사항 등을 규정하는데 그 목적이 있습니다.<br />
							<br />
							제2조 (정의)<br />
							<br />
							① “몰” 이란 주식회사 지엔코가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 “재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 지엔코스타일(GNCO STYLE), 코벳블랑(COVETBLAN) 등 온라인몰을 운영하는 사업자의 의미로도 사용합니다.<br />
							<br />
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
							<br />
							③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />
							<br />
							④ “비회원”이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑤ “SNS 로그인 회원”이라 함은 회원에 가입하지 않고 페이스북, 인스타그램, 네이버, 구글 등의 계정을 이용하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑥ “적립금”이라 함은 “몰”의 회원이 “몰”에서 상품을 구매할 경우 각 상품별로 해당 적립율에 따른 일정금액이 적립되는 것을 말합니다.<br />
							<br />
							⑦ “마일리지”라 함은 각 “몰”에서 활동 시 제공되는 활동 포인트를 말합니다.<br />
							<br /><br />
							제3조 (약관의 명시와 개정)<br />
							<br />
							① “회사”는 이 약관의 내용과 상호, 영업소 소재지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등), 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 “몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />
							<br />
							② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
						</div>
					</div>
				</div>
				<!-- //이용약관 : 한국어 -->
				<!-- 이용약관 : ENGLISH// -->
				<div class="agree_lang eng">
					<div class="agree_cont active">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>영문 서비스 이용약관 <b>(필수)</b></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							<!-- 수정 : 2018.06.07 // -->
							<strong>User Agreement</strong><br><br>
							<strong>Chapter 1 General rules</strong><br><br>
							Art 1 (Purpose)<br>
							This agreement has the purpose of defining the company’s and the user’s rights, duties and responsibilities in using the service in relation to Internet website or mobile service (hereunder “the service”) provided by Lipss Shopping Mall managed by Korea Fujifilm Co., Ltd. (hereunder, “the Company”).<br>
		<br>
							Art 2 (Effects and change of the agreement)<br>
							1. This agreement shall come into force by being announced through service or by notifying the members by means of electronic mails, etc.<br>
							2. The Company may change the content of this agreement without prior notice when circumstances impose so, and the changed agreement shall come into force by announcing or notifying the same way as Clause 1.<br>
							3. In case of not agreeing to the changed agreement, a member may ask for cancelling membership (withdrawal) and if he continues to use the service even after the effective date of the changed speculation, he shall be regarded as agreeing to the change of the agreement.<br>
							Art 3 (Rules besides the agreement)<br>
							Matters not specified in this agreement shall be determined by the prescriptions of the Telecommunications Law, Telecommunication Service Act, Laws on Promotion of Information and Communications Network Utilization and other related laws.<br>
		<br>
							Art 4 (Definitions of terms)<br>
							Definitions of the terms used in this agreement are as follows:<br>
							1. The ‘”Site” refers to a virtual place of business installed by the “Company: in order to provide goods or services (hereunder Goods, etc.) for users using information and communications facilities such as computer so that they may deal in “Goods, etc.”<br>
							2. “Members” refer to ones who have registered as a member of “the Company” and who are allowed to keep using the service provided by “the Company.”<br>
							3. Nonmembers refer to the ones who are allowed to use the service provided by the “Company” without registering as a member.<br>
							4. “Users” refer to “Member and “Nonmember” who are allowed to receive the ‘service’ provided by the Company in accordance with this agreement by accessing the Site.<br>
							5. “ID” refers to the E-mail determined by the member himself and approved by the Company in accordance with the standards set by the Company in order to identify members and enable the use of service.<br>
							6. “Password” refers to the character string determined by the member himself and approved by the Company in accordance with the standards set by the Company in order to verify the member himself and enable a safe use of service, together with ID.<br>
		<br>
							<strong>Chapter 2: Agreement on using the service</strong><br><br>
							Art 5 (Realization of license agreement)<br>
							1. At time of subscribing to the service, reading this agreement and clicking the “Agree” button is considered to have agreed to this agreement.<br>
							2. The agreement is concluded by the Company’s approval on the customer’s application for using the service after he agrees to the agreement of license.<br>
		<br>
							Art 6 (Application for license)<br>
							. Application for end user license is made by the user when he has filled out the details in a fixed form of application required by the Company and then expressed the intention of agreement to this agreement.<br>
		<br>
							Art 7 (Protection of personal information)<br>
							1. When collecting the user’s personal information, the “Site” collects the minimum personal information within the extent needed for providing the service.<br>
							2. The Site collects information about members through information provided by members at the time of applying for the service and during their use of service and member’s personal information is used for the fulfillment of this license agreement and rendering the service specified on it.<br>
							3. “The Site” may not let out or distribute the members’ personal information obtained in relation to providing service to a third party and may not use it for commercial purpose, except for each one of the following items.<br>
							① When required by the authorities and related agencies for investigative purpose based on laws<br>
							②When required by the Information & Communication Ethics Commission<br>
							③And when required from the process set by laws<br>
							4. Within the extent of Item 3, the Site may prepare and use collective statistical data on personal information of the whole or part of members with relation to duties and may transmit cookies to member’s computer via the service. In this case, members may reject the receipt of coolies or change the setting of computer browser, which is used for warning about the receipt of cookies.<br>
		<br>
							Art 8 (Approval of the application for license)<br>
							1. Among the nonmembers who have applied for membership as in Art 6, the “Site” will register them as members unless they fall in each of the following:<br>
							① When it is impossible to provide service for technical reasons<br>
							② A false application at time of user registration, such as no real name or using another’s name<br>
							③ An application with omitting or miswriting the user registration details<br>
							④ An application with the purpose of harming the society’s peace and order, good morals and manners<br>
							⑤ And an application which doesn’t meet the requirements for license application set by the Company<br>
							2. In case the “Site” withholds the consent or doesn’t give consent to the license application, the Site shall inform the license applicant about this except when it is impossible to notify the license applicant for reason unattributed to the Site.<br>
							3. The Site won’t allow membership to child customers under 14 years old.<br>
		<br>
							Art 9 (Change of the license agreement details)<br>
							1. Members are allowed to inquire and modify their own personal information at any time.<br>
							2. In case of change in details recorded at tine of license application. Members should make correction through service menu and are held responsible for problems caused by not changing member’s information.<br>
		<br>
							<strong>Chapter 3 Purchase agreement</strong><br><br>
							Art 10 (Application for purchase)<br>
							1. From the “Site”, you can make purchase on products as member or nonmember.<br>
							2. The user shall apply for purchase in the following or its similar way and the “Site” shall provide each detail of the following intelligibly at the user’s application for purchase. However, for members, applying item 2 or item 4 can be excluded.<br>
							①Search and choice of products<br>
							②Input of information on order and delivery such as one’s name, address, phone number, E-mail address (or mobile phone number)<br>
							③Purchase application for products and confirmation about this<br>
							④Choice of payment method<br>
		<br>
							Art 11 (Conclusion of agreement)<br>
							1. Except for each of the following, the “Site” gives consent to purchase application by notifying the acknowledgement of receipt.<br>
							① Falsehood, omission of writing, or miswriting in the content of application<br>
							② Other cases where consent to purchase application is considered rather problematic for technical reasons<br>
							2. It is considered that agreement has been concluded at the time when the content of purchase reached the user in the form of notifying acknowledgement of receipt.<br>
		<br>
							<strong>Chapter 4 Payment</strong><br><br>
							Art 12 (Payment method)<br>
							1. How to pay price for goods or services purchased from the “Site” may be selected among each of the following methods<br>
							① Payment by each kind of card accepted by the Site, such as bank card, credit card, etc.<br>
							② Other payments by means of electronic method, etc.<br>
		<br>
							Art 13 (Notification of acknowledging receipt, change and cancellation of purchase application)<br>
		<br>
							1. The Site notifies the user of acknowledgement of receipt when there is a user’s application for purchase.<br>
							2. If there is disagreement in his expression of intentions, the user receiving the notification of receipt acknowledgement may ask for change or cancellation of purchase application before delivery after receiving the advice of receipt acknowledgement. In case of the user’s request before delivery,, the Site can manage it in accordance with the request.. However, if the price has already been paid, process will follow the rules set by the Company.<br>
		<br>
							<strong>Chapter 5 Delivery, cancellation, exchange, and refund</strong><br><br>
							Art 14 (Delivery)<br>
							1. If there is no separate agreement on the time of supplying Goods, etc. with the user, needed measures of make-to-order, packing and other measures in need should be taken so that Goods. Etc. may be delivered within seven (7) days from the day when the user makes a subscription. However, in case the Company has already received the whole or part of price for Goods, etc. action in need shall be taken for supply of Goods. etc. within three (3) business days from the day of receiving the whole or part of price. Here, the Company shall take a proper measure so that the user may check the supply procedure and progress of Goods, etc.<br>
							2. On the goods purchased by the user, the “Site” must state means of delivery, nearer of expense by means, delivery period by means, etc.<br>
		<br>
							Art 15 (Cancellation, exchange and refund)<br>
							1. In case it is impossible to deliver goods or provide service the user has made purchase application for reasons of absence of stock, etc. must notify the user of the reason without delay. In case of receiving the price of goods or services in advance, cancellation of agreement and refund procedure should be taken within three (3) days from the day of receiving the price and if not, within three (3) days from the day of the reason occurring.<br>
							2. The user may make cancellation of subscription, etc. on the relevant agreement within each period of the following.<br>
							① Seven (7) days from the day of receiving a letter on the content of agreement, but in case of supply of Goods, etc. made later than receiving the letter, seven (7) days from the day of receiving the supply of Goods, etc. or starting the supply of Goods, etc.<br>
							② In case of not receiving a letter on the content of agreement, receiving a letter without the address of the Company, etc. or cancellation of subscription, etc. is impossible within the period of item 1 for the Company’s change of address, etc. seven (7) days from the day of becoming or could become aware of the Company’s address.<br>
							3. The user may not make cancellation of subscription, etc. pursuant to item 2 against the Company’s will in each case of the following. However, in case the Company has not taken measures pursuant to item 6, cancellation of subscription etc. is possible even for the case of the rules falling in item 2 to item 5.<br>
							① Return or exchange for made-to-order products, following a simple reimbursement based on the Article 21 of Consumer Protection Act in Electronic Commerce, etc.<br>
							② Loss of or damage to goods for reasons attributed to the user except for damage to packing, with the purpose of checking the content of Goods, etc.<br>
							③ Remarkable decrease in the value of Goods from the user’s use or partial consumption<br>
							④ Remarkable decrease in the value of Goods with elapse of time, making it hard to be sold again<br>
							⑤ Damage to the packing of Goods which can be copied<br>
							⑥ Other cases set by the presidential law for the safety of transaction<br>
		<br>
							4. Notwithstanding item 2 and item 3, in case of different content of Goods, etc. from the expressed advertisement or different fulfillment from content of agreement, the user may cancel subscription, etc. within three (3) months from the day of receiving the Goods, etc. or within thirty (30) days from the day of becoming or could become aware of the fact.<br>
							5. In case of cancellation of subscription, etc. pursuant to item 2 or item 3 in writing, it comes into force on the day of sending the letter with that expression of intention written in.<br>
							6. As to Goods, etc. for which the Company cannot cancel subscription, etc. in accordance with the rules of Clause 3, item 2 to item 4, the user’s cancellation of subscription will not be restricted if the Company has failed to take such measures as clear expression of the fact on the packing of goods or otherwise in another place easy to be found by the user, or in such way of providing trial-use products.<br>
							7. In case of return of Goods from the user, the Company shall make refund for the paid price of Goods etc. within three (3) business days. Here, if the Company delays the refund of Goods, etc. to the user, the Company will pay delay interest calculated by multiplying the delay interest rates stipulated by the Consumer Protection Law in Electronic Commerce, etc., Enforcement Ordinance Art 21-2.<br>
							8. As to making refund for the above price, in case the user has paid the price for Goods, etc. by the means of credit card or E-money, the Company will request the operator who provided the relevant means of payment to stop or cancel the demand for price of Goods, etc. without delay<br>
							9. As to cancellation of subscription, etc. the user will cover the expense needed for the return of supplied goods, etc. The Company will not ask for damages, or a penalty for cancellation of subscription. However, in case of cancellation of subscription with difference in expressed advertising from the content of Goods, etc. or with fulfillment different from content of reservation, the Company will cover the expense needed for the return of Goods, etc.<br>
							10. When the user cover the expense for sending in being provided with Goods, etc. the Company shall express who is going to cover the expenses at time of cancelling subscription clearly enough for the user to be informed of.<br>
							For made-to order products, return and exchange based on simple reimbursement in accordance with Article 21 of the Consumer Protection Act in electronic commerce, etc.<br>
		<br>
							<strong>Chapter 6 Obligations of the contracted parties</strong><br><br>
							Art 16 (Obligations of the “Site”)<br>
							1. When an opinion or complaint raised from a member is considered just, the Company must take care of it promptly. In case of difficulty with a prompt measure, the Company shall notify the member of the reason and disposal schedule by e-mail; phone, etc.<br>
							2. The Site will abide by the content presented at Article 7, item 1, 2 and 3 in relation to protection of the member’s personal information.<br>
							3. The Site will make constant efforts to provide a continued and stable service and, in case of disorder of loss of equipment, will repair and restore it without delay. However, in case of natural disaster, state of emergency or other inescapable circumstances, the Company may discontinue or suspend the service temporarily.<br>
							4. The Site will make efforts to provide conveniences for members in terms of contract-related procedure and content with members such as conclusion of the license, change and termination of contract details, etc.<br>
		<br>
							Art 17 (Obligations of members)<br>
							1. In relation to the use of service, members are not allowed to commit deeds falling in each of the following.<br>
							① Acts of embezzling another member’s ID, password, etc.<br>
							② Acts of copying the information obtained through this service for the purpose other than the member’s use, using it for publication and broadcasting, or delivering it to a third party without the Company’s prior consent<br>
							③ Acts of circulating the content which infringes on another’s rights to his portrait, copyright, intellectual rights and trade secret to others by means of posting, e-mailing or others<br>
							④ Acts of circulating vulgar and obscene information, sentences, figures, etc. which go against public order and good morals and manners to others by means of transmitting, posting, e-mailing or others<br>
							⑤ Acts of circulating the insulting or threatening contents that can violate another’s privacy to others by means of transmission, posting, e-mailing or others<br>
							⑥ Acts objectively considered to connect with crime<br>
							⑦ Acts of collecting or saving another user’s personal information without obtaining the approval from the Company<br>
							⑧ Other acts in violation of the laws<br>
							2. Members are exclusively held responsible for managing their ID and password. All responsibility for any results caused by neglect of management and illegal use of the ID and password conferred to the members will be put to members.<br>
							3. In case of finding the fact that their ID or password has been used illegally, members must report it to the “Site” promptly. The member shall be held responsible for all the results brought on by not reporting it.<br>
							4. Members shall abide by the restricted uses which are posted on the service announcements or separately notified by content.<br>
							5. Members are not allowed to carry on with business using the service without prior consent of the Site. The Company has no responsibility for the result of such business and the result incurred by doing business which has violated the Agreement. If such activity of business has caused harm to the Company, the member will be liable and forced to pay damages to the Company.<br>
		<br>
							<strong>Chapter 7 Provision and use of service </strong><br><br>
							Art 16 (Start of using service0<br>
							1. The “Site” will start service at the time of approving a member’s application for use, but some partial service will start at a designated date.<br>
							2. In case of failing to start service due to business or technical difficulty on the part of the “Site,” this will be announced publically to the Shopping Mall or notified to members.<br>
		<br>
							Art 19 (Hours of using the service)<br>
							1. The use of service will be 365 days and 24 hours in principle. However, service can be discontinued temporarily for the Company’s business or technical reasons, and for the period set by the Company for operational purpose, too. In such case, the “Site” will announce this publically in advance or afterwards.<br>
							2. The Company may decide on the hours of availability by the content of service and in this case,, will announce the content publically in advance through the service.<br>
		<br>
							Art 20 (Charge and paid information)<br>
							1. The service provided by the Company is basically free. However, for separate paid service provided by the Company at time of providing service, it is not available until paying the charge stated on the relevant service.<br>
							2. For charges to be paid by license customers and method of paying charge will follow the instruction by service.<br>
							Art 21 (Change of service content)<br>
							1. In case the content of service is added, changed or deleted, the Company will announce or notify the needed details to members.<br>
							2. In case there is inevitable situation or circumstances, content of the service rendered can be changed.<br>
							3. The “Site” will notify diverse information considered needed for users during their use of service to the applicable address such as E-mail, etc.<br>
		<br>
							Art 22 (Restriction and suspension of service)<br>
							1. The “Site” may occasionally change the whole or partial content of the existing service in order to improve the service without separate notification.<br>
							2. The “Site” may restrict or discontinue the whole or part of service in case of falling in each of the following:<br>
							① When it is inevitable for service due to construction work for repairing equipment<br>
							② When members are interrupting the Company’s business activity<br>
							③ When normal use of service is threatened because of power failure. Disorder of all equipment, or influx of utilization<br>
							④When there is an act of God such as natural disaster, a state of national emergency, etc.<br>
		<br>
							Art 23 (Providing information and placing advertisements)<br>
							1. In managing the service, the Company may place each kind of information on the service screen or after receiving the member’s explicit agreement, may provide it for members by means of e-mail or old mail.<br>
							2. In relation to service operation, the Company may place it on the service screen and, after receiving an explicit agreement from members, may pot advertisements on SMS, E-mail, etc.<br>
							Art 24 (Deletion of posting or content)<br>
							1. The “Site” considers the members’ posting to be precious and protects them with best efforts in order not to be falsified, damaged or deleted. However, in case all the content (Including Inter-member Communication) in the service intended by members to post or communicate are considered to fall in the following cases, they may be deleted without prior notice and the Company shall take no responsibility for it.<br>
							① Spam-like posting (e.g. advertising of a specific site, placing information unrelated to the Company)<br>
							② Content of dishonoring by slandering or maligning the Company, another member or a third party<br>
							③ A violation of public order or good morals and manners<br>
							④ Content considered related to a criminal act<br>
							⑤ Publicity of another without consent, content of violating rights to the Company’s or a third party’s copyright, etc.<br>
							⑥ Posting deviating from the topic of the bulletin board<br>
							⑦ Other cases considered to violate the laws or the Company’s guideline, etc.<br>
							⑧ The Company may separately determine the detailed guideline for use related to postings for enforcement while members should list or delete each kind of postings (communication among members) in accordance with the guideline<br>
							Art 25 (Copyright to postings)<br>
							Rights to all data posted in the Service (including inter-member communication) are as follows:.<br>
							1. Rights and liabilities for postings lie in the poster and the Company will not be able to use this for profit purpose besides posting in the service without the poster’s consent, except for nonprofit case where the Company has the right of posting in another service<br>
							2. Members are not allowed to use or let a third party use the data posted on the service for profit purpose such as acts of processing or selling the information obtained using the service and infringement of copyright on a posting is subject to the relevant laws.<br>
		<br>
							Art 8 Termination of agreement and restriction of use<br>
							Art 26 (Termination of agreement and restriction of use)<br>
							1. In case a member wants to cancel the service license agreement, he must apply for cancellation either himself on the Shopping Mall or in a separate method set by the “Site.”<br>
							2. At time of changing and cancelling membership information, member information at shopping mall will be inclusively changed and withdrawal is made automatically.<br>
							3. If a member fails to fulfill a member’s duty prescribed in Article 17, the Company may terminate the license agreement or suspend the use of service without prior notice.<br>
							4. The Company may advise a member without history of use for one (1) year after subscribing to membership of asking if he has an intention for use and, if there is no response within the time limit set by the Company, may terminate the license agreement.<br>
							5. The member may file an objection to the Company’s action under item 2 and item 3 of this article.<br>
							6. In case the objection under item 5 of this Article is considered just by the “Site,” the Company will immediately resume the use of service.<br>
		<br>
							Art 27 Prohibition of transfer<br>
							Members shall not transfer or present the authority for service use or other contractual status to others and all rights and liabilities including the copyright on postings rest in the member who has posted it.<br>
		<br>
							<strong>Chapter 9: Compensation for damages etc.</strong><br><br>
							Art 26 (Compensation for damages)<br>
							1. This service is provided for the member’s convenience and while the charge for service use is free, the Company will not be responsible for any damages generated in relation to the use of this service.<br>
							2. In case a member’s violation of this agreement has caused damage to the Company, the member who has violated this agreement shall make compensations for all damages incurred on the “Site.”<br>
							3. In case a member’s illegal act committed in using the service or his violation of this agreement has caused the Company to receive a claim for damages or each kind of objection including lawsuit from a third party besides the relevant member, the relevant member shall give the “Site” immunity at his own responsibility and expense and if the “Site”: is not exempted, the relevant member shall make compensations for all damages to the Company incurred from it.<br>
		<br>
							Art 29 (Immunities from responsibility)<br>
							1. In case of failing to provide service due to natural disaster, or Force majeure, the Company will be exempted from the responsibility for rendering service.<br>
							2. The “Site” shall not be held responsible for difficulty in using the service for reasons attributable to members.<br>
							3. The “Site” will not be held responsible for the loss of profit expected by a member using the service or for the loss caused by the data obtained through service.<br>
							4. The “Site” will not be responsible for the content of the information, data and facts posted by members on the service such as reliability, accuracy, etc.<br>
							5. The “Site” will not be responsible for the damage caused by a subscriber’s willful negligence among damages incurred to him in relation to the use of service.<br>
		<br>
							Art 30 (Competent court)<br>
							1. Lawsuit on the dispute of electronic transaction incurred between the “Site” and user(s) shall be raised to the competent court on the Code of Civil Procedure.<br>
							2. Lawsuit on electronic transaction raised between the “Site” and user(s) shall be subject to the laws of Korea.<br>
		<br>
							Additional rules (Enforcement date)<br>
							This agreement will be put into force from the date of May 11, 2018.<br>
							<!-- // 수정 : 2018.06.07 -->
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>영문 개인정보 수집, 이용 동의 <b>(필수)</b></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							<!-- 수정 : 2018.06.07 // -->
					<strong>Personal information processing policy </strong><br><br>
					<strong>Art 1 General Rules </strong><br><br>
					1. Personal information is the information about a person alive and refers to the information capable of identifying the relevant person by details such as one’s name included in the relevant information (It includes things for identification by easy combination with other information even if the relevant information alone is not able to identify the relevant person).
					<br>
					2. LIPSS Shopping Mall (http://lipss.kr) operated by Korea Fujifilm Co., Ltd. (hereunder, “the Company”) (hereunder called “the Site,” collectively) attaches the top importance to protection of the members’ personal information, abides by Act on promotion of information and communications network utilization and information protection, etc. and related laws including Law on Protection of Personal Information, and is giving our best to protection of the user’s rights and interest by setting up the personal information processing policy based on them.<br>
					3. Our company will tell you for what use and how the personal information members are providing through the personal information processing policy is being used and what measure is being taken to protect personal information.<br>
					4. Our company has released the personal information processing policy on the first screen of the site to make sure that members are easy to look at all the times.<br>
					<br>
					<strong>Art 2 Items and method of collecting personal information</strong><br><br>
					1. Our company is collecting personal information through the method below to provide verification on one’s identity for subscription, payment service, diverse and convenient services for “LIPSS” convenient member (hereunder “convenient member”) and ordinary member.<br>
					① Essentials for subscription to “LIPSS” convenient membership: One’s name, ID, password, mobile phone number, E-mail address<br>
					② Essentials for subscribing to ordinary membership: One’s name, ID, password, mobile phone number, E-mail address, gender, date of birth<br>
					③ Method of collecting personal information<br>
					  - Shopping mall, bulletin board for consultation, phone, request for delivery<br>
					  - Collection of created information via log analysis program, Collection of information by means of cookie<br>
					2. Nonmember customers<br>
					At “LIPSS Shopping Mall” operated by our company, nonmember customers as well as members are able to purchase products. In that case, we only ask for the minimum personal information (orderer’s name, address, contact, E-mail, recipient’s information, information on payment and refund, etc.) for delivery, payment, instruction on service, etc. and seek consent.<br>
					3. Our company’s measure taken for the input of false information Members must be sure of the accuracy and legality on their given information. If false information is put in violation every possible way including embezzling another’s information, our company may report the relevant member in accordance with the laws and force him to leave.<br>
<br>
					<strong>Art 8 Purpose of collecting/using personal information </strong><br><br>
					Our company is collecting personal information for each purpose of the following within the minimum extent needed for provision of service.<br>
					1. Management of members<br>
					① Verification on person himself for membership service, restriction on usage for members who have violated the stipulation, sanctions on illegal use of the service<br>
					② Security of route for smooth communication for public announcement / handling complaints, etc.<br>
					③ Verification of the intention for subscription and withdrawal<br>
					2. Fulfillment of an agreement for rendering service and settlement of accounts<br>
					① Acknowledge the order and receipt of goods and services, price settlement, operation of Customer Center, etc.<br>
					3. Development of new services, utilization of marketing<br>
					① Analytic work on the use of service and development of new services<br>
					② Provide services customized to members, every kind of convenient services and benefits<br>
					③ Provide instructions on products and services, event information and opportunity for participation (SMS, E-mail, etc.)<br>
					④ partnership event, use of marketing for promotion of services, Customer information analysis for marketing, and development of services<br>
<br>
					<strong>Art 4 Provision and sharing of personal information</strong><br><br>
					1. For case of providing or sharing the members’ personal information, we announce who is going to be provided with or share it, what are the items of personal information to be provided or shared, what is the purpose of providing or sharing it, period of possession and usage, etc. individually through the site, E-mail, document or an application and then seek separate agreement on them.<br>
					2. Our company will not provide the members’ personal information to a third party without prior consent<br>
<br>
					<strong>Art 5 Consigned handling of personal information</strong><br><br>
					1. We may consign customers’ personal information to an outsourced subcontractor for collection, handling, management, etc. to improve service with regulations based on laws so that personal information may be managed safely at time of making a trust contract.<br>
					① Post details of the trustee, extent of trust and shared information, etc. via document, E-mail or website.<br>
					② At time of trust contract, we stipulate strict observance of the service provider’s order related to the protection of personal information, confidentiality of personal information, prohibition of leakage to a third party,, bearing responsibility at tine of accident, period of trust, return or scrapping of personal information after the end of handling and we keep the relevant content of agreement in a document or electronically.<br>
<br>
					<table>
						<thead>
							<tr>
								<th>Trustee</th>
								<th>Content of trusted duties</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Lotte Logistics Co., Ltd.<br>
									KT, LHN Korea Cyber Settlement Co.  <br>
									CornerStone, Kredix<br>
									MostPeople
								</td>
								<td>
									Duties of product delivery<br>
									SMS transmission, settlement by card<br>
									Construction of computer system & ,maintenance<br>
									All of customer consultation
								</td>
							</tr>
						</tbody>
					</table>
<br>
					<strong>Art 6 Possession, use period and scrapping of personal information</strong><br><br>
					1. Our company scraps members’ personal information without delay when the purpose of collecting and receiving personal information has been met.<br>
					In case of need for possession for a certain period for reasons of verifying the relationship of management duties related to transaction as follows based on the regulations of the laws concerned, we possess it for a certain period.<br>
					① Record on an agreement or cancellation of subscription, etc.: To be kept for 5 years<br>
					② Records on price settlement and supply of goods, etc.: To be kept for 5years<br>
					③ Records on consumer complaint or disposal of disputes: To be kept for 3 years<br>
					2. Procedure and method of scrapping personal information<br>
					① Time point for scrapping<br>
					- For information of becoming a member: When one leaves or is expelled from membership<br>
					- For customers not using the regular service: In case of no usage of service for the past 1 year, when there is no consent even after informing the member 30 days before scrapping<br>
					- For information on paying the price: On the day of complete payment or when the effective period of credit termination expires<br>
					- For delivery information: When product or service is delivered or provided:<br>
					② Method of scrapping<br>
					- Personal information put out on paper – will be crushed with a grinder or burned<br>
					- Personal information kept in the form of electronic file – will be deleted using technical method of disabling regeneration of records<br>
<br>
					<strong>Art 7 Reading, correction of personal information and method of withdrawal and cancellation of agreement</strong><br><br>
					1. The user can inquire or modify his listed personal information at any time and demand his withdrawal.<br>
					2. To inquire or modify the user’s personal information, click change personal information (or modify member’s information) and to cancel subscription (leave consent) click ‘Leave membership.’ After the process of verifying the person, it is possible to read, correct or leave in person. Or if you contact a person in charge of personal information by a document, phone or E-mail, we will take care of it without delay.<br>
					3. If the user has called for correction on the error of personal information, we will not use or provide personal information until correction has been finished. Besides, in case of already providing wrong personal information for a third party, we will notify the third party of the result of correction without delay to have the correction accomplished.<br>
					4. The Company manages the personal information cancelled or deleted by the user’s request in accordance with specifications in “the possession and use period of the personal information collected by “the Company” and take care of it so that it may not be read or used for any other purposes.<br>
<br>
					<strong>Art 8 Operation and utilization of cookies </strong><br>
					1. Our company also uses cookies to provide personalize information. Cookie, a very small bundle of data sent from HTTP server to the user’s browser, is stored in hard drive of a member’s computer. Cookie identifies your computer but doesn’t identify you personally.<br>
					2. Our company uses coolies for the following purposes.<br>
					a) By analyzing member’s and nonmember’s frequency of access or visiting hours and grasping the users’ tastes and areas of interest, we use them as a measure for target marketing and service reorganization.<br>
					b) They are used as data for providing differential opportunities for subscription by grasping the member’s degree of participation and number of visits in each of events managed by our company and for providing differentiated information according to personal area of interest.<br>
					c) They are used to provide personal customized service at next shopping by tracking information about diverse items and those you were looking at attentively. Cookie expires at the time of finishing cookie browser or of logout. Cookie expires after one day and can be deleted at the time of deleting cookie in browser.<br>
<br>
					* Installation and rejection of cookie<br>
					- You have an option for installation of cookies. Therefore, you may allow all cookies by setting an option on web browser, go through confirmation each time cookie is saved, or reject the storage of all cookies.<br>
					- However, rejecting the storage of coolies may cause difficulty in using some service which requires login.<br>
					- Method of designating whether to allow installation of cookies (for case of Internet Explorer)<br>
					(1) [Tool] Select [Internet option] on menu<br>
					(2) Click [Personal information]<br>
					(3) Click [High level]<br>
					(4) Select whether to allow coolies or not<br>
<br>
					<strong>Art 9 Person in charge of protecting personal information </strong><br><br>
					1. Our company designates relative departments and persons in charge of protecting personal information as below in order to protect the members’ personal information and deal with complaints and inquiry related to personal information.<br>
<br>
					<table>
						<thead>
							<tr>
								<th>Division</th>
								<th>Person in charge</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Person in charge of personal information protection
								</td>
								<td>
									Byoung-gyu Ahn, Head of marketing team (bingkui@lotte.net) (02) 3282-7150
								</td>
							</tr>

							<tr>
								<td>
									Manager for personal information protection
								</td>
								<td>
									Su-woong Chung, Manager of design strategy (suwoong@lotte.net) (02) 3282-7161
								</td>
							</tr>
						</tbody>
					</table>
<br>

					2. If you need report or consultation on violating personal information, please make inquiry to the following agencies.<br>
					- Center of Reporting Personal Information Invasion (http://privacy.kisa.or.kr/ 118 without a phone exchange number)<br>
					- Personal Information Dispute Mediation Committee (http://www.kopico.go.kr/ 1833-6972)<br>
					- Supreme Public Prosecutors Office, section of cyber investigation (http://www.spo.go.kr / 02-3480-3570)<br>
					- National Police Agency, cyber safety bureau (http://cyberbureau.police.go.kr / Police civil complaint call center 182)<br>
<br>
					<strong>Art 10 Measure to secure the stability of personal information</strong><br>
					The Company is conducting technical, managerial and physical measures needed for security of stability so that personal information may not be lost, stolen, leaked, falsified or damaged in handling the members’ personal information<br>
					1. Minimization and education of personnel in charge of personal information - We are conducting the measure of managing personal information by designating and minimizing them with duties restricted to them.<br>
					2. Establishment and implementation of an internal management plan - For safe processing of personal information, we are establishing and implementing an internal management plan.<br>
					3. Encryption of personal information – Among pieces of personal information, password is so stored and managed in encryption that only the person himself can be aware of. For important data, we are using a separate function of security such as encryption of files and transmitted data.<br>
					4. Technical countermeasure against hacking, etc. - To prevent the leakage and damage of personal information caused by hacking or computer virus, we have installed a security program with periodic renewed check and are monitoring and cutting it off technically and physically by installing the system in a zone with controlled access from outside.<br>
					5. Restriction of access to personal information - We are taking needed measures to control access to personal information through the grant, change and cancellation of the authority on access to the database system which processes personal information. We are controlling access without permission from outside using invasion interception system.<br>
					6. Access control on unauthorized persons - We are operating the established procedure of access control with a separate place for physical storage of personal information.<br>
<br>
					<strong>Art 11 Protection of a child’s personal information</strong><br>
					Our company does not permit membership of children under fourteen, who requires the consent from a legal representation.<br>
<br>
					<strong>Art 12 Transmission of quasi-advertising information</strong><br>
					Our company doesn’t transmit advertising information for profit purpose without receiving the member’s prior consent.<br>
					In case of transmitting ad-like information including a catalog by E-mail etc. for online marketing, our company makes sure that members recognize it easily by placing the column of body underneath that of title as follows according to the provisions of the Information and Communication Network Act.<br>
					a) Column of title: The phrase of advertisement is expressed in the column of title.<br>
					b) Column of body: Transmitter’s name, E-mail address, phone number and address are specified in the way that the user may express his intention to reject receipt easily.<br>
<br>
					<strong>Art 13 Duty of disclosure</strong><br><br>
					In case there is addition, deletion or modification of this current personal information processing policy, we will announce it seven (7) days before revision at the latest through the Homepage.
					<!-- // 수정 : 2018.06.07 -->
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>영문 마케팅 정보 활용 동의 <span>(선택)</span></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							제1조 (목적)<br />
							<br />
							이 약관은 ㈜LIPSS(이하 “회사”라 한다)가 제공하는 모든 인터넷 서비스와 통합멤버십 서비스(이하`서비스`라 한다)의 이용조건 및 절차에 관한 기본적인 사항 등을 규정하는데 그 목적이 있습니다.<br />
							<br />
							제2조 (정의)<br />
							<br />
							① “몰” 이란 주식회사 지엔코가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 “재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 지엔코스타일(GNCO STYLE), 코벳블랑(COVETBLAN) 등 온라인몰을 운영하는 사업자의 의미로도 사용합니다.<br />
							<br />
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
							<br />
							③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />
							<br />
							④ “비회원”이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑤ “SNS 로그인 회원”이라 함은 회원에 가입하지 않고 페이스북, 인스타그램, 네이버, 구글 등의 계정을 이용하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑥ “적립금”이라 함은 “몰”의 회원이 “몰”에서 상품을 구매할 경우 각 상품별로 해당 적립율에 따른 일정금액이 적립되는 것을 말합니다.<br />
							<br />
							⑦ “마일리지”라 함은 각 “몰”에서 활동 시 제공되는 활동 포인트를 말합니다.<br />
							<br /><br />
							제3조 (약관의 명시와 개정)<br />
							<br />
							① “회사”는 이 약관의 내용과 상호, 영업소 소재지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등), 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 “몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />
							<br />
							② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
						</div>
					</div>
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>영문 개인정보 제공 <span>(선택)</span></span></label>
							<a href="#" class="fold">접기</a>
						</div>
						<div class="agree_body">
							제1조 (목적)<br />
							<br />
							이 약관은 ㈜LIPSS(이하 “회사”라 한다)가 제공하는 모든 인터넷 서비스와 통합멤버십 서비스(이하`서비스`라 한다)의 이용조건 및 절차에 관한 기본적인 사항 등을 규정하는데 그 목적이 있습니다.<br />
							<br />
							제2조 (정의)<br />
							<br />
							① “몰” 이란 주식회사 지엔코가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 “재화 등”을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 지엔코스타일(GNCO STYLE), 코벳블랑(COVETBLAN) 등 온라인몰을 운영하는 사업자의 의미로도 사용합니다.<br />
							<br />
							② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
							<br />
							③ “회원”이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br />
							<br />
							④ “비회원”이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑤ “SNS 로그인 회원”이라 함은 회원에 가입하지 않고 페이스북, 인스타그램, 네이버, 구글 등의 계정을 이용하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							<br />
							⑥ “적립금”이라 함은 “몰”의 회원이 “몰”에서 상품을 구매할 경우 각 상품별로 해당 적립율에 따른 일정금액이 적립되는 것을 말합니다.<br />
							<br />
							⑦ “마일리지”라 함은 각 “몰”에서 활동 시 제공되는 활동 포인트를 말합니다.<br />
							<br /><br />
							제3조 (약관의 명시와 개정)<br />
							<br />
							① “회사”는 이 약관의 내용과 상호, 영업소 소재지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등), 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 알 수 있도록 “몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br />
							<br />
							② “회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
						</div>
					</div>
				</div>
				<!-- //이용약관 : ENGLISH -->
			</div>
			<!-- //이용약관 안내 -->

			<p class="attention">
				만14세 이상 회원가입이 가능하며,<br />
				회원가입 시 필수 약관에 동의하셔야 합니다.
			</p>

			<a href="#" class="btn_purple">회원가입<span>Join</span></a>
		</section>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
