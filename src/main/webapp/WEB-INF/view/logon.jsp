<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>成都职业技术学院网上缴费系统</title>
<style type="text/css">
BODY {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px;
}
BODY.bg{background:url('http://www.cdp.edu.cn/web/Skin/cdvtc/images/bg.jpg') repeat-x center top;}
H1 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H2 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H3 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H4 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H5 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H6 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DT {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DD {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
UL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
OL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
LI {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
TH {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
TD {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
P {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
BLOCKQUOTE {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
PRE {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
FORM {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
FIELDSET {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
LEGEND {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
INPUT {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
BUTTON {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
TEXTAREA {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
HR {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H1 {
	FONT-SIZE: 100%
}
H2 {
	FONT-SIZE: 100%
}
H3 {
	FONT-SIZE: 100%
}
H4 {
	FONT-SIZE: 100%
}
H5 {
	FONT-SIZE: 100%
}
H6 {
	FONT-SIZE: 100%
}
LI {
	LIST-STYLE-TYPE: none
}
TABLE {
	BORDER-SPACING: 0; BORDER-COLLAPSE: collapse; EMPTY-CELLS: show
}
BUTTON {
	OUTLINE-STYLE: none; FONT-SIZE: 100%
}
INPUT {
	OUTLINE-STYLE: none; FONT-SIZE: 100%
}
SELECT {
	OUTLINE-STYLE: none; FONT-SIZE: 100%
}
TEXTAREA {
	OUTLINE-STYLE: none; FONT-SIZE: 100%
}
TEXTAREA {
	resize: none
}
FIELDSET {
	BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px
}
IMG {
	BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px
}
LEGEND {
	COLOR: #000
}
HR {
	BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-STYLE: none; HEIGHT: 1px; BORDER-RIGHT-STYLE: none
}
BODY {
	BACKGROUND: #fff; text-rendering: optimizelegibility
}
BODY {
	FONT: 12px/1.5 'Helvetica Neue','Segoe UI',Tahoma,'Hiragino Sans GB','Hiragino Kaku Gothic Pro','Microsoft YaHei',sans-serif; COLOR: #444
}
BUTTON {
	FONT: 12px/1.5 'Helvetica Neue','Segoe UI',Tahoma,'Hiragino Sans GB','Hiragino Kaku Gothic Pro','Microsoft YaHei',sans-serif; COLOR: #444
}
INPUT {
	FONT: 12px/1.5 'Helvetica Neue','Segoe UI',Tahoma,'Hiragino Sans GB','Hiragino Kaku Gothic Pro','Microsoft YaHei',sans-serif; COLOR: #444
}
SELECT {
	FONT: 12px/1.5 'Helvetica Neue','Segoe UI',Tahoma,'Hiragino Sans GB','Hiragino Kaku Gothic Pro','Microsoft YaHei',sans-serif; COLOR: #444
}
TEXTAREA {
	FONT: 12px/1.5 'Helvetica Neue','Segoe UI',Tahoma,'Hiragino Sans GB','Hiragino Kaku Gothic Pro','Microsoft YaHei',sans-serif; COLOR: #444
}
A {
	COLOR: #0193c4; TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: underline
}
H1 {
	FONT-SIZE: 18px
}
H2 {
	FONT-SIZE: 16px
}
H3 {
	FONT-SIZE: 14px
}
.vm {
	VERTICAL-ALIGN: middle
}
.vm * {
	VERTICAL-ALIGN: middle
}
.hm {
	TEXT-ALIGN: center
}
.z {
	FLOAT: left
}
.y {
	FLOAT: right
}
.cl:after {
	DISPLAY: block; HEIGHT: 0px; VISIBILITY: hidden; CLEAR: both; CONTENT: '.'
}
.cl {
	ZOOM: 1
}
.cl-l {
	CLEAR: left
}
.cl-r {
	CLEAR: right
}
.re-height {
	ZOOM: 1; OVERFLOW: hidden
}
.wp {MARGIN: 0px auto;WIDTH:970px;overflow: hidden;position: relative;}
.hd {
	PADDING-TOP: 60px
}
.ft {
	MARGIN: 8px 0px; COLOR: #5f5f5f
}
.ft .space {
	MARGIN-LEFT: 120px
}

.jxjw-cont {
	MARGIN-TOP: 38px
}
.jxjw-cont .pipe {
	MARGIN: 0px 5px; COLOR: #797979
}
.jxjw-bd {
	 HEIGHT: 413px; margin:10px auto;
}
.login-panel {
	MARGIN-TOP: 48px; WIDTH: 327px; BACKGROUND: url(${staticPath}/logon_images/login-bg.png) no-repeat; HEIGHT:300px
}
.login-form {
	MARGIN: 20px 40px 0px 40px;
}
.login-form LABEL {
	DISPLAY: block; MARGIN-BOTTOM: 5px; COLOR: #5f5f5f; FONT-SIZE: 13px; FONT-WEIGHT: 700
}
.login-form INPUT {
	BORDER-BOTTOM: #b2b2b2 1px solid; BORDER-LEFT: #b2b2b2 1px solid; PADDING-BOTTOM: 3px; LINE-HEIGHT: 19px; PADDING-LEFT: 3px; WIDTH: 246px; PADDING-RIGHT: 3px; MARGIN-BOTTOM: 10px; HEIGHT: 19px; BORDER-TOP: #b2b2b2 1px solid; BORDER-RIGHT: #b2b2b2 1px solid; PADDING-TOP: 3px
}
.login-form INPUT.focus {
	BORDER-BOTTOM: #1494d3 1px solid; BORDER-LEFT: #1494d3 1px solid; BORDER-TOP: #1494d3 1px solid; BORDER-RIGHT: #1494d3 1px solid; -webkit-box-shadow: 0 0 2px #71d3fa; -moz-box-shadow: 0 0 2px #71d3fa; box-shadow: 0 0 2px #71d3fa
}
.login-form INPUT.error {
	BORDER-BOTTOM: #db2626 1px solid; BORDER-LEFT: #db2626 1px solid; BACKGROUND: #ffe3e3; COLOR: #db2626; BORDER-TOP: #db2626 1px solid; BORDER-RIGHT: #db2626 1px solid; -webkit-box-shadow: 0 0 2px #ff4545; -moz-box-shadow: 0 0 2px #ff4545; box-shadow: 0 0 2px #ff4545
}
.login-form .verify {
	MARGIN: 0px; WIDTH: 40%
}
.login-form .login-submit {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; LINE-HEIGHT: 30px; MARGIN-TOP: 20px; WIDTH: 252px; BACKGROUND: url(${staticPath}/logon_images/btn-bg-l.png) no-repeat; HEIGHT: 32px; COLOR: #fff; FONT-SIZE: 14px; BORDER-TOP: 0px; FONT-WEIGHT: 700; BORDER-RIGHT: 0px
}
.login-form .login-submit-on {
	BACKGROUND: url(${staticPath}/logon_images/btn-bg-l-on.png) no-repeat
}
.meta{padding:20px;background:#fff;}
.x{position: absolute;width:550px;top:50px;left:00px;filter:alpha(opacity:90);opacity:0.9;}
.meta ul {height:22px;overflow:hidden;}
.meta ul li{float:left;margin-right:10px;}
.meta ul li.hover{border-bottom:2px solid #2056E4;}
.panel{display:none;}
.show_panel{display:block;}
</style>
</head>

<body class="bg">
<div class=hd>
	<div class=wp>
		<P class="jxjw-cont y">
            <a href="#" target=_blank>常见问题</A><span class=pipe>|</span> 
            <a href="#" target=_blank>招生简章</A>
        </P>
		<IMG alt="成都职业技术学院" src="http://www.cdp.edu.cn/Skin/cdvtc/2014new/images/logo.png"> 
	</div>
</div>
<div class="jxjw-bd wp">
	<div class=wp>
	<div class="x">
		
		<div class="meta">
				<ul>
					<li class="hover"><a id="p1" href="#1">学校介绍</a></li>
					<li><a id="p2" href="#2">重要提示</a></li>
					<li><a id="p3" href="#3">系统公告</a></li>
					<li><a id="p4" href="#4">支付说明</a></li>
				</ul>
				
				<div id="meta_panel_p1" class="panel show_panel">
成都职业技术学院位于四川省成都市，是一所公办全日制专科层次普通高等学校。<br/>
学校于2004年由原成都市新华职业高中和原成都旅游职业学校两所职业高中合并组建的普通高职院校；2010年经教育部、财政部批准为国家骨干高职院校拟立项建设单位，于2012年正式启动建设；2010年经四川省教育厅、四川省财政厅批准为省级示范性高职院校建设单位。<br/>
截至2014年，学院占地面积530亩，建筑面积25万平方米。分别在四川省成都市新津县、青羊区、锦[1] 江区、高新区共设四个教学点；设有7个系部，开设专业40余个，有在校学生1万余人。<br/>
				</div>
				
				<div id="meta_panel_p2" class="panel">
				登录缴费系统的用户名为学号，密码为身份证号码后6位
				</div>
				
				<div id="meta_panel_p3" class="panel">
				暂无公告！
				</div>
				
				<div id="meta_panel_p4" class="panel">
				目前在线缴费系统支持支付方式有：中国银行在线支付、中国银行在线代扣、现金支付或现场POS刷卡
				</div>
		</div>
		
	</div>
		<div class="login-panel y">
			<form id="loginForm" name="loginForm" class="login-form" method="post" action="${ctx}/loginByHttp.do">
				<label for="">用户名</label>
				<input value="" id="loginId" name="userName" /> 
				<label for="">密码</label> 
				<input id="passwd" name="password" type="password"/> 
				<input class="login-submit" onclick="login()" value="登录" type="button"/> 
				<input type="hidden" name="userType" value="1"/>
				<i id="error" style="color:#ff0000;font-style:normal;">${error}</i>
			</form>
		</div>
	</div>
</div>
<div class="ft cl">
	<div class=wp>
    	<span class=z>© 成都职业技术学院 版权所有 当前版本2.9</span>
        <P class=y>
        	<span>学生事务电话：028-xxxx</span> 
        	<span>|</span> 
			<span>招生联系电话：028-xxxx</span> 
        </P>
    </div>
</div>
<SCRIPT src="${staticPath}/js/jquery-1.8.3.min.js"></SCRIPT>
<script>
     document.onkeydown=keyListener;    
     function keyListener(e){  
       e = e ? e : event;   
       if(e.keyCode == 13){  
    	   login();    
       }    
     }    
    
    // 输入框效果
    $('.login-form').on('focus', 'input', function () {
        if ($(this).val() == '请重新输入') {
            $(this).val('');
        }
        $(this).removeClass('error')
        $(this).addClass('focus');
    });
    $('.login-form').on('blur', 'input', function () {
        $(this).removeClass('focus');
    });

    // 按钮效果
    $('.login-form').on('mousedown', '.login-submit', function () {
        $(this).addClass('login-submit-on');
    });
    $('.login-form').on('mouseup', '.login-submit', function () {
        $(this).removeClass('login-submit-on');
    });
    
    function login(){
	var loginId = document.getElementById("loginId").value;
	var passwd = document.getElementById("passwd").value;
	var error = document.getElementById("error");
	if(loginId==""){
		error.innerHTML = "请输入登录名称";
		document.getElementById("loginId").focus();
		return;
	}
	if(passwd==""){
		error.innerHTML = "请输入登录密码";;
		document.getElementById("passwd").focus();
		return;
	}
	document.loginForm.submit();
	return;
	}
    
    $(document).ready(function(){
    	$('div.meta ul li a').click(function(){
    		$(this).parent().siblings('li').each(function(){
    			$(this).removeClass('hover');
    		})
    		$('div.panel').each(function(){
    			$(this).hide();
    			$(this).parent().removeClass('hover');
    		});
    		$('#'+$(this).attr('id')).parent().addClass('hover');
    		$('#meta_panel_'+$(this).attr('id')).show();
    	});
    });
</script>

</body>
</html>