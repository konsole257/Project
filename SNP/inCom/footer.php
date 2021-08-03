<!-- 팝업 : 장바구니 담기 // -->
<div id="cart" class="popup cart">
	<div class="inner">
		<header class="header">
			<h2 class="tit">장바구니 담기</h2>

			<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
		</header>

		<div class="contents">
			<span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span>
			<div class="info">
				<div class="top-area">
					<p class="name ellipsis">히든랩 스킨 세이버 유스 에센스 S.O.S 세트 +[증정] 히든랩 쇼핑백 히든랩 스킨 세이버 유스 에센스 S.O.S 세트 +[증정] 히든랩 쇼핑백 쇼핑백 쇼핑백</p>
					<div class="price">
						<del>48,000원</del>
						<span>35,000원</span>
					</div>
					<div class="ea-area">
						<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
						<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
						<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
					</div>
				</div>
				<div class="bottom-area">
					<span class="select">
						<select title="옵션 선택">
							<option>추가상품을 선택해주세요</option>
							<option>추가상품을 선택해주세요</option>
							<option>추가상품을 선택해주세요</option>
							<option>추가상품을 선택해주세요</option>
							<option>추가상품을 선택해주세요</option>
							<option>추가상품을 선택해주세요</option>
						</select>
					</span>
					<div class="scrollbar option">
						<ul>
							<li>
								<p class="name">SD 더조은 황사방역 마스크</p>
								<div class="ea-area">
									<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
									<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
									<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
								</div>
								<div class="price">
									<span>35,000원</span>
								</div>
								<button type="button" class="btn-del">삭제</button>
							</li>
							<li>
								<p class="name">SD 더조은 황사방역 마스크</p>
								<div class="ea-area">
									<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
									<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
									<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
								</div>
								<div class="price">
									<span>35,000원</span>
								</div>
								<button type="button" class="btn-del">삭제</button>
							</li>
						</ul>
					</div>
					<div class="total-price">
						<dl>
							<dt>총 상품금액</dt>
							<dd>53,000원</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>

		<div class="btn-area">
			<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">바로구매</button>
			<button type="button" class="btn stroke black btn-cart" onclick="fn.popupClose(function(){fn.popupOpen('#cart-complete-more'); setTimeout(function(){fn.popupClose()}, 1500)});">장바구니</button><!-- 수정 :2019.02.20 -->
		</div>
	</div>
</div>
<!-- // 팝업 : 장바구니 담기 -->

<!-- 팝업 : 장바구니 담기 완료 : 추가 : 2019.02.20 // -->
<div id="cart-complete" class="popup cart-complete">
	<div class="inner">
		<div class="contents">
			장바구니에<br>추가하였습니다.
		</div>
	</div>
</div>
<!-- // 팝업 : 장바구니 담기 완료 : 추가 : 2019.02.20 -->

<!-- 팝업 : 장바구니 담기 완료 : 동일한 상품이 있을 경우 : 추가 : 2019.02.22 // -->
<div id="cart-complete-more" class="popup cart-complete more">
	<div class="inner">
		<div class="contents">
			동일한 상품을 장바구니에<br>추가하였습니다.
		</div>
	</div>
</div>
<!-- // 팝업 : 장바구니 담기 완료 : 동일한 상품이 있을 경우 : 추가 : 2019.02.22 -->

<hr />

<aside id="side">
	<button type="button" class="btn-notify">알림<span class="count">0</span></button>
	<button type="button" class="btn-talk" onclick="window.open('http://talk.naver.com/wcehx9', 'talktalk', 'scrollbars=1, resizable=1, width=486, height=745');">
		<img src="/pjtCom/pc/images/common/talktalk.jpg" alt="">
	</button>
	<button type="button" class="btn-certification" onclick="openWindowCenter();">정품인증</button>
	<script>
	function openWindowCenter() {
		var popupX = (window.screen.width / 2) - (1030 / 2);
		var popupY= (window.screen.height /2) - (730 / 2);
		window.open('http://cert.snpcos.com/incert.aspx?m=P', '정품인증', 'scrollbars=yes, height=730, width=1030, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	</script>
	<a href="#wrap" class="btn-top" onclick="fn.top();">TOP</a>
</aside>


<footer id="footer">
	<!-- 2019.05.02 : 수정 // -->
	<div class="top-area">
		<div class="inner">
			<dl class="notice-area">
				<dt class="tit">NOTICE</dt>
				<dd><a href="#"><span class="txt ellipsis">네이버페이 주문/ 문의 장애 공지공지공지공지공지 공지공지공지공지 공지</span> <span class="date">2018.12.14</span></a></dd>
				<dd><a href="#"><span class="txt ellipsis">네이버페이 주문/ 문의 장애 공지</span> <span class="date">2018.12.14</span></a></dd>
				<dd><a href="#"><span class="txt ellipsis">네이버페이 주문/ 문의 장애 공지</span> <span class="date">2018.12.14</span></a></dd>
				<dd><a href="#"><span class="txt ellipsis">네이버페이 주문/ 문의 장애 공지</span> <span class="date">2018.12.14</span></a></dd>
			</dl>

			<div class="social-area">
				<p class="tit">@ IN YOUR LIFE</p>

				<div class="tab-menu">
					<a href="#snp" class="active">SNP</a>
					<a href="#hddn">hddn=lab</a>
					<a href="#msolic">M’SOLIC</a>
					<a href="#daywith">DAYWITH</a>
				</div>

				<ul id="snp" class="tab-contents active">
					<li class="naver active"><a href="#" target="_blank">네이버 포스트</a></li>
					<li class="blog active"><a href="#" target="_blank">블로그</a></li>
					<li class="instagram">인스타그램</li>
					<li class="facebook">페이스북</li>
					<li class="youtube">유튜브</li>
				</ul>

				<ul id="hddn" class="tab-contents">
					<li class="naver">네이버 포스트</li>
					<li class="blog active"><a href="#" target="_blank">블로그</a></li>
					<li class="instagram">인스타그램</li>
					<li class="facebook">페이스북</li>
					<li class="youtube">유튜브</li>
				</ul>

				<ul id="msolic" class="tab-contents">
					<li class="naver">네이버 포스트</li>
					<li class="blog">블로그</li>
					<li class="instagram active"><a href="#" target="_blank">인스타그램</a></li>
					<li class="facebook active"><a href="#" target="_blank">페이스북</a></li>
					<li class="youtube">유튜브</li>
				</ul>

				<ul id="daywith" class="tab-contents">
					<li class="naver">네이버 포스트</li>
					<li class="blog">블로그</li>
					<li class="instagram">인스타그램</li>
					<li class="facebook active"><a href="#" target="_blank">페이스북</a></li>
					<li class="youtube active"><a href="#" target="_blank">유튜브</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="cs-area">
		<div class="inner">
			<div class="tel">
				<dl>
					<dt>(주)에스디생명공학 대표번호</dt>
					<dd>02-583-1846</dd>
				</dl>

				<dl>
					<dt>온라인 주문관련 CS센터</dt>
					<dd>0505-846-1846</dd>
				</dl>
			</div>

			<dl class="time">
				<dt>업무시간</dt>
				<dd>평일 09:00~18:00 (점심시간 12:00 ~ 13:00)</dd>

				<dt>휴무</dt>
				<dd>토요일, 일요일, 공휴일 (그 외는 공지사항 참고)</dd>
			</dl>

			<div class="family">
				<span class="select">
					<select onchange="window.open($(this).val(), '_blank');">
						<option>FAMILY SITE</option>
						<option value="http://sdbiotech.co.kr/ko/main/index.php">에스디생명공학</option>
						<option value="http://www.celebeau.co.kr/main/index">셀레뷰</option>
					</select>
				</span>
			</div>

			<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

			<a href="javascript:void addPlusFriend()" class="btn-addkakao">
			  <img src="https://developers.kakao.com/assets/img/about/logos/plusfriend/friendadd_small_yellow_rect.png"/>
			</a>
			<script type='text/javascript'>
			  //<![CDATA[
			    // 사용할 앱의 JavaScript 키를 설정해 주세요.
			    Kakao.init('3e258240ce39412b209963a474790137');
			    function addPlusFriend() {
			      Kakao.PlusFriend.addFriend({
			        plusFriendId: '_kqtCxl' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
			      });
			    }
			  //]]>
			</script>
		</div>
	</div>
	<!-- // 2019.05.02 : 수정 -->

	<div class="bottom-area">
		<div class="inner">
			<a href="/" class="logo">SD SHOP</a>

			<div class="menu">
				<a href="/etc/service">회원이용약관</a>
				<a href="/etc/privacy" class="privacy">개인정보처리방침</a>
				<a href="/etc/mailReject">이메일무단수집거부</a>
				<a href="/cscenter/location">찾아오시는 길</a>
			</div>

			<address class="licensee">
				상호명 : (주)에스디생명공학 / 사업자등록번호 : 211-88-18506 / 통신판매업신고번호 : 제2014-서울강서-1057호<br>
				대표 : 박설웅 / 개인정보담당자 : 고석준 / 전화 : 02-583-1846 / 팩스 : 02-587-1846 / E-mail : snpcs@sdbiotech.co.kr<br>
				사업장 소재지 : 서울특별시 강서구 마곡중앙8로1길 66 에스디생명공학마곡사옥
			</address>

			<a href="#" class="btn-bizinfo"><img src="/pjtCom/pc/images/common/bizinfo.jpg" alt="사업자 정보 확인" onclick="window.open('//www.ftc.go.kr/bizCommPop.do?wrkr_no=2118818506','','width=750, height=700, left=0, top=0, location=no, menubar=no, status=no, toolbar=no, scrollbars=yes'); return false;"></a>

			<div class="escrow">
				<!-- <button type="button" onclick="onPopKBAuthMark();"><img src="/pjtCom/pc/images/common/escrow_kb.png" alt=""></button>
				<button type="button" onclick="onPopCertMar('01442ef765e08ddc5de763cf2cbfa477')"><img src="/pjtCom/pc/images/common/escrow_nh.png" alt=""></button> -->
				<form name="KB_AUTHMARK_FORM" method="get">
					<input type="hidden" name="page" value="B009111"/>
					<input type="hidden" name="cc" value="b010807:b008491"/>
					<input type="hidden" name="mHValue" value='d3a095c638284625f64b302774a0c37120161103144424'/>
				</form>
				<button type="button" onclick="onPopKBAuthMark();"><img src="/pjtCom/pc/images/common/escrow_kb.png" alt=""></button>
				<!-- <button type="button"><img src="/pjtCom/pc/images/common/escrow_nh.png" alt=""></button> -->
			</div>
			<!-- kb 에스크로 -->
			<script>
				function onPopKBAuthMark()
				{
					window.open('','KB_AUTHMARK','height=700, width=650, status=yes, toolbar=no, menubar=no, location=no');
					document.KB_AUTHMARK_FORM.action='http://escrow1.kbstar.com/quics';
					document.KB_AUTHMARK_FORM.target='KB_AUTHMARK';
					document.KB_AUTHMARK_FORM.submit();
				}
			</script>

			<!-- nh 에스크로 -->
			<script>
				// function onPopCertMar(key){
				//    window.open('','self','height=700, width=650, status=yes, toolbar=no, menubar=no, location=no');
				//    document.CERTMARK_FORM.certMarkURLKey.value = key;
				//    document.CERTMARK_FORM.action='https://escrow.nonghyup.com/?certMarkURLKey=' + key;
				//    document.CERTMARK_FORM.target='self';
				//    document.CERTMARK_FORM.submit();
				// }
			</script>

			<small class="copyright">COPYRIGHT (C) SD BIOTECH ALL RIGHTS RESERVED.</small>
		</div>
	</div>
</footer>
