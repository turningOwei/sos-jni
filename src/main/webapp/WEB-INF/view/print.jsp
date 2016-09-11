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
</body>
<script type="text/javascript">
	var LODOP;
	function initPrint() {

	} 
	function createPage(totalCount) {
		var strBodyStyle="<!DOCTYPE>\n<style>table{border-collapse:collapse;} td {border:1px solid #000000;} body{font-size:14px;}</style>";
		for (var i = 1; i <= totalCount; i++) {
			var divId = 'printContent' + i;
			var strFormHtml=strBodyStyle+"\n<body style=\"background-color:transparent;margin:0;font-size:12px;\">\n"+document.getElementById(divId).innerHTML+"\n</body>";	
			LODOP.ADD_PRINT_BARCODE(35, 490, 80,30,"128Auto","0374448014");	
			LODOP.ADD_PRINT_HTM(10, 10, 700, 400, strFormHtml);
			LODOP.NewPage();
		}
	}
	function printView(){
		initPrint();
//		createPage(totalCount);
		LODOP.PREVIEW();
	};
	function print(){
		initPrint();
		LODOP = getLodop();  
		LODOP.PRINT_INITA(10,10,600,320,"成都职业技术学院打印票据设计");

		<c:forEach items="${result}" var="item">
		<c:set var="xrow" value="120"/>
		<c:forEach items="${item.orders}" var="order" varStatus="status">
			<c:if test="${order.subjectType == 1}">
				LODOP.ADD_PRINT_TEXT(${xrow},60,120,25,"${order.subjectName}");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
				LODOP.ADD_PRINT_TEXT(${xrow},205,100,25,"${order.paiedAmount}");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
			    <c:set var="xrow" value="${xrow+30}"/>
			</c:if>
		</c:forEach>
		<c:set var="xrow" value="120"/>
		<c:forEach items="${item.orders}" var="order" varStatus="status">
			<c:if test="${order.subjectType == 2}">
				LODOP.ADD_PRINT_TEXT(${xrow},483,100,25,"${order.paiedAmount}");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
				LODOP.ADD_PRINT_TEXT(${xrow},320,130,25,"${order.subjectName}");
				LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
				<c:set var="xrow" value="${xrow+30}"/>
			</c:if>
		</c:forEach>
		LODOP.ADD_PRINT_TEXT(280,85,250,25,"${item.formatCapitalTotalValue}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(280,470,100,25,"${item.formatTotalValue}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(302,442,63,25,"蒋伟");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",10);
		LODOP.ADD_PRINT_TEXT(302,282,80,25,"蒋伟");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",10);
		LODOP.ADD_PRINT_TEXT(302,90,180,25,"成都职业技术学院");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",10);
		LODOP.ADD_PRINT_TEXT(252,485,63,25,"9828");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(252,200,80,25,"8545");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		
		LODOP.ADD_PRINT_TEXT(65,19,400,21,"${item.studentDetail}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",13);
		LODOP.ADD_PRINT_TEXT(47,472,97,25,"缴费方式");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(48,335,78,25,"${ticketNo}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(45,140,18,20,"${item.day}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(45,102,23,20,"${item.month}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.ADD_PRINT_TEXT(45,50,41,20,"${item.year}");
		LODOP.SET_PRINT_STYLEA(0,"FontSize",12);
		LODOP.NewPage();
		</c:forEach>
//		createPage(totalCount);
		LODOP.PRINT();
		window.close();
		//LODOP.PREVIEW();
	};
	
	print();
</script>
</html>