<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="google" content="notranslate" />
<title>test</title>
<%@ include file="/WEB-INF/view/common/all_import"%>
<script type="text/javascript" defer>
Ext.onReady(function() {
	var json = Ext.decode('${result}');
	App.json = json;
	App.init(json);
});
function initOcx() {
	DUmsocx1 = document.getElementById("DUmsocx");
	pos_amount = document.getElementById('field2');
	pos_payDate = document.getElementById('field4');
	pos_pzhao = document.getElementById('field3');
	pos_ckhao = document.getElementById('field5');
}
</script>
</head>
<body  onload="initOcx()">
<div style="display:none">
<OBJECT id="DUmsocx" classid=clsid:E083E848-B477-4F16-BCD5-72D74BC1E2AF>
<PARAM NAME="_ExtentX" VALUE="7000">
<PARAM NAME="_ExtentY" VALUE="4000">
</OBJECT>
金额<input type="text" name="field2" size=12 maxlength=12 value="000000000001" id="field2"/>
原凭证号<input type="text" name="field3" size=6 maxlength=6 value="000000" id="field3"/>
原交易日期<input type="text" name="field4" size=8 maxlength=8 value="20110000" id="field4"/>
原交易参考号<input type="text" name="field5" size=12 maxlength=12 value="000000000000" id="field5"/>
</div>
</body>
</html>