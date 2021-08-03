
/**
function InputLimitCheck(obj,maxlen)
{
	//common.js
	var instr = obj.value
	if(getBytes(instr) > maxlen)
	{
		alert("너무 길게 쓰셨습니다.")
		obj.value = obj.value.substring(0,maxlen-1)
		return false;
	}
	else
	{
		return true;
	}
}
**/


function InputLimitCheck(aro_name,ari_max)
{
	var ls_str = aro_name.value; // 이벤트가 일어난 컨트롤의 value 값
	var li_str_len = ls_str.length; // 전체길이

	// 변수초기화
	var li_max = ari_max; // 제한할 글자수 크기
	var i = 0; // for문에 사용
	var li_byte = 0; // 한글일경우는 2 그밗에는 1을 더함
	var li_len = 0; // substring하기 위해서 사용
	var ls_one_char = ""; // 한글자씩 검사한다
	var ls_str2 = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.

	for(i=0; i< li_str_len; i++)
	{
		// 한글자추출
		ls_one_char = ls_str.charAt(i);
		
		// 한글이면 2를 더한다.
		if (escape(ls_one_char).length > 4)
		{
			li_byte += 2;
		}
		// 그밗의 경우는 1을 더한다.
		else
		{
			li_byte++;
		}
		
		// 전체 크기가 li_max를 넘지않으면
		if(li_byte <= li_max)
		{
			li_len = i + 1;
		}
   }

	// 전체길이를 초과하면
	if(li_byte > li_max)
	{
		alert( li_max + " 글자를 초과 입력할수 없습니다. \n 초과된 내용은 자동으로 삭제 됩니다. ");
		ls_str2 = ls_str.substr(0, li_len);
		aro_name.value = ls_str2;
	}
	aro_name.focus(); 
}




function OpenPopUp(purl, wid, hei, popName)
{
	var ww = window.open(purl, popName , "toolbar=no,menubar=no,resizable=no,scrollbars=yes,status=no,top=200,left=400,width="+wid+",height="+hei);
	ww.focus();	
}



//바이트 계산
function getBytes(instr) {
    var len = 0;
    for(i=0; i<instr.length; i++) {
        var chr = instr.charAt(i);
        if (escape(chr).length > 4) {
                len += 2;
        }
        else if(escape(chr) !='%0D') {
                len++;
        }
    }
    return len;
}

//숫자를 문자로 바꾸는데 10보다 작을경우 앞에 "0"을 붙임
function n2c(sNum)
{
	var no = parseInt(sNum);
	if(no < 10)
		return "0"+no;
	else
		return no;
}


function LastDay(iYear, iMonth)
{
	var lastDay = 0;
	if(iMonth == 4 || iMonth == 6 || iMonth == 9 || iMonth == 11)
		lastDay = 30;
	else if(iMonth == 2)
	{
    	if(iYear % 4 == 0 || (iYear % 100 == 0 && iYear % 400 != 0))
        	lastDay = 29;
        else
        	lastDay = 28;
    }
    else
		lastDay = 31;

    return lastDay;
}

function putDay(Form1)
{
	var f = Form1;
	var y = parseInt(f.stYear.options[f.stYear.selectedIndex].value);
	var m = parseInt(f.stMonth.options[f.stMonth.selectedIndex].value);
	var lastDay = LastDay(y, m);

	for(i = 1; i <= lastDay; i++)
	{
		var newOpt = new Option(""+i, ""+i);
		f.stDay.options[i-1] = newOpt;
	}
	f.stDay.length = lastDay;
}

function putDay2(Form1)
{
	var f = Form1;
	var y = parseInt(f.edYear.options[f.edYear.selectedIndex].value);
	var m = parseInt(f.edMonth.options[f.edMonth.selectedIndex].value);
	var lastDay = LastDay(y, m);

	for(i = 1; i <= lastDay; i++)
	{
		var newOpt = new Option(""+i, ""+i);
		f.edDay.options[i-1] = newOpt;
	}
	f.edDay.length = lastDay;
}




function checkImageFile(fileName)
{
	var bRes = false;
	var dot = fileName.lastIndexOf(".");
	if(dot > 0)
	{
		var ext = fileName.substring(dot);
		if(ext.toLowerCase() == ".jpg" || ext.toLowerCase() == ".gif")
			bRes = true;
	}
	
	if(!bRes) alert("이미지 파일은 확장자가 .jpg 또는 .gif인 경우만 가능합니다.");
	
	return bRes;
}

function check_email(str) {
    var regDoNot = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/;
    var regMust = /^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$/;

    if (!regDoNot.test(str) && regMust.test(str)) return true;
    else return false;
}

function check_isnumber(str) {
	pattern = /^[0-9]+$/;
	return(pattern.test(str));
}

/******* 문자열 입력제어 *************/


//$,#,;문자열입력 제어
function isValidProdNm(str) { 	
   	for (index = 0; index < str.value.length; index++)	
	{	
   		if (str.value.charCodeAt(index) == 36 || str.value.charCodeAt(index) == 35 || 
   		str.value.charCodeAt(index) == 59)
    	{
    	alert('허용되지 않는 문자열이 존재합니다.');  
    	str.value="";  	
    	str.focus();
    	return;
		}
	}
}

function numChk(str){
	//onKeyUp
	if (isNaN(str.value)){ 
		alert('숫자만 입력하세요'); 
		str.value = "";
		str.focus();
		
		return;
	}
}

function extChk(fld)
{
		var m_Sp = /[$\\@\\\#%\^\&\*\(\)\[\]\+\_\{\}\`\'\"\;\~\=\|]/;
		var strLen = fld.length;
		var m_char = fld.charAt((strLen) - 1);
		if(m_char.match(m_Sp) != -1) {
			return false;
		}else{
			return true;
		}
}

function numChk2(str){
	//onKeyUp
	if (isNaN(str.value)){ 
		return false;
	}
	else
	{
		return true;
	}
}


//문자열 제어
function checkData(data){
	//data = "!$)#%@%gggew#@$@+_|+{p[[`";
	for (var i=0; i < data.value.length; i++) { 
		ch_char = data.value.charAt(i) ;
		ch=ch_char.charCodeAt();
		if( (ch >= 33 && ch <= 45) || (ch >= 58 && ch <= 64) || (ch >= 91 && ch <= 96) || (ch >= 123 && ch <= 126) ) {
			alert("문자 " +ch_char+ " 는 입력할 수 없습니다");
			data.value="";
			data.focus();
			return;
		}
	}
	
}	


//div 화면 보이기/ 안보이기
    function toggle_on(divId) {
            var element = document.getElementById(divId);
            element.style.display = "block";
    }

	function toggle_off(divId) {
            var element = document.getElementById(divId);
            element.style.display = "none";
    }

//문자열 안의 공백 지우기
function deleteSpace(str) { 
	var out = "";

	for (common_i = 0; common_i < str.length; common_i++) { 
		if (str.charAt(common_i) == " ") { 
			continue;
		}
		out += str.charAt(common_i); 
	} 
	return out.length; 
}


//flash 보여주기
function flash_wf(flash_name,flash_width,flash_height,flash_id,wmd){
    document.write(" \
        <Object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' id='"+flash_id+"' ALIGN=''> \
        <PARAM NAME=movie VALUE='"+flash_name+"'> \
        <PARAM NAME=quality VALUE=high> \
    ");
    if( wmd == '1' ){
        document.write(" \
            <PARAM NAME=wmode VALUE=transparent> \
        ");
    }
    if( wmd == '1' ){
        document.write(" \
            <EMBED src='"+flash_name+"' wmode='transparent' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
        ");
    }else{
        document.write(" \
            <EMBED src='"+flash_name+"' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
        ");
    }
    document.write(" \
        </EMBED> \
        </OBJECT> \
    ");
}
