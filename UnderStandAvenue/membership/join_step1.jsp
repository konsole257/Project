<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="membership";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="회원가입";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="membership">
		<div class="join step1">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/membership/terms.jsp"><strong>회원가입</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">회원가입</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 회원이 되시면 다양한 서비스를 이용할 수 있습니다.</p>

					<!-- -->
					<div class="join_path">
						<strong class="hide">회원가입 진행 위치</strong>

						<ol>
							<li class="step1 on"><strong>약관동의</strong></li>
							<li class="step2 ">회원정보 입력</li>
							<li class="step3 ">가입 완료</li>
						</ol>
					</div>

					<div class="terms">

						<div class="all_check_area">
							<label for="all_check">모든 약관에 동의합니다.</label><input type="checkbox" id="all_check" data-fn="allCheck" />
						</div>

<!-- 2016-03-24 : 수정 // -->
<!-- Under Stand Avenue 이용약관 // -->
						<div class="terms_area">
							<section>
								<div class="tit_area">
									<h3>UNDER STAND AVENUE 이용약관</h3>
									<span class="input_wrap"><label for="site">약관동의</label><input type="checkbox" id="site" /></span>
								</div>

								<section>
									<strong>제1조 목적</strong><br />
									이 약관은 UNDER STAND AVENUE(이하 “회사”)가 운영하는 인터넷 사이트를 통해 제공하는 전자상거래 관련 서비스(이사 “서비스)를 이용함에 있어 회사와 이용자의 권리‧의무 및 책임사항을 규정함을 목적으로 한다. <br />
									※ PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용한다. <br />
									<br />
									<strong>제2조 정의</strong><br />
									1. “회사”란 UNDER STAND AVENUE가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버 몰을 운영하는 사업자의 의미로도 사용한다. <br />
									2. ‘이용자’란 “회사”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말한다. <br />
									3. ‘회원’이라 함은 “회사”에 개인정보를 제공하여 회원 등록을 한 자로서, “회사”의 정보를 지속적으로 제공받으며, “회사”가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말한다. <br />
									4. ‘비회원’이라 함은 회원에 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말한다. <br />
									5. 이외에 이 약관에서 사용하는 용어의 정의는 관계법령 및 서비스 별 안내에서 정하는 바에 의한다. <br />
									<br />
									<strong>제3조 약관 등의 명시와 설명 및 계정</strong><br />
									1. “회사”는 이 약관의 내용과 상호, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소 포함), 전화번호, 팩스번호, 이메일주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 “회사”의 초기 서비스화면(전면)에 게시한다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있다. <br />
									2. “회사”는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.<br />
									3. “회사”는 이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 “회사”의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지한다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지한다. 이 경우 "회사“는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시한다.<br />
									4. “회사”가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만, 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “회사”에 송신하여 “회사”의 동의를 받은 경우에는 개정약관 조항을 적용한다. <br />
									5. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따른다. <br />
									<br />
									<strong>제4조 서비스의 제공 및 변경</strong><br />
									1. “회사”는 다음과 같은 서비스를 제공한다. <br />
									① 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br />
									② 구매 계약이 체결된 재화 또는 용역의 배송<br />
									③ 기타 “회사”가 정하는 업무 <br />
									2. “회사”는 상품 또는 용역이 품절되거나 기술적 사양의 변경 등으로 더 이상 제공할 수 없는 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있다. 이 경우 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 요역의 내용을 게시한 곳에 즉시 공지한다. <br />
									3. “회사”가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지한다. <br />
									4. 제3항의 경우 “회사”는 이로 인하여 이용자가 입은 손해를 배상한다. 다만, “회사”의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니한다. <br />
									<br />
									<strong>제5조 서비스의 중단</strong><br />
									1. “회사”는 컴퓨터 등 정보통신설비의 보수점검‧교체 및 고장, 통신 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있다. <br />
									2. 제1항에 의한 서비스 중단의 경우 “회사”는 제8조에 정한 방법으로 이용자에게 통지한다. <br />
									3. “회사”는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상한다. 단, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니한다.<br />
									4. 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “회사”는 제8조에 정한 방법으로 이용자에게 통지하고 당초 “회사”에서 제시한 조건에 따라 소비자에게 보상한다. 다만, “회사”가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 쿠폰 등을 “회사”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급한다.<br />
									<br />
									<strong>제6조 회원가입</strong><br />
									1. 이용자는 무료로 회원에 가입할 수 있으며, “회사”가 정한 가입 양식에 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청한다. <br />
									2. “회사”는 제1항에 따라 회원가입을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록한다.<br />
									① 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “회사”가 회원 재가입을 승낙한 경우는 예외로 한다.<br />
									② 등록 내용에 허위, 기재누락, 오기가 있는 경우<br />
									③ 기타 회원으로 등록하는 것이 “회사”의 기술상 현저히 지장이 있다고 판단되는 경우 <br />
									④ 만 14세 미만의 아동<br />
									3. 회원가입은 “회사”의 승낙이 가입 신청한 이용자에게 도달한 때에 완료된다. <br />
									4. 회원은 “회사”에 등록한 회원정보에 변경이 있는 경우, 상당한 기간 이내에 “회사”에서 정하는 방법에 따라 해당 변경사항을 “회사”에세 통지하거나 수정해야 한다. <br />
									<br />
									<strong>제7조 회원탈퇴 및 자격상실 등</strong><br />
									1. 회원은 “회사”에 언제든지 탈퇴를 요청할 수 있으며, “회사”는 즉시 회원탈퇴를 처리한다. <br />
									2. 회원이 다음 각 호의 사유에 해당하는 경우, “회사”는 회원자격을 제한 및 정지시킬 수 있다. <br />
									① 가입 신청 시에 허위내용을 등록한 경우<br />
									② “회사”를 이용하여 구입한 재화 등의 대금, 기타 “회사” 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않은 경우<br />
									③ 타인의 ID와 비밀번호 또는 그 개인정보를 도용한 경우 <br />
									④ 다른 사람의 “회사”이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br />
									⑤ “회사”를 이용하여 법령 또는 이 약관이 금지하거나 사회질서에 반하는 행위를 하는 경우<br />
									⑥ 기타서비스 운영을 고의로 방해하는 행위를 하는 경우 <br />
									3. “회사”가 회원자격을 제한, 정지시킨 후 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “회사”는 회원자격을 상실시킬 수 있다. <br />
									4. “회사”가 회원자격을 상실시키는 경우에는 회원등록을 말소한다. 이 경우 “회원”에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여한다. <br />
									<br />
									<strong>제8조 회원에 대한 통지</strong><br />
									1. “회원”에 대한 통지를 하는 경우 “회사”는 “회원”이 등록한 e-mail주소 또는 SMS 등으로 할 수 있다. <br />
									2. “회사”는 불특정 다수 회원에 대한 통지의 경우 1주일 이상 “회사” 서비스 게시판 등에 게시함으로써 개별 통지에 갈음할 수 있다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 한다. <br />
									<br />
									<strong>제9조 구매신청 및 개인정보 제공 동의 등</strong><br />
									1. “이용자”는 “회사”에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “회사”는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 한다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있다. <br />
									⓵ 재화 등의 검색 및 선택<br />
									⓶ 받는 사람의 성명, 주소, 전화번호, 이메일 주소(또는 이동전화번호) 등의 입력<br />
									⓷ 약관내용. 창약철회권이 제한되는 서비스, 배송료•설치비 등의 비용부담과 관련한 내용에 대한 확인<br />
									⓸ 이 약관에 동의하고 위 3호의 사항을 확인하거나 거부하는 표시<br />
									⓹ 재화 등의 구매신청 및 이에 관한 확인 또는 “회사”의 확인에 대한 동의<br />
									⑥ 결제 방법의 선택 <br />
									2. “회사”가 제3자에게 구매자 개인정보를 제공할 필요가 있는 경우 1) 개인정보를 제공받는 자, 2)개인정보를 제공받는 자의 개인정보 이용목적, 3) 제공하는 개인정보의 항목, 4) 개인정보를 제공받는 자의 개인정보 보유 및 이용기간을 구매자에게 알리고 동의를 받아야 한다. (동의를 받은 사항이 변경되는 경우에도 같다.)<br />
									3. “회사”가 제3자에게 구매자의 개인정보를 취급할 수 있도록 업무를 위탁하는 경우에는 1) 개인정보 취급위탁을 받는 자, 2) 개인정보 취급위탁을 하는 업무의 내용을 구매자에게 알리고 동의를 받아야 한다. (동의를 받은 사항이 변경되는 경우에도 같다.) 다만, 서비스제공에 관한 계약이행을 위해 필요하고 구매자의 편의증진과 관련된 경우에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」에서 정하고 있는 방법으로 개인정보 취급방침을 통해 알림으로써 고지절차와 동의절차를 거치지 않아도 된다.<br />
									<br />
									<strong>제10조 계약의 성립</strong><br />
									1. “회사”는 제9조 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있다. 단, 미성년자와 계약을 체결하는 경우 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지해야 한다. <br />
									① 신청 내용에 허위, 기재누락, 오기가 있는 경우<br />
									② 미성년자가 청소년보호법에서 금지하는 상품 및 용역을 구매하는 경우<br />
									③ 기타 구매신청을 승낙하는 것이 “회사”기술상 현저히 지장이 있다고 판단하는 경우 <br />
									④ 기타 제반 법령 및 정부의 가이드라인에 위반되는 경우 <br />
									2. 구매계약의 성립은 “회사”의 승낙이 제12조제1항의 수신확인 통지형태로 이용자에게 도달한 시점으로 본다. <br />
									3. “회사”의 승낙 의사표시에는 이용자의 구매신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 및 취소 등에 관한 정보 등을 포함하여야 한다. <br />
									<br />
									<strong>제11조 지급방법</strong><br />
									1. “회사”에서 구매한 상품 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용 가능한 방법으로 할 수 있다. 단, “회사”는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없다. <br />
									① 선불카드, 직불카드, 신용카드 등의 각종카드결제<br />
									② 온라인 무통장(가상계좌) 입금<br />
									③ 전자화폐에 의한 결제<br />
									④ “회사”와 계약을 맺었거나 “회사”가 인정한 상품권에 의한 결제<br />
									⑤ 기타 전자적 지급 방법에 의한 대금 지급 등<br />
									2. 구매대금의 결제와 관련하여 이용자가 입력한 정보 및 그와 관련된 책임은 이용자에게 있으며, 재화 또는 용역의 청약 후 합리적인 일정 기간 내에 결제가 이루어지지 않는 경우 “회사”는 이에 해당주문을 취소할 수 있다. <br />
									3. “회사”는 구매자의 결제 수단에 대하여 정당한 사용권한 보유여부를 확인할 수 있으며 필요한 경우 해당 거래진행의 정지 및 소명자료의 제출을 요청할 수 있다. <br />
									<br />
									<strong>제12조 수신확인 통지‧구매신청 변경 및 취소</strong><br />
									1. “회사”는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 한다. <br />
									2. 수신확인 통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매 신청 변경 및 취소를 요청할 수 있다. 배송 전에 이용자의 요청이 있는 경우 “회사”는 지체 없이 그 요청에 따라 처리하여야 한다. <br />
									3. 수신확인 통지를 받은 이용자가 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따른다. <br />
									<br />
									<strong>제13조 재화 등의 공급</strong><br />
									1. “회사”는 이용자와 재화 등의 공습시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날로부터 7영업일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타 필요한 조치를 취한다. 다만, “회사”가 이미 재화 등의 대금의 전부 또는 일부를 받은 날로부터 3영업일 이내에 조치를 취해야 한다. 이때 “회사”는 “이용자”가 재화 등의 공급 절차 및 진행사항을 확인 할 수 있도록 적절한 조치를 한다. <br />
									2. 공휴일 및 기타 휴무일 또는 천재지변 등의 불가항력적 사유가 발생하는 경우 그 해당기한은 배송소요기간 에서 제외한다. <br />
									3. “회사”는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시한다. 만약 “회사”가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상한다. 다만 “회사”가 고의과실이 없음을 입증한 경우에는 그러하지 아니한다.<br />
									<br />
									<strong>제14조 환급</strong><br />
									“회사”는 “이용자”가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날로부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취한다. <br />
									<br />
									<strong>제15조 청약 철회 등</strong><br />
									1. “회사”와 재화 등의 구매에 관한 계약을 체결한 “이용자“는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말한다.)로부터 7영업일 이내에 청약의 철회를 할 수 있다. 단, 통지를 받은 때보다 공급이 늦게 이루어진 경우에는 재화 등의 공급을 받은 날로부터 7영업일 이내에 청약 철회를 할 수 있다. <br />
									2. “이용자”가 재화 등을 배송 받은 경우 다음 각 호에 해당하는 경우에는 반품 및 교환을 할 수 없다. <br />
									① “이용자”의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br />
									② 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우<br />
									③ 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br />
									⓸ 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있다)<br />
									⑤ 그 밖에 거래의 안전을 위하여 대통령령이 정하는 경우 <br />
									3. 제2항제2조 내지 제4호의 경우에는 “회사”가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용 상품을 제공하는 등의 조치를 하지 않았다면 이용자 청약 철회 등이 제한되지 않는다. <br />
									4. “이용자”는 제1항 및 제2항의 규정에도 불구하고 재화 등의 내용이 표시, 광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날로부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 청약 철회 등을 할 수 있다. <br />
									5. 단, 콘텐츠(공연, 전시, 교육수강 등) 구매자는 STAND별 자체 환불규정을 따른다. <br />
									<br />
									<strong>제16조 청약 철회 등의 효과</strong><br />
									1. “회사”는 “이용자”로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급한다. “회사”가 이용자에게 재화 등의 환급을 지연한 때에는 그 지연 기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」 제21조의2에서 정하는 지연 이자율을 곱하여 산정한 지연이자를 지급한다. <br />
									2. “회사”는 위 대금을 환급함에 있어 구매자가 신용카드 또는 전자금융거래법 등이 정하는 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금 청구를 정지 또는 취소하도록 요청할 수 있다. <br />
									3. 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 “이용자”가 부담한다. “회사”는 이용자에게 청약 철회 등을 이유로 위약금 또는 손해배상을 청구하지 않는다. 단, 재화 등의 내용이 표시, 광고 내용과 다르거나 계약내용과 다르게 이행되어 청약 철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “회사” 부담한다. <br />
									4. “이용자”가 재화 등을 제공받을 때 발송비를 부담한 경우 “회사”는 청약 철회 시 그 비용을 누가 부담하는지 알기 쉽도록 명확하게 표시한다. <br />
									5. 단, 콘텐츠(공연, 전시, 교육수강 등) 구매자는 STAND별 자체 환불규정을 따른다. <br />
									<br />
									<strong>제17조 개인정보보호</strong><br />
									1. “회사”는 이용자의 개인정보 수집 시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집한다. <br />
									2. “회사”는 회원가입 시 구매계약이행에 필요한 정보를 미리 수집하지 않는다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로써 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니한다.<br />
									3. “회사”는 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받는다. <br />
									4. “회사”는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받는다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 한다.<br />
									5. “회사”가 제2항과 제3항에 의해 “이용자”의 동의를 받아야 하는 경우에는 개인정보 관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집 및 이용목적, 제3자에 대한 정보 제공 관련 사항(제공 받은자, 제공 목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 등에 관한법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있다. <br />
									6. “이용자”는 언제든지 “회사”가 가지고 있는 자신의 개인정보에 대해 열람 및 오류 정정을 요구할 수 있으며 “회사”는 이에 대해 지체 없이 필요한 조치를 취한다. “이용자”가 오류의 정정을 요구한 경우에 “회사”는 그 오류를 정정할 때까지 개인정보를 이용하지 않는다. <br />
									7. “회사”는 개인정보보호를 위하여 “이용자”의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며, 신용카드, 은행계좌 등을 포함한 “이용자”의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 진다. <br />
									8. “회사”또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집 목적 또는 제공받은 목적을 달성한 때에는 그 즉시 개인정보를 지체 없이 파기한다. <br />
									9. “회사”가 “회원”의 개인정보를 수집, 이용, 제공 등을 할 경우에는 정보통신망 이용촉진 및 정보 보호 등에 관한 법률에 따라 회원의 동의를 받는다. <br />
									10. “회원”은 원하는 경우 언제든 “회사”에 제공한 개인정보의 수집과 이용에 대한 동의를 철회할 수 있으며 동의의 철회는 회원 탈퇴를 하는 것으로 이루어진다. <br />
									11. “회사”는 개인정보의 수집·이용·제공에 관한 동의 란을 미리 선택한 것으로 설정해두지 않는다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절 시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않는다.<br />
									※ 개인정보와 관련된 보다 구체적인 사항은 개인정보취급방침을 따른다. <br />
									<br />
									<strong>제18조 “회사”의 의무</strong><br />
									1. “회사”는 법령과 이 약관이 금지하거나 사회질서에 반하는 행위를 하지 않으며, 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 상품 또는 용역을 제공하는 데 최선을 다한다. <br />
									2. “회사”는 이용자가 안전하게 서비스를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖춰야 한다. <br />
									3. “회사”는 판매하는 상품이나 용역에 대하여 「표시‧광고의공정화에관한법률」제3조 소정의 부당한 표시‧광고행위를 함으로써 “이용자”가 손해를 입은 때에는 이를 배상할 책임을 진다. <br />
									4. “회사”는 수신거절의 의사를 명백히 표시한 “이용자”에 대해서는 영리목적의 광고성 이메일을 발송하지 않는다. <br />
									<br />
									<strong>제19조 “회원”의 ID 및 비밀번호에 대한 의무</strong><br />
									1. 제17조를 제외하고 회원의 ID와 비밀번호에 관한 관리책임은 “회원”에게 있다. <br />
									2. “회원”은 자신의 ID 및 비밀번호를 제3자가 사용하게 해서는 안된다. <br />
									3. 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “회사”에 통보 하고 “회사”의 안내가 있는 경우에는 그에 따라야 한다. <br />
									4. “회사”는 “회원”이 상기 1항, 2항, 3항을 위반하여 “회원”에게 발생한 손해에 대해서는 어떠한 책임도 없다.<br />
									<br />
									<strong>제20조 “이용자”의 의무</strong><br />
									이용자는 다음과 같은 행위를 하여서는 안 된다. <br />
									1. 개인정보의 등록 및 변경 시 허위내용 등록<br />
									2. “회사”에 게시된 정보 임의 변경<br />
									3. “회사”가 허락하지 않은 정보(컴퓨터 프로그램 등)의 송시 또는 게시<br />
									4. “회사” 또는 기타 제3자의 저작권 등 지적재산권 침해 시<br />
									5. “회사” 또는 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br />
									6. 외설 또는 폭력적인 메시지‧화상‧음성 등 기타 사회질서에 반하는 정보를 화면에 공개 또는 게시하는 행위 <br />
									7. 타인의 정보 도용<br />
									<br />
									<strong>제21조 연결 “웹사이트”와 피연결 “웹사이트” 간의 관계</strong><br />
									1. 상위 “웹사이트”와 하위 “웹사이트”가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결“웹 사이트”이라고 하고 후자를 피연결“웹사이트”이라고 한다.<br />
									2. 연결“웹사이트”는 피연결“웹사이트”가 독자적으로 제공하는 재화 등에 의하여 “이용자”와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“웹사이트”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않는다.<br />
									<br />
									<strong>제22조 저작권의 귀속 및 게시물 이용 제한</strong><br />
									1. “회사”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “회사”에 귀속된다. <br />
									2. “이용자”는 서비스를 이용함으로써 얻은 정보를 “회사”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 등 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 된다. <br />
									3. “회사”는 “이용자”에게 귀속된 저작권을 사용하는 경우 즉시 “이용자”에게 통보하여야 한다. <br />
									4. “회사”는 “회원”이 서비스 내에 게시한 게시물이 타인의 저작권, 프로그램저작권 등을 침해하였음을 이유로 “회사”가 타인으로부터 손해배상청구 등 이의 제기를 받은 경우 “회원”은 “회사”의 면책을 위하여 노력하여야 하며, “회사”가 면책되지 못한 경우 회원은 그로 인해 “회사”에 발생한 모든 손해를 부담하여야 한다. <br />
									5. “회사”는 “회원”이 서비스 내에 게시한 게시물(회원 간 전달 포함)이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제, 변경할 수 있으며, 이에 대해 “회사”는 어떠한 책임도지지 않는다. <br />
									① 스팸(spam)성 게시물 및 상업성 게시물(예 : 특정사이트 및 상품 광고 등)<br />
									② 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글<br />
									③ 동의 없는 타인의 신상공개, 제3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물<br />
									④ 기타 관계 법령 및 “회사”의 지침 등에 위반된다고 판단되는 경우 <br />
									<br />
									<strong>제23조 면책</strong><br />
									1. “회사”는 천재지면, 불가항력 등 기타 “회사”의 합리적인 통제범위를 벗어난 사유로 인하여 서비스를 제공할 수 없는 경우에는 그에 대한 책임을 부담하지 않는다. <br />
									2. “회사”는 “이용자” 귀책사유로 인하여 서비스를 제공할 수 없는 경우에는 그에 대한 책임을 부담하지 않는다. <br />
									3. “회사”는 서비스 이용과 관련하여 이용자의 고의 또는 과실로 인하여 이용자 또는 제3자에게 발생한 손해에 대해서는 아무런 책임을 부담하지 않는다. <br />
									<br />
									<strong>제24조 분쟁해결</strong><br />
									1. “회사”는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치‧운영한다. <br />
									2. “회사”는 “이용자”로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리한다. 다만, 신속한 처리가 곤란한 경우 “이용자”에게 그 사유와 처리 일정을 즉시 통보한다. <br />
									3. “회사”와 “이용자”간에 발생한 전자상거래 분쟁과 관련하여 “이용자”의 피해구제신청이 있는 경우 공정거래위원회 또는 시‧도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있다. <br />
									<br />
									<strong>제25조 재판권 및 준거법</strong><br />
									1. “회사”는 “이용자”간에 발생한 전자상거래 분쟁에 관한 소송은 제소 장시의 “이용자”의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 한다. 단, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기한다. <br />
									2. “회사”와 “이용자” 간에 제기된 전자상거래 소송에는 한국법을 적용한다.<br /><br /><br />
											</section>
							</section>
<!-- // Under Stand Avenue 이용약관 -->

<!-- 개인정보처리방침 // -->
							<section>
								<div class="tit_area">
									<h3>개인정보취급방침</h3>
									<span class="input_wrap"><label for="use">약관동의</label><input type="checkbox" id="use" /></span>
								</div>

								<section>
									<strong>제1조 (총칙)</strong><br />
									1. 개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 알아볼 수 있는 부호, 문자, 음성, 음향 및 영상 등의 정보(해당 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함한다)를 말한다.<br />
									2. UNDER STAND AVENUE(이하 “회사”라 함)는 이용자의 개인정보보호를 매우 중요시하며, 「개인정보보호법」, 「정보통신망 이용 촉진 및 정보보호에 관한 법률」 등 개인정보보호 관련 법률 및 하위 법령들을 준수한다.<br />
									3. "회사"는 개인정보취급방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 이용자에게 알린다. "회사"는 개인정보취급방침을 홈페이지 하단에 공개함으로써 이용자가 언제나 용이하게 볼 수 있도록 한다.<br />
									4. "회사"는 개인정보취급방침의 지속적인 개선을 위하여 개정하는데 필요한 절차를 정하고 있으며, 개인정보취급방침을 회사의 필요와 사회적 변화에 맞게 변경할 수 있다.<br />
									5. 본 개인정보취급방침은 "회사"가 제공하는 서비스(온라인, 모바일 웹/앱 포함) 이용에 적용된다.<br />
									<br />
									<strong>제2조 (수집하는 개인정보 항목 및 수집방법)</strong><br />
									1. 수집하는 개인정보의 항목 <br />
									① "회사"는 회원가입시 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 최소한의 개인정보를 필수 항목으로 수집한다.<br />
									- 아이디, 비밀번호, 이름, 이메일주소, 휴대폰번호, 가입인증정보<br />
									⓶ "회사"는 서비스 이용과정이나 사업 처리과정에서 아래와 같은 정보들이 생성되어 수집할 수 있다.<br />
									- 최근접속일, 접속 IP 정보, 쿠키, 구매로그, 이벤트로그<br />
									- 물품 주문시 : 이메일주소, 전화번호, 휴대폰번호, 주소<br />
									- 물품(서비스)구매에 대한 결제 및 환불시 : 은행계좌정보<br />
									2. 개인정보 수집방법<br />
									① 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청<br />
									② 로그 분석 프로그램을 통한 생성정보 수집<br />
									3. 개인정보 수집에 대한 동의<br />
									"회사"의 개인정보취급방침 및 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 이용자가 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 본다. 「동의안함」을 선택할 경우, "회사"가 제공하는 기본서비스 제공이 제한된다.<br />
									4. 비회원의 개인정보보호<br />
									① "회사"는 비회원 주문의 경우에도 배송, 대금결제, 강좌결제, 문화콘텐츠 예매, 주문내역 조회 및 구매확인을 위하여 필요한 개인정보만을 요청하고 있으며, 이 경우 그 정보는 대금결제 및 상품의 배송에 관련된 용도 이외에는 다른 어떠한 용도로도 사용되지 않는다.<br />
									② "회사"는 비회원의 개인정보도 회원과 동등한 수준으로 보호한다.<br />
									<br />
									<strong>제3조 (개인정보의 수집목적 및 이용 목적)</strong><br />
									1. 홈페이지 회원 가입 및 관리<br />
									① 회원가입의사 확인<br />
									② 회원제 서비스 제공에 따른 휴대폰 유효성 인증<br />
									③ 회원자격 유지‧관리<br />
									④ 제한적 본인확인제 시행에 따른 본인확인<br />
									⑤ 서비스 부정이용 방지 <br />
									⑥ 각종 고지‧통지 등 <br />
									2. 민원사무처리<br />
									① 민원인의 신원 확인<br />
									② 민원사항 확인<br />
									③ 사실조사를 위한 연락‧통지, 처리결과 통보 등<br />
									3. 재화 또는 서비스 제공<br />
									① 구매 물품 배송에 대한 정확한 배송지의 확보 <br />
									② 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보의 안내<br />
									⓷ 개인맞춤 서비스를 제공하기 위한 자료<br />
									⓸ 콘텐츠 제공<br />
									⑤ 본인인증<br />
									⑥ 요금결제‧정산 등 <br />
									⑦ 경품 수령 및 세무신고를 위한 별도의 개인정보 요청<br />
									<br />
									<strong>제4조 (개인정보의 공유 및 제공)</strong><br />
									1. "회사"는 이용자의 개인정보를 「개인정보의 수집목적 및 이용목적」에서 고지한 범위 내에서 사용하고, 그 범위를 초과하지 아니한다.<br />
									2. “회사”는 이용자의 개인정보를 제3자에게 제공하지 않는다. 다만 다음 각 호의 어느 하나에 해당되는 경우에는 정보주체의 개인정보를 제3자에게 제공(공유를 포함한다. 이하 같다)할 수 있다. <br />
									① 정보주체의 동의를 받은 경우, <br />
									② 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우<br />
									③ 이용자 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 이용자 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우<br />
									3. “회사”는 제2항 제1호에 따른 동의를 받을 때에는 다음 각호의 사항을 이용자에게 알려야 한다. 다음 각 호의 어느 하나의 사항을 변경하는 경우에도 이를 알리고 동의를 받아야 한다. <br />
									① 개인정보를 제공받는 자<br />
									② 개인정보를 제공받는 자의 개인정보 이용 목적<br />
									③ 제공하는 개인정보의 항목<br />
									④ 개인정보를 제공받는 자의 개인정보 보유 및 이용 기간<br />
									4. “회사”는 제2항 제2호의 사유가 발생하여 정보를 제공하는 경우 제3항 각호의 사항을 이용자에게 알려야 한다. 단 법률 규정 또는 법령상 의무의 준수를 위한 경우 고지하지 아니할 수 있다.<br />
									5. “회사”는 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하여야 한다. <br />
									<br />
									<strong>제5조 (수집한 개인정보 취급 위탁)</strong><br />
									1. "회사"는 서비스 향상을 위해 필요한 경우 동의 등 법률상의 요건을 구비하여 외부에 수집, 취급, 관리 등을 위탁하여 개인정보를 처리할 수 있다. 개인정보의 처리와 관련하여 아래와 같이 업무를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있다. 또한 공유하는 정보는 당해 목적을 달성하기 위해 최소한의 필요한 정보에 국한된다. 하기 수탁자 전체에 개인정보가 제공되는 사항은 아니며, 서비스 요청에 따라 해당하는 업체에 선택적으로 제공한다.<br />
									<div class="table">
									<table>
									<colgroup><col style="width: 45%;"><col style="width: 55%;"></colgroup>
									<tbody><tr>
										<th class="txt-center">수탁자</th>
										<th class="txt-center">수탁범위</th>
									</tr>
									<tr>
										<td>KCP</td>
										<td>상품구매에 필요한 신용카드, 현금결제 등의 결제정보전송</td>
									</tr>
									<tr>
										<td>인포뱅크</td>
										<td>문자 메세지 전공</td>
									</tr>
									<tr>
										<td>카카오톡</td>
										<td>맞춤정보서비스를 위한 사용자 휴대폰번호 확인</td>
									</tr>
									<tr>
										<td>CJ대한통운</td>
										<td>주문 상품의 배송</td>
									</tr>
									<tr>
										<td>(주)코너스톤인터렉티브</td>
										<td>홈페이지 유지관리</td>
									</tr>
									<tr>
										<td>(주)코너스톤인터렉티브</td>
										<td>서버, 네트워크, 보안시스템 유지관리</td>
									</tr>
									</tbody></table>
									</div>
									2. 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체 없이 본 개인정보 취급방침을 통하여 공개하도록 한다.<br />
									<br />
									<strong>제6조 (개인정보의 보유, 이용기간)</strong><br />
									1. 이용자의 개인정보는 "회사"가 신청인에게 서비스를 제공하는 기간 동안에 한하여 보유하고 활용한다. 다만 다른 법률에 특별한 규정이 있는 경우에는 관계법령에 따라 보관한다. <br />
									<div class="table">
									<table>
									<colgroup><col style="width: 50%;"><col style="width: 50%;"></colgroup>
									<tbody><tr>
										<th class="txt-center">개인정보</th>
										<th class="txt-center">파기시점</th>
									</tr>
									<tr>
										<td>회원가입정보</td>
										<td>회원가입을 탈퇴하거나 회원에 제명된 때</td>
									</tr>
									<tr>
										<td>대금지급정보</td>
										<td>대금의 완제일 또는 채권소명 시효시간이 만료된 때</td>
									</tr>
									<tr>
										<td>배송정보</td>
										<td>물품 또는 서비스가 인도되거나 제공된 때</td>
									</tr>
									<tr>
										<td>설문조사, 이벤트 등 일시적 목적위한 수집</td>
										<td>설문조사, 이벤트 등이 종료한 때</td>
									</tr>
									</tbody></table>
									</div>
									2. 위 개인정보 수집목적 달성 시 즉시파기 원칙에도 불구하고 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등에 근거하여 일정기간 보유한다. <br />
									① 「전자상거래에 등에서 소비자보호에 관한 법률」에 의한 보관<br />
									- 계약 또는 청약철회 등에 관한 기록 : 5년 <br />
									- 대금결제 및 재화 등의 공급에 관한 기록 : 5년<br />
									- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br />
									② 「통신비밀보호법」 시행령 제41조에 의한 통신사실확인자료 보관 <br />
									- 컴퓨터통신, 인터넷 로그기록자료, 접속지 추적자료 : 3개월<br />
									③ 설문조사, 이벤트 등 일시적 목적을 위하여 수집한 경우 : 당해 설문조사, 이벤트 등의 종료 시점<br />
									3. "회사"는 다른 법령에서 별도의 기간을 정하고 있거나 회원의 요청이 있는 경우를 제외하면, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제29조 제2항에 따라 12개월간 이용내역(로그인, 주문, 상담 등)이 없는 회원의 개인정보를 파기하거나, 다른 회원의 개인정보와 분리하여 별도로 저장‧관리한다. 이 경우 개인정보가 파기 또는 분리되어 저장‧관리되는 사실과 기간 만료 일 및 해당 개인정보의 항목을 전자우편‧서면‧팩스‧전화 또는 이와 유사한 방법 중 어느 하나의 방법으로 회원에게 알린다.<br />
									<br />
									<strong>제7조 (개인정보의 파기 절차)</strong><br />
									"회사"는 개인정보 수집 및 이용목적이 달성되면 해당 정보를 지체 없이 파기하며, 파기절차 및 방법은 다음과 같다.<br />
									1. 파기절차 <br />
									① 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(제6조 개인정보 보유 및 이용기간 참조) 일정 기간 저장된 후 파기된다. <br />
									② 동 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않는다.<br />
									2. 파기방법<br />
									① 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기한다.<br />
									② 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제한다.<br />
									<br />
									<strong>제8조 (개인정보 처리를 위한 기술적, 관리적 대책)</strong><br />
									1. 기술적 대책<br />
									"회사"는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안정성 확보를 위하여 다음과 같은 기술적 대책을 강구한다.<br />
									① "회사"는 방화벽(Fire Wall)과 COMODO사의 채널보안방식인 SSL(Secure Socket Layer)방식 암호화 체계 시스템 등을 갖추어 개인정보 보호에 만전을 기한다.<br />
									② 이용자의 개인정보는 비밀번호에 의해 보호한다. <br />
									2. 관리적 대책<br />
									① "회사"는 이용자의 개인정보에 대한 접근 권한을 최소한의 인원으로 제한하며, 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 사내교육 및 외부 위탁교육을 실시한다.<br />
									② 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보 취급방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련한다.<br />
									③ 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 진행하며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확히 한다.<br />
									④ 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제한다.<br />
									⑤ "회사"는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않는다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 ID 와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 한다.<br />
									⑥ 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 "회사"는 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구한다.<br />
									<br />
									<strong>제9조 (링크사이트)</strong><br />
									1. "회사"는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있다. 이 경우 "회사"는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없다.<br />
									2. "회사"가 포함하고 있는 링크를 클릭(Click)하여 타사이트(Site)의 페이지로 옮겨갈 경우 해당 사이트의 개인정보 취급방침은 "회사"와 무관하므로 이용자는 새로 방문한 사이트의 정책을 검토하도록 한다.<br />
									<br />
									<strong>제10조 (게시물)</strong><br />
									1. "회사"는 이용자의 게시물을 소중하게 생각하여 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호한다. 그러나 다음의 경우는 그렇지 아니한다.<br />
									① 스팸(spam)성 게시물 및 상업성 게시물 (예: 행운의 편지, 특정사이트 광고 등)<br />
									② 타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글<br />
									③ 동의 없는 타인의 신상공개, 제3자의 저작권 등 권리를 침해하는 내용, 기타 게시판 주제와 다른 내용의 게시물<br />
									2. "회사"는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개 시 특정부분 이동 경로를 밝혀 오해가 없도록 한다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있다.<br />
									3. 근본적으로 게시물에 관련된 제반 관리와 책임은 작성자 개인에게 있는 것으로 한다. 또 게시물을 통해 자발적으로 공개된 정보는 보호받을 수 없다.<br />
									<br />
									<strong>제11조 (이용자의 권리와 의무)</strong><br />
									1. 이용자는 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해야한다. 직접 입력한 부정확 한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를 입력할 경우 회원 자격이 상실될 수 있다.<br />
									2. 이용자는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가진다. 비밀번호를 포함한 이용자의 개인정보가 유출되지 않도록 주의하고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해야 한다. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 「정보통신망이용 촉진 및 정보보호 등에 관한 법률」 등에 의해 처벌받을 수 있다.<br />
									3. 온라인상에서(게시판, E-mail 등) 이용자가 자발적으로 제공하는 개인정보는 다른 사람들이 수집하여 사용할 수 있음을 항상 유념해야 한다. 공개적으로 접속할 수 있는 온라인상에서 개인정보를 게재하는 경우, 다른 사람들로부터 원치 않는 메시지를 받게 될 수도 있음을 의미한다.<br />
									4. 공공장소에서 이용할 때에는 자신의 비밀번호가 노출되지 않도록 하고 서비스 이용을 마친 후에는 반드시 로그아웃을 한다. <br />
									<br />
									<strong>제12조 (이용자 및 법정대리인의 권리와 그 행사방법)</strong><br />
									1. 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수 있다. <br />
									2. 개인정보 조회, 수정 또는 가입해지를 위해서는 「MY Page」버튼을 클릭하여 본인확인 절차를 거쳐 직접 열람, 정정 또는 탈퇴가 가능하다. 혹은 개인정보 관리 책임자에게 서면, 전화 또는 이메일로 연락하면 지체 없이 조치한다.<br />
									3. "회사"는 이용자의 요청에 의해 해지 또는 삭제된 개인정보를 “제 6조 개인정보의 보유, 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리한다.<br />
									<br />
									<strong>제13조 (개인정보 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항)</strong><br />
									1. 쿠키(cookie)란?<br />
									① "회사"는 이용자에 대한 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 사용한다.<br />
									② 쿠키는 웹사이트가 이용자의 컴퓨터 브라우저(Internet Explorer, Chrome, Safari, Firefox 등)로 전송하는 소량의 정보를 말한다. 이용자가 웹사이트에 접속을 하면 "회사"의 서버는 이용자의 브라우저에 추가정보를 임시로 저장하여 접속에 따른 성명 등의 추가 입력 없이 "회사"의 서비스를 제공할 수 있다.<br />
									2. "회사"는 다음과 같은 목적을 위해 쿠키를 통하여 수집된 이용자의 개인정보를 사용한다.<br />
									① 개인의 관심 분야에 따라 차별화된 정보를 제공<br />
									② 쇼핑한 품목들에 대한 정보와 장바구니 서비스를 제공<br />
									③ 회원과 비회원의 접속빈도 또는 머문 시간 등을 분석하여 서비스 개편 및 마케팅에 활용<br />
									3. 쿠키의 설치 및 거부<br />
									① 이용자는 쿠키 설치에 대한 선택권을 가진다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나 아니면 모든 쿠키의 저장을 거부할 수도 있다.<br />
									② 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 "회사" 일부 서비스는 이용에 어려움이 있을 수 있다.<br />
									③ 쿠키 설치 허용 여부를 지정하는 방법<br />
									- Internet Explorer의 경우 : [도구] 메뉴에서 [인터넷 옵션]을 선택 → [개인정보]를 클릭 → [고급]을 클릭 → 쿠키 허용여부를 선택<br />
									- Safari의 경우 : MacOS 상단 좌측 메뉴바에서 [Safari]에서 [환경설정]을 선택 → [환경설정] 창에서 [보안]으로 이동하여 쿠키 허용여부 선택<br />
									- Chrome의 경우 : 웹 브라우저 우측상단 메뉴에서 [설정] 선택 → [고급설정표시]선택 → 개인정보 [콘텐츠설정]선택 → 쿠키 메뉴에서 설정<br />
									<br />
									<strong>제14조 (개인정보 보호문의처)</strong><br />
									1. "회사"는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있다.<br />
									2. 당사는 이용자와의 원활한 의사소통을 위해 고객센터를 운영한다.<br />
									3. 고객센터의 연락처는 다음과 같다.<br />
									⓵ 고객센터<br />
									- 이메일 : info@understandavenue.com<br />
									- 전화번호 : 02-725-5527<br />
									- 팩스번호 : 070-8668-1033<br />
									- 주소 : 서울특별시 성동구 서울숲4길 21 예원빌딩 4층 언더스탠드에비뉴 홈페이지 고객센터<br />
									4. 전화상담은 월~금요일 오전 10:00 ~ 오후 06:00에만 가능하다. (주말, 공휴일 휴무)<br />
									5. 전자우편이나 팩스 및 우편을 이용한 상담은 접수 후 24시간 내에 성실하게 답변 하도록 한다. 다만 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 한다.<br />
									6. 이용자가 기타 개인정보에 관한 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의할 수 있다.<br />
									<div class="table">
									<table>
									<colgroup><col style="width: 33%;"><col style="width: 34%;"><col style="width: 33%;"></colgroup>
									<tbody><tr>
										<th class="txt-center">개인정보침해신고센터</th>
										<th class="txt-center">대검찰청 인터넷범죄수사센터</th>
										<th class="txt-center">경찰청 사이버테러대응센터</th>
									</tr>
									<tr>
										<td class="txt-center">118<br />http://www.118.or.kr/<br />118@kisa.or.kr</td>
										<td class="txt-center">02-3480-3600<br />http://icic.sppo.go.kr/</td>
										<td class="txt-center">02-392-0330 <br />http://ctrc.go.kr/</td>
									</tr>
									</tbody></table>
									</div>
									<br />
									<strong>제15조 (개인정보보호책임자 및 담당자)</strong><br />
									"회사"는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보 주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하여 운영한다. <br />
									1. 개인정보 보호책임자<br />
									- 이름 : 김선아<br />
									- 소속 : 경영기획본부 <br />
									- 전화 : 02-2039-5449<br />
									- 이메일 : suna@understandavenue.com<br />
									2. 개인정보 보호담당자<br />
									- 이름 : 백수진<br />
									- 소속 : 경영기획본부<br />
									- 전화 : 070-5038-6833<br />
									- 이메일 : soojin@understandavenue.com<br />
									<br />
									<strong>제16조 (광고성 정보 전송)</strong><br />
									1. 이용자의 명시적인 수신거부의사에 반하여 전자적 전송매체를 이용한 영리목적의 광고성 정보를 전송하지 않는다.<br />
									2. 상품정보 안내 등 온라인 마케팅을 위해 광고성 정보를 전자적 전송매체로 발송하는 경우 정보통신망법의 규정에 따라 광고성 정보의 제목란 및 본문란에 이용자가 쉽게 알아 볼 수 있도록 조치한다. 전자우편의 방법예시는 아래와 같다.<br />
									① 제목 등 시작되는 부분 : (광고)라는 문구 표기<br />
									② 본문란 : 전송자의 명칭, 전자우편주소, 전화 번호 및 주소 등의 이용자가 수신거부 의사를 쉽게 표시할 수 있는 방법 명시<br />
									3. 청소년에게 유해한 정보를 전자메일로 전송하는 경우에도 정보통신망법에 따라 청소년유해매체물임을 표시한다.<br />
									<br />
									<strong>제17조 (고지의 의무)</strong><br />
									개인정보취급방침은 2016년 5월 10일부터 적용된다. 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 공지사항을 통하여 고지한다. 또한 개인정보처리방침에 버전번호 및 개정일자 등을 부여하여 개정여부를 쉽게 알 수 있도록 한다.<br />
									- 개인정보취급방침 버전번호 : v20160510<br />
									- 개인정보취급 시행일자 : 2016년 05월 10일<br /><br /><br />
								</section>
							</section>
<!-- // 개인정보처리방침  -->

<!-- 전자금융거래 약관 // -->
							<section>
								<div class="tit_area">
									<h3>전자금융거래 약관</h3>
									<span class="input_wrap"><label for="entrust">약관동의</label><input type="checkbox" id="entrust" /></span>
								</div>

								<section>
									전자금융거래 약관전자금융거래 약관전자금융거래 약관전자금융거래 약관
								</section>
							</section>
<!-- // 전자금융거래 약관 -->
<!-- // 2016-03-24 : 수정 -->
					</div>

					<div class="btn_area">
						<a href="/membership/join_step2_1.jsp" id="btn_ok" class="big type1">확인</a>
						<a href="/" class="big type2">취소</a>
					</div>

					<script>
					$('#btn_ok').click(function(e){
						if ( $('.terms_area [type=checkbox]:checked').length < $('.terms_area [type=checkbox]').length ) {
							e.preventDefault();

							alert('모든 약관에 동의 해 주세요.')
						}
					});
					</script>
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