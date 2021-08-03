<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="program";
	String path4="expect";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="프로그램 안내";
	String path4tit="예정프로그램";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="art">

		<div class="program expect list">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_art.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/art/about.jsp">ART STAND</a>
						<a href="/art/program_now_list.jsp">Program</a>
						<a href="/art/program_expect_list.jsp"><strong>예정 프로그램</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">ART STAND</h2>
					<p class="con_tit_txt">아트스탠드의 예정 프로그램을 알려드립니다.</p>

					<!-- -->
					<div class="bbs gallery type1">
						<div>
							<!-- 등록된 글이 없을때 // -->
			 				<article class="no_data">준비중입니다.</article>
			 				<!-- // 등록된 글이 없을때 -->

							<!-- 반복영역 // -->
							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type1">전시</small>
									<!--<small class="genre type2">공연</small>
									<small class="genre type3">체험</small>-->
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>
							<!-- // 반복영역 -->

							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type2">공연</small>
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>

							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type3">체험</small>
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>

							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type1">전시</small>
									<!--<small class="genre type2">공연</small>
									<small class="genre type3">체험</small>-->
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>

							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type1">전시</small>
									<!--<small class="genre type2">공연</small>
									<small class="genre type3">체험</small>-->
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>

							<article>
								<img src="/avenueCom/images/temp/art_program270x380.jpg" alt="" />
								<div class="subject_area">
									<strong class="subject dotdot">[뮤지컬] 헤드윅 뉴 메이크업 (윤도현</strong>
									<time class="date">2016.01.12 ~ 2016.02.29</time>
									<small class="genre type1">전시</small>
									<!--<small class="genre type2">공연</small>
									<small class="genre type3">체험</small>-->
								</div>
								<p class="text_viewer dotdot">
									브로드웨이를 강타한 금세기 최고의 스타일리쉬 록 뮤지컬! 더욱 강력해진 에너지, 뜨거운 심장을 가진 새로운 공연으로 다시 돌아온<헤드윅: 뉴 메이크업> 소극장 뮤지컬의 아이콘, 지난 10년간의 대단원을... 성공적으로 마무리한 뮤지컬 <헤드윅> 뉴욕 오리지널 프로덕션의 브로드웨이 공연에 발맞추어 ‘뉴 메이크업’ 으로 새롭게 돌아왔다! 2016년 3월 1일, 홍익대 대학로 아트센터 대극장에서 선보일 뮤지컬 <헤드윅> 더욱 업그레이드된 규모와 구성, 색다른 해석으로 대한민국 공연의 새로운 패러다임을 제시한다! 역대 최고의 캐스팅, 전설의 귀환
								</p>

								<div class="btn_area">
									<a href="#" class="midium type1 btn_detail">자세히보기</a>
									<a href="#" class="midium type2 btn_ticketing">예매하기</a>
								</div>
							</article>
						</div>
					</div>

					<div class="paging">
    				<a class="prev" href="#">이전</a>
    				<span class="num">
    					<a class="on" href="#"><strong>1</strong></a>
    					<a href="#">2</a>
    					<a href="#">3</a>
    				</span>
    				<a class="next" href="#">다음</a>
    			</div>

					<script>
          var listLength = $('.bbs.gallery.type1 article').length%3;
          listLength == 0 ? listLength = 3 : '';
          for ( var i=1; i<=listLength; i++ ) {
            $('.bbs.gallery.type1 article:nth-last-child('+i+')').addClass('last_line');
          }
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
