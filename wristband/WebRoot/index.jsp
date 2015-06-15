<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>testLBS</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<script src="js/1.js"></script>
	-->
	<!-- 导入样式信息 -->
	<!--<jsp:include page="head.jsp"/> -->
	</head>
	<body>
	<!-- 头部，包括设置栏 -->
	<jsp:include page="menuTop.jsp"></jsp:include>
	<!-- 头部结束 -->
	 
	 <!-- 主题内容开始 -->
	 <div class="hr01"></div>
	 <div class="content">
	 	<div class="content_left">
	 		<jsp:include page="loginInfo.jsp"/>
	 		<!-- 简单帮助开始 -->
	 		<jsp:include page="simpleHelp.jsp"/>
	 	</div>
	 	<div class="content_right">
	 	<!-- 中间内容 -->
	 	<jsp:include page="earthInfo.jsp"/>
	 	<!-- 公告开始 -->
	 	<jsp:include page="notice.jsp"/>
	 	</div>
	 </div>
	 <!-- 页脚内容开始 -->
	 <jsp:include page="bottom.jsp"/>
	</body>
	</html>
	 
