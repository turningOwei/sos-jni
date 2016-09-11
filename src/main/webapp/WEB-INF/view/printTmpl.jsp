<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="google" content="notranslate" />
<title>票据打印</title>
<style>table{ border-collapse:collapse;} td {border:#000000 solid 1px;} body{font-size:14px} </style>
<script type="text/javascript">
	var totalCount  = '${totalCount}',
		printAction = '${printAction}';
		
	if (totalCount && totalCount == 0) {
		alert('没有打印数据');
		window.close();
	}
</script>
<%@ include file="/WEB-INF/view/common/sysVariables"%>
<script type="text/javascript" src="${staticPath}/print/LodopFuncs.js"></script>
</head>
<body>
<script type="text/javascript">
	var LODOP;
	function createPage(totalCount) {
		LODOP = getLodop();  

		LODOP.PRINT_INITA(10,10,'19.8cm','9.8cm',"成都职业技术学院打印票据设计");
		LODOP.ADD_PRINT_TEXT(282,82,100,25,"${item.formatCapitalTotalValue}");
		LODOP.ADD_PRINT_TEXT(288,456,100,25,"${item.formatTotalValue}");
		
		LODOP.ADD_PRINT_TEXT(315,435,63,25,"蒋伟");
		LODOP.ADD_PRINT_TEXT(315,275,80,25,"蒋伟");
		
		LODOP.ADD_PRINT_TEXT(315,435,63,25,"蒋伟");
		LODOP.ADD_PRINT_TEXT(315,275,80,25,"蒋伟");
		LODOP.ADD_PRINT_TEXT(65,19,400,21,"${item.studentDetail}");
		LODOP.ADD_PRINT_TEXT(47,472,97,25,"010212");
		LODOP.ADD_PRINT_TEXT(48,335,78,25,"010212");
		LODOP.ADD_PRINT_TEXT(45,140,18,20,"${item.day}");
		LODOP.ADD_PRINT_TEXT(45,102,23,20,"${item.month}");
		LODOP.ADD_PRINT_TEXT(45,50,41,20,"${item.year}");
	}
	function printView(){
		createPage(totalCount);
		LODOP.PRINT_SETUP();
	};
	printView();
</script>
</body>
</html>