<?php
//학생 >마이페이지: 나의학습현황 =====================
header("Progma:no-cache");
header("Cache-Control:no-cache,must-revalidate");
header('Content-Type: text/html; charset=utf-8');

error_reporting(E_ALL);
ini_set("display_errors", 1);

date_default_timezone_set('Asia/Seoul');

require_once($_SERVER["DOCUMENT_ROOT"]."/comSystem/myteacher_common_mysql.php");
require_once($_SERVER["DOCUMENT_ROOT"]."/comSystem/myteacher_common_system.php");
require_once($_SERVER["DOCUMENT_ROOT"]."/comSystem/myteacher_common_utility.php");
require_once($_SERVER["DOCUMENT_ROOT"]."/comSystem/learning_func.php");


$dbconn				= get_mysql_connection('REPLICA'); //DB연결

//------------------------------------------------------------------------------------------
//요청 파라미터 정의
//------------------------------------------------------------------------------------------
$UNT_GRD = mysqli_real_escape_string($dbconn,fRequestStr("UNT_GRD",5,"GET"));			//유닛그룹
$UNT_SID = mysqli_real_escape_string($dbconn,fRequestStr("UNT_SID",30,"GET"));			//유닛세션 아이디


 ////로그인 검증
if(IsUserAuth('/'))
  ;
else
	exit;


$USER_ID=getUserId();
$USER_GBN=getUserGubun(); //CHILD ,PARENT
$IS_LEARNING= GetSecretCookie("IS_LEARNING"); //Y/N

if($USER_ID=="")
{
	$LOG_memo		="[마이페이지-나의학습현황]권한 없음.";
	$LOG_comment	="[마이페이지-나의학습현황]권한 없음";
	LogSaveUser($LOG_memo, $LOG_comment); //  로그 남기기
	//echo "권한 없음 오류!!!";
	echo"
		<script type='text/javascript'> \n
			alert('학생 로그인후 사용가능합니다.'); \n
			location.href='/member/login.php'; \n
		</script>\n
		";
	exit;
}


if($USER_GBN!="CHILD"){
	print_history_back("학생만 접근가능합니다.");
	exit;
}

if($IS_LEARNING!="Y"){
	//print_history_back("현재 학습중이 아닙니다.\\n 방금 학습이 시작되었다면 다시 로그인 하십시오.");

	echo"
		<script type='text/javascript'> \n
			//alert('현재 학습중이 아닙니다.\\n 방금 학습이 시작되었다면 다시 로그인 하십시오.'); \n
			//alert('현재 학습중이 아닙니다.'); \n
			location.href='/learning/index_nodata.php'; \n
		</script>\n
		";
	exit;

}




//======================

//학습결과에서 요청할때. UNT_SID 만 넘어온다. UNT_GRP 찾기
$isReqFromUnitResult = false;
if( !empty($UNT_SID ) ){

	$isReqFromUnitResult = true;

	$query = "
		select * from TB_LH_UNIT_SESSION_ID S
			inner join TB_LEC_UNIT U
				on S.LEV=U.LEV and S.LSN=U.LSN and S.UNT=U.UNT and U.USE_YN='Y' and S.USE_YN='Y'
		WHERE USER_ID='$USER_ID' and UNT_SID='$UNT_SID' and S.FINISH_YN='Y'
	";

	echo $query;

	if($result = mysqli_query($dbconn, $query) ){
		$row = mysqli_fetch_assoc($result);

		$UNT_GRD = $row["UNT_GRP"]; //유닛그룹재설정
	}

}



//현재 학습 위치 정보 조회
$myloc = learningFrontMyloc($USER_ID);

if(count($myloc) > 0 ){

	$curUntSid = $myloc["UNT_SID"];
	$curMidx = $myloc["M_IDX"];
	$curLev = $myloc["LEV"];
	$curLsn = $myloc["LSN"];
	$curUnt = $myloc["UNT"];
	$curAct = $myloc["ACT"];
	$curUntGrp = $myloc["UNT_GRP"];
	$curUntOrd = $myloc["UNT_ORD"];

	//현재 단계별 명칭
	$curStepNames = learningGetStepNames( $curLev ,  $curLsn,  $curUnt, $curAct);

	$curLevName = $curStepNames["LEV_NAME"];
	$curLsnName = $curStepNames["LSN_NAME"];
	$curUntName = $curStepNames["UNT_NAME"];
	$curUntGrpName = $curStepNames["UNT_GRP_NAME"];

	if($UNT_GRD  == $curUntGrp || empty($UNT_GRD) ){ //동일 유닛그룹
		$theUntGrp = $curUntGrp;

	}else{
		$theUntGrp = $UNT_GRD;

		$query = "select UNT_GRP_NAME, ORD from TB_LEC_UNIT where UNT_GRP='$UNT_GRD' AND USE_YN='Y' limit 1";
		if( $result = mysqli_query($dbconn, $query) ){
			$row = mysqli_fetch_assoc($result);

			$curUntGrpName = $row["UNT_GRP_NAME"];
			$curUntOrd = $row["ORD"];
			$curUntName = "";
		}
	}


	//학습이력 마스터 바탕으로 순서대로 유닛그룹 조회. depth=1
	$query = "select U.UNT_GRP, U.UNT_GRP_NAME , U.ORD
	from TB_LH_MASTER M
		INNER join TB_LEC_UNIT U
			ON M.LEV=U.LEV AND M.LSN=U.LSN AND M.UNT = U.UNT and U.USE_YN='Y'

	WHERE USER_ID='$USER_ID' AND M.LN_MODE='F'  AND M.USE_YN='Y' AND M.DEPTH_NO=1
	GROUP BY U.UNT_GRP
	ORDER BY U.ORD";



	$unt_grp_all = array();
	$unt_grp_pev = array();
	$unt_grp_next = array();
	if($result = mysqli_query($dbconn, $query )){

		while($row = mysqli_fetch_assoc($result) ){
			//array_push($unt_grp_arr, $row);
			if($theUntGrp != $row["UNT_GRP"] ){

				if( intval($curUntOrd) > intval($row["ORD"]) ) { //이전
					array_push($unt_grp_pev, $row);
				}else if( intval($curUntOrd) < intval($row["ORD"]) ) { //이후
					array_push($unt_grp_next, $row);
				}
			}

		}
		mysqli_free_result($result);
	}


	///유닛그룹의 하위 유닛 조회
	$query = "

		select M.UNT_SID, M.IDX, M.LEV, M.LSN, M.UNT, U.ORD, U.UNT_NAME, R.IDX as UNT_REP_IDX , S.START_DATE, S.FINISH_DATE, S.SCORE_LBL
		from TB_LH_MASTER M
			inner join TB_LEC_UNIT U
				ON M.LEV=U.LEV AND M.LSN=U.LSN AND M.UNT = U.UNT and U.USE_YN='Y' AND M.USE_YN='Y'
			inner join TB_LH_UNIT_SESSION_ID S
				ON M.UNT_SID=S.UNT_SID
			LEFT join TB_LH_UNIT_REPORT R
				on R.UNT_SID=M.UNT_SID

		WHERE M.USER_ID='$USER_ID' AND M.LN_MODE='F' AND M.DEPTH_NO=1 AND U.UNT_GRP='$theUntGrp'
		GROUP BY M.UNT_SID


	";

//echo $query;

	$sub_unt = array();
	if( $result = mysqli_query($dbconn, $query) ){
		while( $row = mysqli_fetch_assoc( $result ) ){
			array_push($sub_unt, $row);
		}
		mysqli_free_result($result);
	}

}

?>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php"; ?>
	<!-- //config -->

	<meta name="description" content="@@description" />

	<link rel="stylesheet" href="/pjtCom/css/sub.css">

	<script>

	$(window).load(function(){
		fn.progressLen();
	});

	//이전 유닛그룹으로 이동
	function prevUnitGroup(ugrp){
		if(ugrp == ""){
			alert("처음 유닛 그룹입니다.");
			return;
		}
		goUnitGroup(ugrp);
	}

	//다음 유닛그룹으로 이동
	function nextUnitGroup(ugrp){
		if(ugrp == ""){
			alert("마지막 유닛 그룹입니다.");
			return;
		}
		goUnitGroup(ugrp);
	}

	//유닛그룹으로 이동
	function goUnitGroup(ugrp){

		var f = document.frm_unit;
		f.UNT_GRD.value = ugrp;

		//console.log(f);

		//alert(f.UNT_GRD.value);

		f.submit();
	}

	//학습 결과 보기
	function openReport(untsid){

		var request = $.ajax({
		  url: "/api/learning/unit_report.php",
		  method: "POST",
		  data: { UNT_SID : untsid, LN_MODE:"F" },
		  dataType: "json"
		});

		request.done(function( msg ) {
			//console.log(msg);

			var tbody = $("#popup_detail .contents .table tbody ");
			tbody.empty();

			var d = msg.DATA;
			var report = d.UNIT_REPORT;
			var session = d.UNIT_SESSION;

			var report_q_total_cnt = 0;

			var report_q_voca_cnt = 0;
			var report_q_choi_cnt = 0;
			var report_q_answ_cnt = 0;

			var report_hint_0_cnt = 0;
			var report_hint_1_cnt = 0;
			var report_hint_2_cnt = 0;

			var report_score = 0;

			for(var i=0 ;i < report.length ; ++i){
				var info = report[i];
				var voca_total_cnt = parseInt(info["Q_CNT_VOCA_TOTAL_REAL"]);

				var choi_total_cnt = parseInt(info["Q_CNT_CHOI_TOTAL_REAL"]);
				var answ_total_cnt = parseInt(info["Q_CNT_ANSW_TOTAL_REAL"]);

				var total_cnt = parseInt(info["Q_CNT_TOTAL_REAL"]);


				var hint_display_cnt_0 = parseInt(info["H_DISPLAY_CNT_0"]);
				var hint_display_cnt_1 = parseInt(info["H_DISPLAY_CNT_1"]);
				var hint_display_cnt_2 = parseInt(info["H_DISPLAY_CNT_2"]);


				report_q_total_cnt += total_cnt;
				report_q_voca_cnt += voca_total_cnt;
				report_q_choi_cnt += choi_total_cnt;
				report_q_answ_cnt += answ_total_cnt;
				report_hint_0_cnt += hint_display_cnt_0;
				report_hint_1_cnt += hint_display_cnt_1;
				report_hint_2_cnt += hint_display_cnt_2;

				var src = "<tr>";

				//세부 학습 목표
				src += "<td>"+info["OBJ_NAME"]+"</td>";

				//act 구분
				src += "<td>";
				if(voca_total_cnt > 0){
					src += "<span>어휘</span>";
				}
				if(choi_total_cnt > 0){
					src += "<span>객관식</span>";
				}
				if(answ_total_cnt > 0){
					src += "<span>주관식</span>";
				}
				src +="</td>";

				//act의 문제 수
				src += "<td>"
				if(voca_total_cnt > 0){
					src += "<span>"+voca_total_cnt + "</span>";
				}
				if(choi_total_cnt > 0){
					src += "<span>"+choi_total_cnt + "</span>";
				}
				if(answ_total_cnt > 0){
					src += "<span>"+answ_total_cnt + "</span>";
				}
				src += "</td>";

				//유닛 총문제수
				src += "<td>"+total_cnt+"</td>";

				src += "<td>"+ hint_display_cnt_0 +"</td>";
				src += "<td>"+ hint_display_cnt_1 +"</td>";
				src += "<td>"+ hint_display_cnt_2 +"</td>";
				src += "<td><b>"+ Math.floor( (hint_display_cnt_0/total_cnt) * 100 )+"%</b></td>";

				src += "</tr>";


				tbody.append(src);

			}// end loop

			$("#report_q_total_cnt").html(report_q_total_cnt);
			$("#report_q_voca_cnt").html(report_q_voca_cnt);
			$("#report_q_choi_cnt").html(report_q_choi_cnt);
			$("#report_q_answ_cnt").html(report_q_answ_cnt);
			$("#report_hint_0_cnt").html(report_hint_0_cnt);
			$("#report_hint_1_cnt").html(report_hint_1_cnt);
			$("#report_hint_2_cnt").html(report_hint_2_cnt);

			$("#report_score").html(session.SCORE );


			var score_lbl = session.SCORE_LBL;
			var score_txt = score_lbl;
			if(score_lbl == "notbad"){
				score_txt = "not bad";
			}else if(score_lbl == "tryagain"){
				score_txt = "try again";
			}

			$("#score_lbl").html("<samp class='"+score_lbl+" icon'>"+score_txt+"</samp>");


			//유닛이름
			$("#unit_name").html(session.UNT_NAME);


		});

		request.fail(function( jqXHR, textStatus ) {
		 // alert( "Request failed: " + textStatus );
		});
	}
	<?php

	if($isReqFromUnitResult){
		echo "openReport('$UNT_SID')";
	}

	?>
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mypage condition">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
	        	<!--<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php"; ?>-->
				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/">나의 학습 현황</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
		            <ul class="tabmenu">
						<li class="condition"><a href="/mypage/" class="on">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">학습량</a></li>
						<li class="diary"><a href="/mypage/diary.php">학습 일지</a></li><!-- 2017.08.21 : 수정 -->
						<li class="cycle"><a href="/mypage/cycle.php">학습 주기</a></li><!-- 2017.08.21 : 수정 -->
						<li class="speed"><a href="/mypage/speed.php">문제풀이 속도</a></li>
						<li class="modify"><a href="/mypage/modify.php">회원정보 수정</a></li>
					</ul>
				</div>
			</div>
			<?php
			if(count($myloc) > 0){//현재 학습중일때
			?>

			<div class="progress_area">
			<form name="frm_unit" action="/mypage" method="GET">
				<input type="hidden" name="UNT_GRD" value="<?=$UNT_GRD?>" />
				<div class="progress_wrap">
					<div class="progress_inner">
						<div class="location">
							<p class="now">현재 학습 위치</p>

							<div class="hgroup">
								<h3 class="dep2 icon"><?=$curLevName?></h3>
								<h4 class="dep3"><?=$curLsnName?></h3>
								<h5 class="dep4"><?=$curUntGrpName?></h4>
								<h6 class="dep5"><?=$curUntName?></h5>
							</div>
						</div>

						<div class="progress">
							<ul>
								<?php
								foreach($unt_grp_pev as $val){
								?>
									<li class="prev"><a href="#" onclick="goUnitGroup('<?=$val["UNT_GRP"]?>');return false;"><?=$val["UNT_GRP_NAME"]?></a></li>
								<?php
								}
								?>

								<?php
								foreach($unt_grp_next as $val){
								?>
									<li class="next"><a href="#" onclick="goUnitGroup('<?=$val["UNT_GRP"]?>');return false;"><?=$val["UNT_GRP_NAME"]?></a></li>
								<?php
								}
								?>
							</ul>
						</div>
						<div class="btn_area">
							<a href="#" onclick="prevUnitGroup('<?=end($unt_grp_pev)["UNT_GRP"]?>');return false;" class="btn prev icon">이전</a>
							<a href="#" onclick="nextUnitGroup('<?=reset($unt_grp_next)["UNT_GRP"]?>');return false" class="btn next icon">다음</a>
						</div>
					</div>
				</div>
			</form>
			</div>

			<section class="whiteboard">
				<div class="tit_area">
					<h1 class="tit"><img src="/pjtCom/images/sub/tit_mypage_detail.png" alt="세부 학습 현황"></h1>
					<a href="#popup_curriculum" class="btn txt curriculum icon">커리큘럼</a>
				</div>

				<table class="table">
					<caption><?=$curUntGrpName?></caption>

                    <!-- 2017.08.21 : 수정 // -->
					<colgroup>
						<col style="width:456px;">
						<col style="width:144px;">
						<col style="width:312px;">
					</colgroup>

					<thead>
						<tr>
							<th scope="col">Unit</th>
							<th scope="col">평가</th>
							<th scope="col">학습 기간</th>
						</tr>
					</thead>
					<!-- // 2017.08.21 : 수정 -->

					<tbody>
					<?php
						foreach($sub_unt as $val){
					?>
						<tr <?= ($val["UNT_SID"] == $curUntSid) ? "class='ing'":""?> >
							<td><a href="<?=!empty($val["UNT_REP_IDX"]) ? "#popup_detail" : "#"?>" onclick="openReport('<?=$val["UNT_SID"]?>');"><?=$val["UNT_NAME"]?></a></td>
							<td class="level"><?php
							if($val["UNT_SID"] == $curUntSid){
								echo "<a href='/learning/'>학습중...</a>";
							}else{
								if( !empty($val["UNT_REP_IDX"]) ){
									$score_lbl = $val["SCORE_LBL"];
									echo "<span class='$score_lbl icon'>$score_lbl</span>";
								}else{
									echo "미학습";
								}
							}

							?></td>
							<td><?php
								if( !empty($val["START_DATE"]) ){
									echo date('Y.m.d', strtotime($val["START_DATE"]))." ~ ";
								}
								if( !empty($val["FINISH_DATE"]) ){
									echo date('Y.m.d', strtotime($val["FINISH_DATE"]));
								}
							?></td>
						</tr>
					<?php
						}
					?>

					</tbody>
				</table>
			</section>
			<?php
			}else{
			?>
			<div style="text-align: center;padding: 10%;">현재 학습중이 아닙니다.</div>
			<?php
			}
			?>
		</div>
	</main>
	<!-- //wrap -->

	<!-- 상세보기 팝업 // -->
	<div class="modal" id="popup_detail">
		<div class="inner">
			<article class="popup_detail">
				<div class="tit_area">
					<a href="#close" class="btn icon close">닫기</a>
				</div>
				<div class="contents">
					<fieldset class="category_area">
						<legend id="unit_name"></legend>

<!--
						<form>
							<label class="select category1">
								카테고리1 선택
								<select>
									<option>중1</option>
									<option>중2</option>
									<option>중3</option>
								</select>
							</label>

							<label class="select category2">
								카테고리2 선택
								<select>
									<option>시제1</option>
									<option>시제2</option>
									<option>시제3</option>
								</select>
							</label>

							<label class="select category3">
								카테고리3 선택
								<select>
									<option>수동태1</option>
									<option>수동태2</option>
									<option>수동태3</option>
								</select>
							</label>

							<label class="select category4">
								카테고리4 선택
								<select>
									<option>Unit 17.1</option>
									<option>Unit 17.2</option>
									<option>Unit 17.3</option>
								</select>
							</label>

							<button type="button" class="btn box move">이동하기</button>
						</form>

						-->
					</fieldset>

					<p class="output">학습결과 : <span id="score_lbl"></span></p> <!-- master 일때 -->
					<!-- <p class="output">학습결과 : <samp class="excellent icon">excellent</samp></p> --><!-- excellent 일때 -->
					<!-- <p class="output">학습결과 : <samp class="notbad icon">not bad</samp></p> --> <!-- not bad 일때 -->
					<!-- <p class="output">학습결과 : <samp class="tryagain icon">try again</samp></p> --> <!-- try again 일때 -->

					<table class="table">
						<caption></caption>
						<colgroup>
							<col style="width:154px;">
							<col style="width:99px;">
							<col style="width:87px;">
							<col style="width:93px;">
							<col style="width:94px;">
							<col style="width:94px;">
							<col style="width:94px;">
							<col style="width:89px;">
						</colgroup>

						<thead>
							<tr>
								<th rowspan="3">세부 학습 목표</th>
							</tr>

							<tr>
								<th colspan="7">평가</th>
							</tr>

							<tr>
								<th colspan="3">총 문제 수</th>
								<th>
									정답<br>
									(힌트 X)
								</th>
								<th>
									정답<br>
									(힌트 1번)
								</th>
								<th>
									정답<br>
									(힌트 2번 이상)
								</th>
								<th>
									정답률<br>
									(힌트 X)
								</th>
							</tr>
						</thead>

						<tbody>

						</tbody>

						<tfoot>
							<tr>
								<th>Total</th>
								<td colspan="3">
									총 <span id="report_q_total_cnt">0</span> 문제<br>
									<span>어휘 <span id="report_q_voca_cnt">0</span> 문제 / 객관식 <span id="report_q_choi_cnt">0</span> 문제 / 주관식 <span id="report_q_answ_cnt">0</span> 문제</span>
								</td>
								<td><span id="report_hint_0_cnt">0</span> 개</td>
								<td><span id="report_hint_1_cnt">0</span> 개</td><!-- 2017.08.21 : 수정 -->
								<td><span id="report_hint_2_cnt">0</span> 개</td><!-- 2017.08.21 : 수정 -->
								<td><span id="report_score">0</span>%</td>
							</tr>
						</tfoot>
					</table>
			</article>
		</div>
	</div>
	<!-- // 상세보기 팝업 -->

	<!-- 커리큘럼 팝업 // -->
    <!-- 2017.08.21 : 수정 // -->
	<div class="modal" id="popup_curriculum">
		<div class="inner">
			<article class="popup_curriculum">
				<div class="tit_area">
					<h1 class="tit">중등 1</h1>
					<a href="#close" class="btn icon close">닫기</a>
				</div>
				<div class="contents">
                    <div class="lesson_area">
						<div class="tabmenu">
							<ul>
								<li class="lesson"><a href="#" class="on">시제</a></li>
								<li class="lesson"><a href="#">조동사</a></li>
								<li class="lesson"><a href="#">to 부정사</a></li>
								<li class="lesson"><a href="#">동명사</a></li>
								<li class="lesson"><a href="#">대명사</a></li>
								<li class="lesson"><a href="#">관사</a></li>
								<li class="lesson"><a href="#">형용사</a></li>
								<li class="lesson"><a href="#">부사</a></li>
								<li class="lesson"><a href="#">관계대명사</a></li>
								<li class="lesson"><a href="#">가정법</a></li>
							</ul>
						</div>

						<div class="btn_area">
							<button type="button" class="btn prev icon">이전</button>
							<button type="button" class="btn next icon">다음</button>
						</div>
					</div>

					<ul class="list_area">
						<li><a href="#" class="complete">be동사1_현재</a></li> <!-- 완료 학습 class="complete" -->
						<li><a href="#" class="now">be동사2_현재</a></li> <!-- 진행중 학습 class="now" -->
						<li><a href="#">일반동사_현재</a></li>
						<li><a href="#">현재진행형</a></li>
						<li><a href="#">가주어 it_현재</a></li>
						<li><a href="#">There is, There are</a></li>
						<li><a href="#">의문사_현재</a></li>
						<li><a href="#">빈도부사_현재</a></li>
						<li><a href="#">be동사1_과거</a></li>
						<li><a href="#">Be동사2_과거</a></li>
						<li><a href="#">일반동사_과거</a></li>
						<li><a href="#">과거진행형</a></li>
						<li><a href="#">가주어 it_과거</a></li>
						<li><a href="#">There was, There were</a></li>
						<li><a href="#">의문사_과거</a></li>
						<li><a href="#">빈도부사_과거</a></li>
						<li><a href="#">수동태</a></li>
						<li><a href="#">현재완료</a></li>
					</ul>
				</div>
			</article>
		</div>
	</div>
	<!-- // 2017.08.21 : 수정 -->
	<!-- // 커리큘럼 팝업 -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>


<?php

close_mysql_connection($dbconn);  //DB연결해제
?>
