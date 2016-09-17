<!DOCTYPE HTML>
<html manifest="">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="ctx"  value="http://${header['host']}${pageContext.request.contextPath}"/>
<script type="text/javascript">
var contextPath = "<%=this.getServletContext().getContextPath() %>";
var staticExtPath = contextPath + "/static/sos_jni_extjs/";
</script>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
     <title>Hello World</title>
     <link rel="stylesheet" type="text/css" href= "<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/ext/packages/theme-crisp-touch/resources/theme-crisp-touch-all.css">
     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/ext/build/ext-all-debug.js"></script>
     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/ext/packages/theme-crisp-touch/theme-crisp-touch.js"></script>
     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/ext/locale/locale-zh_CN.js"></script>
     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/loadConfig.js?dc_='<%=new java.util.Date().getTime()%>'"></script>
     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/app/Application.js"></script>
	     <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/app.js"></script>
	
	<!-- 系统模块加载路径配置 -->
<%--      <script type="text/javascript" src="<%=this.getServletContext().getContextPath() %>/static/sos_jni_extjs/ext-bootstrap.js"></script> --%>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>

</body>
</html>